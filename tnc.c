/* tnc.c
 * Program using z80emu to run the binary for the U21 TNC
 * SIO Emulation is provided for the serial ports 
 *
 *
 * This program is free, do whatever you want with it.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <getopt.h>
#include <errno.h>
#include <string.h> //memset
#include <signal.h>
#include <time.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include "./z80emu/z80emu.h"
#include "tnc.h"
#include "sio.h"
#include "crc.h"
#include "kiss.h"

#define Z80_CPU_SPEED           8195200   /* In Hz. */
#define CYCLES_PER_STEP         (Z80_CPU_SPEED / 25)
#define MAXIMUM_STRING_LENGTH   100

#define RAM_SAVE_FILENAME	"tnc.ram"

#define CYCLES_PER_INT		2000 /*Cycles to run for each int processing */

/* for udp socket */
#define BUFLEN 2048	//Max length of buffer
#define AX25_IN_MAXSIZE 10
#define DEFAULT_PORT "10093"	//AXIP Port on BPQ node
#define DEFAULT_HOST "192.168.10.252" // BPQ SERVER
#define DEFAULT_BBS_MSG "Happy if u post msg"

/* bit in tnc flags for daytime cmd */
#define DAYTIME_CMD_BIT 0x10

struct inQueue {
unsigned char data[BUFLEN];
unsigned int count;
};


/* Rom image is externally linked in. */
extern unsigned char _binary_devicerom_bin_start;
extern unsigned char _binary_devicerom_bin_end;
extern unsigned char _binary_devicerom_bin_size;

/* The TNC has 32k of RAM and 32k of ROM.
   Rom is addressed starting at 0 and Ram at 0x8000 */
unsigned char *Rom = &_binary_devicerom_bin_start;

//unsigned char   Rom[1 << 15]; 
unsigned char   Ram[1 << 15];

int sock_out;
int activity,activity2;
unsigned char Socket_Data_In[BUFLEN];

unsigned char Kiss_Data_Out[BUFLEN];
unsigned char Kiss_Ax25_In[BUFLEN];

unsigned char Ax25_Out[BUFLEN];
unsigned int  Ax25_In_Cnt, Ax25_Out_Cnt;

/* Input Queue to stack multiple incoming packets */
struct inQueue       Ax25_In_Q[AX25_IN_MAXSIZE];
unsigned int  Ax25_In_Head = 0;
unsigned int  Ax25_In_Tail = 0;
unsigned int  Ax25_In_Dly = 0;
unsigned int  clock_address = 0;
unsigned int  daytime_flag_loc = 0;

unsigned char RomImageType = 0; /*0 = generic, 1=hk21 2=u21 */
unsigned char keybuf[16];
unsigned char keyhead = 0;
unsigned char keytail = 0;
unsigned char flop,oldptt;
unsigned char RxCharIn_Idx=0;
unsigned char ax25rdy=0;
unsigned char feedflag=0;
unsigned char abortflag=0;
unsigned char txundr_count=0;
unsigned char use_kiss=0;
char service_port[] = DEFAULT_PORT;
char host_addr[] = DEFAULT_HOST;
char defbbsmsg[] = DEFAULT_BBS_MSG;
char *port;
char *target_host;
char *bbsmsg;

unsigned int PrevbbsMsgNo;
unsigned int bbsmsg_address = 0;

/* for test ax25 injection packet 1st byte is filler */
//unsigned char TestAx25[22] = { 0x00, 0x86, 0xa2, 0x40, 0x40, 0x40, 0x40, 0x60, 0xae, 0x6e, 0x9a,
//                                 0x82, 0x8e, 0x40, 0xe1, 0x03, 0xf0, 0x74, 0x65, 0x73, 0x74, 0x0d };

/* for test ax25 injection packet 1st byte is filler */
unsigned char TestAx25[18] = {0x00, 0x96, 0x8c, 0x6e, 0xa0, 0xa6, 0x9a, 0xe6, 0x96, 0x8c,
                                0x6e, 0xa0, 0xa6, 0x9a, 0x61,  0x3f, 0x63, 0x1d};

/* Array to store vars that we have discovered in emulation ram that 
   pertain to certain kiss paramters. Index of array is a follows:
   0 = TXDELAY
   1 = Persistence
   2 = SLOTTIME
   3 = TXTAIL
*/
#define NUM_KISS_PARMS 4
unsigned char ax25_parms[NUM_KISS_PARMS] = {0,63,2,3}; /* Common defaults */
unsigned int ax25_parm_location[NUM_KISS_PARMS] = {0x3FDB, 0x4033, 0x4035, 0x3FD7};

/* Declare struct vars for SIO channels */
IC_SIO	sioa;
IC_SIO	siob;
Z80_STATE       state;

void signal_callback_handler(int signum);
int kbhit();
static void     emulate (char *filename);
void die(char *);
char tobcd(unsigned int);
void print_usage(void);
void print_info(void);
bool Ax25_In_HasRoom(void);
void Ax25_In_Insert(void);
void Ax25_In_Remove(void);
bool Ax25_In_HasData(void);
unsigned int GetNextBbsMsgNo(void);
void WriteRamfile(void);
void Detect_Rom_Version(void);
void ApplyRomPatches(void);
void RewriteBbsMsg(int);

/***************************************************************************************/

int main (int argc, char *argv[])
{
int option = 0;


/* Set Default for target host and port */
	target_host=host_addr;
	port=service_port;
	bbsmsg=defbbsmsg;

/* Parse command line options */
  while ((option = getopt(argc, argv,"kht:p:m:")) != -1) {
    switch (option) 
    {
      case 'k' : use_kiss = 1;
        break;
      case 't' : target_host = optarg; 
        break;
      case 'p' : port = optarg;
        break;
      case 'm' : bbsmsg = optarg;
	break;
      case 'h' : print_info();
        die("Exiting...");
        break;
      default: print_usage(); 
        die("Exiting...");
        break;
    }
  }

  printf("Connecting with Target Host %s at port %s\nProtocol: ",target_host,port);
  if(use_kiss) printf("KISS\n");
  else printf("AX25\n");

  /* Register signal and signal handler */
  signal(SIGINT, signal_callback_handler);

  /* turn off canonical mode and echo on terminal */
  system("stty -icanon -echo");
  setbuf(stdout, NULL); /* no buffering on stdout */

  /* select tnc eprom image to emulate */
  /* deprecated now using internally linked image however in future */
  /* modify to overwrite internal rom image with file if requested for experimentation */  
  emulate("hk21rom.bin"); 
  return EXIT_SUCCESS;

}

static void emulate (char *filename)
{
FILE  *file;
long  l;
unsigned char socket_active;
struct addrinfo hints, *servinfo;
struct sockaddr_in sin;
struct timeval tv;
fd_set readfds, master;

double  cycles;
double  total;
double  timer_int,sio_int;
unsigned int key;
int rxcnt,x;
unsigned short int mycrc;

/* for setting tnc time from sys time */
time_t rawtime;
struct tm *timeinfo;

  printf("Starting Emulation \"%s\"...\n", filename);

  /*if ((file = fopen(filename, "rb")) == NULL) {
    fprintf(stderr, "Can't open eprom image file!\n");
    exit(EXIT_FAILURE);
  }

  fseek(file, 0, SEEK_END);
  l = ftell(file);

  fseek(file, 0, SEEK_SET);
  fread(Rom, 1, l, file);

  fclose(file);*/

/* Now try and open ram image file from prev run */
  if ((file = fopen(RAM_SAVE_FILENAME, "rb")) == NULL)
  {
/* if file doesn't exist then clear memory for cold start */
    for(x=0; x< 32768; x++) Ram[x] = 0;
  }
  else
  {
    fseek(file, 0, SEEK_END);
    l = ftell(file);

    fseek(file, 0, SEEK_SET);
    fread(Ram, 1, l, file);

    fclose(file);
  }

/* Probe Rom Image to detect version and patch accordingly */
  Detect_Rom_Version();

/* Apply any rom patches */
  ApplyRomPatches();

/* initialize the previous bbs msg # to current in memory 
   for later comparison to see if a msg was added */
  PrevbbsMsgNo = GetNextBbsMsgNo();
#ifdef DEBUG
  printf("Next BBS Msg #=%u\n",PrevbbsMsgNo);
#endif

/* set udp target info */
  socket_active=1; /* assume connect will work */

  memset(&hints, 0, sizeof hints);
  hints.ai_family = AF_UNSPEC;
  if(use_kiss) hints.ai_socktype = SOCK_STREAM;
  else hints.ai_socktype = SOCK_DGRAM;

  if ((x = getaddrinfo(target_host, port, &hints, &servinfo)) != 0) {
    perror(gai_strerror(x));
    die("Error setting target_host info\n");
  }

/* here try to open an axip socket to the bpq server */
  if ((sock_out = socket(servinfo->ai_family, servinfo->ai_socktype,
      servinfo->ai_protocol)) == -1)
  {
    perror("Error Opening Socket to Remote Host.");
    socket_active=0;
	}
        
  sin.sin_family=AF_INET;
	sin.sin_addr.s_addr=INADDR_ANY;
  if(!use_kiss) sin.sin_port=htons(atoi(port));

	if ( bind(sock_out,(struct sockaddr *)&sin,sizeof(struct sockaddr_in)) == -1 )
    die("Error: Bind\n");

  if (connect(sock_out, servinfo->ai_addr, servinfo->ai_addrlen) == -1) {
      close(sock_out);
      perror("Error Connecting to  Remote Host.");
      socket_active=0;
  }

/* Socket is connected, now setup select parms to perform non blocking io */
  tv.tv_sec = 0;
  tv.tv_usec = 1;

  FD_ZERO(&master);
  FD_ZERO(&readfds);
  FD_SET(sock_out, &master);

/* Init some activity timers that control sleep */
  activity = 0;
  activity2 = 0;

  keybuf[keyhead] = '*';
  keyhead++;
  keybuf[keyhead] = 0x08;
  keyhead++;


/* If kiss mode, memorize certain ax25 parms to detect change later
   and send initial vals to kiss protocol */
  if(use_kiss)
  {
    for(x=1; x< NUM_KISS_PARMS; x++) /* start 1 skip txdelay for now */
    {
      ax25_parms[x] = Ram[ax25_parm_location[x]];
      Kiss_Data_Out[0] = x+1; /* Parm index for command */
      Kiss_Data_Out[1] = ax25_parms[x];
      rxcnt = 2; /* 2 bytes to encapsulate */
      kiss_pack(Ax25_Out, Kiss_Data_Out, &rxcnt);
      Ax25_Out_Cnt = rxcnt;
      if ((x = sendto(sock_out, Ax25_Out, Ax25_Out_Cnt, 0,
        servinfo->ai_addr, servinfo->ai_addrlen)) == -1)
        die("Socket Xmit Error!\n");
    }
  }

/* This is the beginning of the emulation loop */

  SIO_Reset(&sioa); /* Reset Emulated Serial i/o a */
  SIO_Reset(&siob); /* Reset Emulated Serial i/o b */

  Z80Reset(&state);
  total = timer_int = sio_int = 0;

  for ( ; ; ) /* Forever */
  {
#ifdef DEBUG
    printf("PC=%x cycles=%.0f\n",state.pc,total);
    cycles = Z80Emulate(&state, 1);
#endif
    cycles = Z80Emulate(&state, CYCLES_PER_STEP);
    total += cycles;
    timer_int += cycles;
    sio_int += cycles;

/* Every so many cycles do a timer interrupt, highly inacurate but it
doesn't matter since we don't rely on it anymore. This could be done
better but for now it works */
    if( timer_int > 2750200 )
    {
      timer_int = 0;
      cycles = Z80Interrupt (&state, 0x10 );
      total += cycles;
      timer_int += cycles;
      sio_int += cycles;

      /* here update tnc time with our time if we can */
      if( clock_address > 0 )
      {
        time(&rawtime);
        timeinfo = localtime (&rawtime);
        x= timeinfo->tm_sec;
        Ram[clock_address] = tobcd(x);
        x= timeinfo->tm_min;
        Ram[clock_address+1] = tobcd(x);
        x= timeinfo->tm_hour;
        Ram[clock_address+2] = tobcd(x);
        x= timeinfo->tm_mday;
        Ram[clock_address+3] = tobcd(x);
        x= timeinfo->tm_mon;
        Ram[clock_address+4] = tobcd(x+1);
        x= timeinfo->tm_year;
        x= x - ((x / 100) * 100);
        Ram[clock_address+5] = tobcd(x);
	Ram[daytime_flag_loc] = Ram[daytime_flag_loc] | DAYTIME_CMD_BIT; /* set daytime set flag */
      }

      /* Check if any new bbs msgs have arrived and if so save ram to disk */
      if( PrevbbsMsgNo != GetNextBbsMsgNo())
      {
          PrevbbsMsgNo = GetNextBbsMsgNo();
          WriteRamfile();
      }

      /* if using kiss protocol check for any paramter changes and
      update protocol if so */
      if(use_kiss)
      {
        for(x=0; x< NUM_KISS_PARMS; x++)
        {
          if(ax25_parms[x] != Ram[ax25_parm_location[x]] )
          {
            ax25_parms[x] = Ram[ax25_parm_location[x]];
            Kiss_Data_Out[0] = x+1; /* Parm index for command */
            Kiss_Data_Out[1] = ax25_parms[x];
            rxcnt = 2; /* 2 bytes to encapsulate */
            kiss_pack(Ax25_Out, Kiss_Data_Out, &rxcnt);
            Ax25_Out_Cnt = rxcnt;
            if ((x = sendto(sock_out, Ax25_Out, Ax25_Out_Cnt, 0,
              servinfo->ai_addr, servinfo->ai_addrlen)) == -1)
              die("Socket Xmit Error!\n");
          }
        }
      }
    }

/* These values may need to be adjusted depending on the speed of 
the machine you will be emulating on. */
#ifdef SPEED_PI
    if( sio_int > 115004 ) /* on pi3 */
#else
    if( sio_int > 215004 ) /* on fast x86 */
#endif
    {
      flop = flop ^0x01;
      sio_int = 0;
      if(flop)
      {

        if(RxCharIn_Idx || ax25rdy)
        {
          if(RxCharIn_Idx)
          {
            while(!state.iff1) cycles = Z80Emulate(&state, CYCLES_PER_INT );
            cycles += Z80Interrupt (&state, siob.registers[2] | 0x0c);   // ax25 char read int
            total += cycles;
            sio_int += cycles;
          }

          if(ax25rdy)
          {
            while(!state.iff1) cycles = Z80Emulate(&state, CYCLES_PER_INT );
            cycles += Z80Interrupt (&state, siob.registers[2] | 0x0e); // eof int
            total += cycles;
            sio_int += cycles;
          }
        }
        else
        {
          if(txundr_count)
          {
            if(--txundr_count == 0)
            {
              feedflag = 1; /* txunderrun we can send packet!*/
              if(socket_active && Ax25_Out_Cnt)
              {
                if(!use_kiss) /* if ax25 add crc */
                {
                  mycrc = compute_crc(Ax25_Out, Ax25_Out_Cnt);
                  Ax25_Out[Ax25_Out_Cnt++] = mycrc & 0xFF;
                  Ax25_Out[Ax25_Out_Cnt++] = mycrc >> 8;
                }
                else /* else kiss encapsulate with kiss protocol */
                {
                  Kiss_Data_Out[0] = 0; /* kiss type data */
                  for(x=0; x< Ax25_Out_Cnt; x++) Kiss_Data_Out[x+1] = Ax25_Out[x];
                  rxcnt = Ax25_Out_Cnt + 1; /* add 1 for the kiss type byte */
                  kiss_pack(Ax25_Out, Kiss_Data_Out, &rxcnt);
                  Ax25_Out_Cnt = rxcnt;
                }

                if ((x = sendto(sock_out, Ax25_Out, Ax25_Out_Cnt, 0,
                    servinfo->ai_addr, servinfo->ai_addrlen)) == -1)
                  die("Socket Xmit Error!\n");
              }
            }
          }

          if(feedflag || abortflag )
          {
            while(!state.iff1) cycles = Z80Emulate(&state, CYCLES_PER_INT );
            cycles += Z80Interrupt (&state, siob.registers[2] | 0x0a); // ext stat int
            total += cycles;
            sio_int += cycles;
          }
          else
          {
            if(siob.registers[1] & 2)
            {
              while(!state.iff1) cycles = Z80Emulate(&state, CYCLES_PER_INT ); /* was removed */
              cycles += Z80Interrupt (&state, siob.registers[2] );
              total += cycles;
              sio_int += cycles;
            }
          }
        }
      }
      else /* flip */
      {
        if(keyhead != keytail)
        {
// This breaks inital autobaud!   if(state.iff1 && (siob.registers[1] & 0x18) )
//      {
          cycles = Z80Interrupt (&state, siob.registers[2] | 4);
          total += cycles;
          timer_int += cycles;
          sio_int += cycles;
//      }
        } 
        else 
        {
         cycles = Z80Interrupt (&state, siob.registers[2] | 8 );
         total += cycles;
         timer_int += cycles;
         sio_int += cycles;
        }
      }

      if(Ax25_In_HasData() && !RxCharIn_Idx && !ax25rdy && !txundr_count  && !Ax25_In_Dly ) /* do we have a socket */
      {
        RxCharIn_Idx = 1; /* Let everyone know */
        Ax25_In_Dly = 75; /* this is an arbitrary delay amount so emulator can process rx packets */
      }

      if(Ax25_In_Dly && !RxCharIn_Idx && !txundr_count) Ax25_In_Dly--;

/* here check if a socket is active but also check if we are in the middle of
    processing the previous socket by checking the RxCharIn_Idx & ax25rdy flags! */
      if(socket_active && Ax25_In_HasRoom()) /* do we have a socket and room in Ax25 input Queue */
      { 
        /* Here we check if there is any incoming data on udp socket */
        readfds = master; /* Copy because select etc changes it! */
        if (select(sock_out+1, &readfds, NULL, NULL, &tv) == -1)
        {
          perror("Error on socket select!");
          exit(4);
        }

        tv.tv_sec = 0;
        tv.tv_usec = 1;

        if (FD_ISSET(sock_out, &readfds))
        {
          if ((rxcnt = recv(sock_out, Socket_Data_In, sizeof Socket_Data_In, 0)) <= 0)
          {
            /* here we got error or connection closed by client */

            /* Connection Closed */
            if (rxcnt == 0) printf("selectserver: socket server hung up.\n");
            else perror("ax25 recv error."); /* else an error */

            close(sock_out); // bye!
            socket_active=0;
          }
          else /* we have data from socket */
          {
            activity2 = 3000; /* we have activity so set counter for sleep algo */

            /* If using kiss protocol convert buffer back to ax25 data */
            if(use_kiss)
            {
              kiss_unpack(Socket_Data_In, Kiss_Ax25_In, &rxcnt);
              /* Copy packet to Ax25_In_Q and remove Kiss Packet Type */
              for(x=0; x < rxcnt-1; x++) 
                Ax25_In_Q[Ax25_In_Head].data[x] = Kiss_Ax25_In[x+1]; 

              Ax25_In_Q[Ax25_In_Head].count = rxcnt-1; /* adjust to get total # of bytes in buffer */
              Ax25_In_Insert();
            }
            else /* else just copy data to x25 buffer */
            {
              for(x=0; x < rxcnt; x++) 
                Ax25_In_Q[Ax25_In_Head].data[x] = Socket_Data_In[x]; 

              mycrc = compute_crc(Ax25_In_Q[Ax25_In_Head].data, rxcnt-2);
#ifdef DEBUG
              printf("CRC=%2x RxCRC=%x%x head=%d tail=%d\n",mycrc,Ax25_In_Q[Ax25_In_Head].data[rxcnt-1],Ax25_In_Q[Ax25_In_Head].data[rxcnt-2],
              Ax25_In_Head, Ax25_In_Tail);
#endif
              if( mycrc == ( (Ax25_In_Q[Ax25_In_Head].data[rxcnt-1] << 8) + Ax25_In_Q[Ax25_In_Head].data[rxcnt-2] ) ) /* crc check */
              {
                Ax25_In_Q[Ax25_In_Head].count = rxcnt-1; /* adjust to get total # of bytes in buffer */
                Ax25_In_Insert();
              }
            }
          }
        }
      } /* end if socket active */
    } /* end if sio int */

		// here check and handle console keyboard input
		if(kbhit())
    {
      activity2 = 100;
      key=getchar();
      if(key == 0x0a) key=0x0d;
      if(key == 0x7f) key=0x08;
#ifdef DEBUG
      if(key == '&') RxCharIn_Idx=1; // Trigger to inject test ax25 packet
      else
      {
#endif
        // add to key buffer
        keybuf[keyhead] = key;
        keyhead++;
        keyhead &= 0x0f;
#ifdef DEBUG
        printf("got key %c\n",(char) key);
      }
#endif
    }

    if(oldptt != (sioa.registers[5] & 2))
    {
      oldptt = sioa.registers[5] & 2;
#ifdef DEBUG
      printf("ptt=%x\n",oldptt);
#endif
      if(oldptt == 2)
      {
        txundr_count=10; 
        Ax25_Out_Cnt=0;
      }
    }

/* Here check activity and if none sleep so we're not a cpu hog */
    if(Ax25_In_HasData() || RxCharIn_Idx || ax25rdy || feedflag || abortflag ) activity = 0;
    if(txundr_count ) activity = 0;
    if(keyhead != keytail) activity = 0;

    if(activity > 10000) usleep(10000);
/*                else activity++; */
/* Enable to stop even more cpu use*/
     else
     { 
       if(activity > 1) usleep(2000);
       if(activity2) activity2--;
         else activity++;
    }

    if (state.status & FLAG_STOP_EMULATION) 
      break;
  } /* End infinite loop */

#ifdef DEBUG
  printf("\n%.0f cycle(s) emulated.\n" 
  "For a Z80 running at %.2fMHz, "
  "that would be %d second(s) or %.2f hour(s).\n",
  total,
  Z80_CPU_SPEED / 1000000.0,
  (int) (total / Z80_CPU_SPEED),
  total / ((double) 3600 * Z80_CPU_SPEED));
#endif
}

/*************************************************************************
  Here we emulate as best we can the I/O of the Toshiba TMPZ84C015 CPU
  Integrated CPU/IO I/C. The following is the portmap of the i/o

  Internal Halt Mode Setting Registers
  This controls how the ic internal osc operates during certain cpu 
  halt modes. Also watchdog is in hee. Probably can ignore since we are emulating.

  Halt Mode Settings Register 0xF0 
  Code writes an 0x7B Putting All devices in Powered up Run Mode.

  Halt Mode Control Register 0XF1
  Code writes an 0xB1 to disable watchdog timer since wdog enable bit in 0xF0 is off

  Interrupt Priority Register 0xF4 Bits 1,2,0 as follows
  HIGH  TO  LOWEST PRIORITY
  CTC - SIO - PIO 0 0 0 
  SIO - CTC - PIO 0 0 1 (THIS IS THE ONE THE CODE SELECTS)
  CTC - PIO - SIO 0 1 0
  PIO - SIO - CTC 0 1 1
  PIO - CTC - SIO 1 0 0
  SIO - PIO - CTC 1 0 1
  
  CTC Timer I/O Map
  0x10 = Chan 0
  0x11 = Chan 1
  0x12 = Chan 2
  0x13 = Chan 3

  SIO Serial Device I/O Map 
  0x18 = Chan A Data
  0x19 = Chan A Command
  0x1A = Chan B Data
  0x1B = Chan B Command

  PIO I/O Map
  0x1C = Port A Data
  0x1D = Port A Command
  0x1E = Port B Data
  0x1F = Port B Command

*/

int IO_in (int port)
{
  int x=0;
  port &= 255;

  switch (port)
  {
    case 0x10: // CTC Chan0
      break;

    case 0x11: // CTC Chan1
      break;

    case 0x12: // CTC Chan2
      break;

    case 0x13: // CTC Chan3
      break;

    case 0x18: // SIOA Data
      x=0xff;
      if(RxCharIn_Idx) 
      {
        activity = 0;
        x = Ax25_In_Q[Ax25_In_Tail].data[RxCharIn_Idx-1];
//printf("%x\n",x);
        RxCharIn_Idx++;
        if(--Ax25_In_Q[Ax25_In_Tail].count == 0) 
        {
          RxCharIn_Idx = 0;
          Ax25_In_Remove();
          ax25rdy=1;
        }
      }
      break;

    case 0x19: // SIOA Cmd
      x = SIO_Cmd_Read( &sioa );
      break;

    case 0x1A: // SIOB Data
      x=0xff;
      if(keyhead != keytail)
      {
        x=keybuf[keytail];
        keytail++;
        keytail &= 0x0f;
      }
      break;

    case 0x1B: // SIOB Cmd
      x = SIO_Cmd_Read( &siob );
      break;

    case 0x1C: // PIOA Data
      break;

    case 0x1D: // PIOA Cmd
      break;

    case 0x1E: // PIOB Data
      break;

    case 0x1F: // PIOB Cmd
      break;

    default:  // All else do nothing
      break;

  }

//    printf("IO In from port %x = %x:%x\n",port,x,state.pc);
  return (x);
}

void IO_out (int port, int x)
{
  port &= 255;

 // printf("IO out %x to port %x\n",x,port);

  switch (port)
  {
    case 0x10: // CTC Chan0
      break;

    case 0x11: // CTC Chan1
      break;

    case 0x12: // CTC Chan2
      break;

    case 0x13: // CTC Chan3
      break;

    case 0x18: // SIOA Data
      Ax25_Out[Ax25_Out_Cnt++] = x;
      txundr_count=10; /* reset tx underrun */
      break;

    case 0x19: // SIOA Cmd
      SIO_Cmd_Write( &sioa, x);
      break;

    case 0x1A: // SIOB Data
      printf("%c",x);
      activity = 0;
      break;

    case 0x1B: // SIOB Cmd
      SIO_Cmd_Write( &siob, x);
      break;

    case 0x1C: // PIOA Data
      break;

    case 0x1D: // PIOA Cmd
      break;

    case 0x1E: // PIOB Data
      break;

    case 0x1F: // PIOB Cmd
      break;

    default:  // All else do nothing
    break;

  }


}

/* SIO functions are here to handle emulation of SIO Channels */

/* Reset SIO registers and cmd ptr */
void SIO_Reset( IC_SIO *sio )
{
  sio->state = 0; // Set state for cmd reg
  sio->cmd_ptr = 0; // Set cmd ptr to reg 0
  sio->registers[0] = 0; 
}

/* Handle Writes to SIO Command Port */
void SIO_Cmd_Write( IC_SIO *sio, unsigned char x)
{
  if(sio->state) /* write to actual reg */
  {
//    if(abortflag && sio->cmd_ptr == 5 && !(x & 2)) 
//      printf("PC=%x\n",state.pc);

    sio->registers[sio->cmd_ptr] = x; 
    sio->cmd_ptr = 0; /* after a write it sets back to 0 */
    sio->state = 0; /* next state is command */
  }
  else /* set write register */
  {
    if(x == 0x28) feedflag=0;
    if(x == 8)  abortflag=1;/* Abort Seq SDLC */
    if(x == 0x18 ) /* handle special reset case */
    {
      sio->cmd_ptr = 0; /* after a write it sets back to 0 */
      sio->state = 0; /* next state is command */
    }
    else {
      if((x & 0x38) == 0) 
      {
        sio->cmd_ptr = x & 0x07; /* lsb 3 bits select reg for next write/read */
        sio->state = 1; /* flip state */
      }
    }
  }

}

/* Handle Reads from SIO Command Port */
int SIO_Cmd_Read( IC_SIO *sio )
{

int val = 0;

  switch ( sio->cmd_ptr )
  {
    case 0: /* Reg Indicates the rx/tx buffer state & pins state */
            /* MSB -> BRK/ABORT, UNDRRUN, CTS, SYNC/HUNT, DCD, TBUF_EMPTY
               INT_PENDING, RX_CHAR_RDY <-LSB */
      if(sio == &siob )
      {
        val = 0x2c; /* set CTS, DCD, TBUF_EMPTY always */
        if(keyhead != keytail) val |=1; /* if keys in buffer set flag we have rx chars */  
      }
      else /* handle sioa */
      {
        val = val | 4; /* TBUF_EMPTY */
        if( sio->registers[5] & 2 ) val |= 0x20; /* cts is wired to rts so it follows it */
        if(abortflag) 
        {
          val |= 0x10; /* set Sync/Hunt */
          val &= 0xFB; /* Clear TFBUF_EMPTY emulating crc going out in uart */
          if(!(val & 0x20)) abortflag=0;
        }
        if( RxCharIn_Idx ) val |= 0x09; /* DCD & RX_CHAR_RDY */
        if(feedflag) val |= 0x40; 
      }
      break;
     
    case 1: /* Reg Indicates error status and end of frame code */
            /* MSB -> EOF_FRAM, FRAME_ERR, RX_OVRRUN, PARITY_ERROR
               NONE, FRACTION, NONE, TX_EMPTY or always 1 in SYNC MODE */
      if(sio == &siob )
      {
        val = 0x01	; /* TX Empty always! */
      }
      else /* chan a */
      {
        val= 0x01;
        if(ax25rdy)
        {
          val |= 0x86; /* set eof detected and correct fraction bits! */
          ax25rdy = 0;
          /* If input queue has more data retrigger to process next packet */
          /* scratch that, this is done abocve after a delay period now.*/
          //if(Ax25_In_HasData()) RxCharIn_Idx=1;
        }
      }

      break;

    case 2: /* Returns int vector but only for port b but we do both */
      if(sio == &siob )
        {
          val = sio->registers[2];
        } else val=0; /* no int vec on chan a! */

      break;

    default:
      break;

  }

  sio->state = 0;
  sio->cmd_ptr = 0;
//  sio->state = sio->state ^ 0x01; /* flip state */

  return val;
}

/* Memory Access Functions go here */

unsigned int Memory_Read_Byte(unsigned int address)
{
  if(address > 0x7FFF) return Ram[address & 0x7fff];
  else return Rom[address];
}

unsigned int Memory_Read_Word(unsigned int address)
{
  if(address > 0x7FFF) 
    return Ram[address & 0x7fff] | ( Ram[ (address+1) & 0x7fff ] << 8 );
  else
    return Rom[address] | ( Rom[ address+1 ] << 8 );
}

void Memory_Write_Byte(unsigned int address, unsigned int data)
{
  if(address > 0x7FFF) Ram[address & 0x7fff] = data & 0xff;
//  else Rom[address & 0x7fff] = data & 0xff;
}

void Memory_Write_Word(unsigned int address, unsigned int data)
{
  if(address > 0x7FFF) 
  {
    Ram[address & 0x7fff] = data & 0xff; 
    if( ((address+1) & 0xffff) > 0x7fff)                                	
    Ram[(address + 1) & 0x7fff] = data >> 8; 
  }
//  else
//  {
//        Rom[address & 0x7fff] = data & 0xff;                                 	
//        Rom[(address + 1) & 0x7fff] = data >> 8; 
//  }
}

// Define the function to be called when ctrl-c (SIGINT) signal is sent to process
void signal_callback_handler(int signum)
{
  printf("Caught signal %d, saving ram to %s\n",signum,RAM_SAVE_FILENAME);
  // Cleanup and close up stuff here

  /* turn on canonical mode and echo on terminal */
  system("stty icanon echo");

  WriteRamfile();

  close (sock_out);
  
  // Terminate program
  exit(signum);
}

int kbhit()
{
  struct timeval tv;
  fd_set fds;
  tv.tv_sec = 0;
  tv.tv_usec = 0;
  FD_ZERO(&fds);
  FD_SET(STDIN_FILENO, &fds); //STDIN_FILENO is 0
  select(STDIN_FILENO+1, &fds, NULL, NULL, &tv);
  return FD_ISSET(STDIN_FILENO, &fds);
}

// Clean exit from error
void die(char *s)
{
	perror(s);
  system("stty icanon echo");
  close (sock_out);
	exit(1);
}

// Convert int to bcd 
char tobcd(unsigned int val)
{

char result;

  val &= 0xFF; // only doing 2 digits

  result = val /10;
  result <<= 4;
  result |= val % 10;
  return result;
}

void print_usage(void)
{
  printf("Usage: tnc [-t host] [-p port] [-k] [-m message]\n");
  printf("Try tnc -h for more information.\n");
}

void print_info(void)
{
  printf("Tnc Emulator Version %s\n",VERSION_INFO);
  printf("Command line Parameters:\n");
  printf("-t target host ip address or dns name\n");
  printf("-p targt port (default 10093)\n");
  printf("-k Kiss Protocol (Default is ax25)\n");
  printf("-m Bulletin Board Welcome Msg \"Message\" Max 21 Chars!\n");
}

bool Ax25_In_HasRoom(void)
{
  int next = Ax25_In_Head + 1;
  if(next >= AX25_IN_MAXSIZE) 
    next = 0;

  if(next == Ax25_In_Tail)
    return false;
  else
    return true;
}

void Ax25_In_Insert(void)
{
  if(++Ax25_In_Head >= AX25_IN_MAXSIZE) 
    Ax25_In_Head = 0;
}

void Ax25_In_Remove(void)
{
  if(++Ax25_In_Tail >= AX25_IN_MAXSIZE) 
    Ax25_In_Tail = 0;
}

bool Ax25_In_HasData(void)
{
  if(Ax25_In_Head != Ax25_In_Tail)
    return(true);
  else
    return(false);
}

unsigned int GetNextBbsMsgNo(void)
{
  int msg = 0;
  if(bbsmsg_address > 0)
  {
    msg = Ram[bbsmsg_address] + Ram[bbsmsg_address+1] * 256;
  }
  return msg;
}

void WriteRamfile(void)
{
   FILE* file= fopen(RAM_SAVE_FILENAME,"wb");
   fwrite(Ram, 1, 32768, file);
   fclose (file);
}

void Detect_Rom_Version(void)
{

  int x;
  static unsigned char matchbytes[] = {0xcb,0x40,0x28,0x03,0x07,0x18,0x01,0x0f,0x0d,0x20,0xf5,0xc1,0xa8};

  /* check to see if rom is a hk21 rom */
  bool match=true;
  for(x=0; x< 13; x++)
  {
    if(Rom[0x47f7 + x] != matchbytes[x])
    {
      match=false;
      break;
    }
  }

  if(match) RomImageType=1;
  else
  {
    match=true;
    /* check to see if rom is a u21 rom */
    for(x=0; x< 13; x++)
    {
      if(Rom[0x4fe2 + x] != matchbytes[x])
      {
       match=false;
        break;
      }
    }

    if(match) RomImageType=2;
  }

//#ifdef DEBUG

  switch(RomImageType)
  {
    case 0:
      printf("Unknown Rom Detected\n");
    break;

    case 1:
      printf("HK21 Rom Detected\n");
    break;

    case 2:
      printf("u21 Rom Detected/n");
    break;

    default:
    break;
  }
//#endif

}

void ApplyRomPatches(void)
{
  int x;

  if(RomImageType == 1) /* Apply HK21 Patches */
  {
    clock_address = 0x4f0a; /* Where tnc keeps time */
    bbsmsg_address = 0x4f06; /* where tnc stores msg count */
    daytime_flag_loc = 0x3f16; /* where tnc stores flags for daytime cmd */

    /* Patch for rom we can manually patch later, Needed? */
//    Rom[0x5032] = Rom[0x5041];
    Rom[0x5032] = 0x3e;
        
    /* Stuff NOPs to disable strange obfuscation of text */
    for(x=0; x< 11; x++) Rom[0x47f7+x] = 0;
    Rom[0x47f7+12] = 0;

    /* Throw some custom text into eprom for when user logs into bbs */
    /* Replaces "Heath System" */
    RewriteBbsMsg(0x2dad);

  }
  else if(RomImageType == 2) /* Apply u21 Patches */
  {
    clock_address = 0x4f32; /* Where tnc keeps time */
    bbsmsg_address = 0x4f2e; /* where tnc stores msg count */
    daytime_flag_loc = 0x3f16; /* where tnc stores flags for daytime cmd */

    /* Patch for rom we can manually patch later, Needed? */
    //Rom[0x5878] = Rom[0x5887];
    Rom[0x5878] = 0x3E;
        
    /* Stuff NOPs to disable strange obfuscation of text */
    for(x=0; x< 11; x++) Rom[0x4fe2+x] = 0;
    Rom[0x4fe2+12] = 0;

    /* Throw some custom text into eprom for when user logs into bbs */
    /* Replaces "Tasco System" */
    RewriteBbsMsg(0x314c);
/*
    Rom[0x314c] = 'H';
    Rom[0x314d] = 'a';
    Rom[0x314e] = 'p';
    Rom[0x314f] = 'p';
    Rom[0x3150] = 'y';
    Rom[0x3151] = ' ';
    Rom[0x3152] = 'i';
    Rom[0x3153] = 'f';
    Rom[0x3154] = ' ';
    Rom[0x3155] = 'y';
    Rom[0x3156] = 'o';
    Rom[0x3157] = 'u';
    Rom[0x3158] = 0;

    Rom[0x3159] = ' ';
    Rom[0x315a] = 'P';
    Rom[0x315b] = 'o';
    Rom[0x315c] = 's';
    Rom[0x315d] = 't';
    Rom[0x315e] = ' ';
    Rom[0x315f] = 'M';
    Rom[0x3160] = 's';
    Rom[0x3161] = 'g';*/
  }

}

void RewriteBbsMsg(int addr)
{
  int x;

  for(x=0; x<22; x++)
  {
    Rom[addr+x] = 0x20; // space char
  }

  Rom[addr+12] = 0; // Plant terminator

  char *txt = bbsmsg;
    
  for(x=0; x<12; x++)
  {
    if(*txt == 0) break;
    Rom[addr+x] = *txt++;
  }
    
  if(*txt == 0) return;

  for(x=13; x<22; x++)
  {
    if(*txt == 0) break;
    Rom[addr+x] = *txt++;
  }
}

