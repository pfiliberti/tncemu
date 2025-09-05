import struct
import os

def read_cstring(f):
    """Read a null-terminated ASCII string from the file."""
    chars = []
    while True:
        c = f.read(1)
        if not c or c == b'\x00':
            break
        try:
            chars.append(c.decode('ascii', errors='replace'))
        except TypeError:
            # For very old Python that doesn't support errors='replace' in decode
            chars.append(c.decode('ascii', 'ignore'))
    return ''.join(chars)

def parse_messages(filename):
    messages = []
    with open(filename, "rb") as f:
        offset = 0
        filesize = os.fstat(f.fileno()).st_size

        while True:
            if offset < 0 or offset >= filesize:
                break

            f.seek(offset)

            # 1) pointer to next message (LSB, MSB)
            ptr_bytes = f.read(2)
            if len(ptr_bytes) < 2:
                break

            next_ptr = struct.unpack("<H", ptr_bytes)[0]  # little-endian

            if next_ptr == 0:
                break

            next_offset = (next_ptr - 0x8000) if next_ptr else None

            # 2) message number (LSB, MSB)
            msg_num_bytes = f.read(2)
            if len(msg_num_bytes) < 2:
                break
            msg_num = struct.unpack("<H", msg_num_bytes)[0]

            # 3) skip 6 unknown bytes
            f.seek(6, 1)

            # 4) sender (6 bytes, ASCII)
            sender = f.read(6).decode("ascii", "ignore").rstrip("\x00 ")

            # 5) recipient (6 bytes, ASCII)
            recipient = f.read(6).decode("ascii", "ignore").rstrip("\x00 ")

            # 6) subject (null-terminated ASCII)
            subject = read_cstring(f)

            # 7) message body (null-terminated ASCII)
            message = read_cstring(f)
            message = message.replace('\r', '\n')
            messages.append({
                "msg_num": msg_num,
                "sender": sender,
                "recipient": recipient,
                "subject": subject,
                "message": message
            })

            # Stop if this was the last message (pointer == 0)
            if not next_ptr:
                break

            # Guard against bad pointers
            if next_offset is None or next_offset <= offset or next_offset >= filesize:
                break

            # 8) jump to next message
            offset = next_offset

    return messages


if __name__ == "__main__":
    filename = "tnc.ram"  # set to your file name
    msgs = parse_messages(filename)

for m in msgs:
    print("Message #{}".format(m["msg_num"]))
    print("From: {}  To: {}".format(m["sender"], m["recipient"]))
    print("Subject: {}".format(m["subject"]))
    print("Message:\n{}\n".format(
        m["message"].encode("ascii", "replace").decode("ascii")))
    print("------------------------\n")
