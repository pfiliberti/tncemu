; z80dasm 1.1.3
; command line: ./src/z80dasm -l -g 0 -a ../hk21rom.bin

	org	00000h

l0000h:
	nop			;0000
l0001h:
	nop			;0001
l0002h:
	di			;0002
l0003h:
	jp l00edh		;0003
l0006h:
	jp l42feh		;0006
	jp l43c0h		;0009
	nop			;000c
l000dh:
	nop			;000d
l000eh:
	nop			;000e
	nop			;000f
l0010h:
	nop			;0010
	nop			;0011
	jp 0041ch		;0012
	jp l04b7h		;0015
l0018h:
	jp l0b23h		;0018
sub_001bh:
	ret			;001b
	nop			;001c
	nop			;001d
sub_001eh:
	ret			;001e
	nop			;001f
l0020h:
	nop			;0020
l0021h:
	ret			;0021
	nop			;0022
	nop			;0023
	jp l0d43h		;0024
	jp l0c7fh		;0027
	jp l0cc2h		;002a
	nop			;002d
l002eh:
	nop			;002e
	nop			;002f
	nop			;0030
	nop			;0031
	nop			;0032
	nop			;0033
	nop			;0034
	nop			;0035
	nop			;0036
	nop			;0037
	jp 0fffdh		;0038
	nop			;003b
	nop			;003c
	nop			;003d
	nop			;003e
	nop			;003f
l0040h:
	dec hl			;0040
l0041h:
	ld d,a			;0041
sub_0042h:
	inc sp			;0042
	ld d,a			;0043
	or h			;0044
	ld d,a			;0045
	dec bc			;0046
	ld l,h			;0047
	ld d,a			;0048
	ld l,(hl)			;0049
	ld d,a			;004a
l004bh:
	ld hl,(l0057h)		;004b
	nop			;004e
	nop			;004f
	nop			;0050
	nop			;0051
	nop			;0052
	nop			;0053
	nop			;0054
	nop			;0055
	nop			;0056
l0057h:
	nop			;0057
	nop			;0058
	nop			;0059
l005ah:
	nop			;005a
	nop			;005b
	nop			;005c
	nop			;005d
	nop			;005e
	nop			;005f
	nop			;0060
	nop			;0061
	nop			;0062
	nop			;0063
l0064h:
	nop			;0064
	nop			;0065
	jp 0fffah		;0066
	ld b,e			;0069
	ld l,a			;006a
	ld (hl),b			;006b
	ld a,c			;006c
	ld (hl),d			;006d
	ld l,c			;006e
	ld h,a			;006f
	ld l,b			;0070
	ld (hl),h			;0071
	jr nz,l009ch		;0072
	ld h,e			;0074
	add hl,hl			;0075
	jr nz,$+51		;0076
	add hl,sp			;0078
	jr c,l00b0h		;0079
	inc l			;007b
	jr nz,l00afh		;007c
	add hl,sp			;007e
	jr c,l00b7h		;007f
	jr nz,l00cbh		;0081
	ld l,a			;0083
	ld (hl),a			;0084
	ld h,c			;0085
	ld (hl),d			;0086
	ld h,h			;0087
	jr nz,l00d1h		;0088
	ld l,a			;008a
	ld l,h			;008b
	ld h,h			;008c
l008dh:
	ld (hl),e			;008d
	ld (hl),h			;008e
	ld h,l			;008f
	ld l,c			;0090
	ld l,(hl)			;0091
	ld l,020h		;0092
	jr nz,l00d7h		;0094
	ld l,h			;0096
	ld l,h			;0097
	jr nz,l010ch		;0098
	ld l,c			;009a
	ld h,a			;009b
l009ch:
	ld l,b			;009c
	ld (hl),h			;009d
	ld (hl),e			;009e
	jr nz,$+116		;009f
	ld h,l			;00a1
	ld (hl),e			;00a2
	ld h,l			;00a3
	ld (hl),d			;00a4
	halt			;00a5
	ld h,l			;00a6
	ld h,h			;00a7
	ld l,00dh		;00a8
	jr nz,l00f9h		;00aa
	ld l,a			;00ac
	ld h,h			;00ad
l00aeh:
	ld l,c			;00ae
l00afh:
	ld h,(hl)			;00af
l00b0h:
	ld l,c			;00b0
	ld h,l			;00b1
	ld h,h			;00b2
	jr nz,$+110		;00b3
	ld h,c			;00b5
	ld (hl),e			;00b6
l00b7h:
	ld (hl),h			;00b7
	jr nz,l011ch		;00b8
	ld a,c			;00ba
	ld a,(l4e20h)		;00bb
	ld (l5857h),a		;00be
	jr nz,l00f4h		;00c1
	ld sp,l312fh		;00c3
	inc sp			;00c6
	cpl			;00c7
	jr c,$+56		;00c8
	dec c			;00ca
l00cbh:
	nop			;00cb
	nop			;00cc
	nop			;00cd
	nop			;00ce
	nop			;00cf
	nop			;00d0
l00d1h:
	nop			;00d1
	nop			;00d2
	nop			;00d3
	nop			;00d4
	nop			;00d5
	nop			;00d6
l00d7h:
	nop			;00d7
	nop			;00d8
	nop			;00d9
	nop			;00da
	nop			;00db
	nop			;00dc
	nop			;00dd
	nop			;00de
	nop			;00df
	nop			;00e0
	nop			;00e1
l00e2h:
	nop			;00e2
	nop			;00e3
	nop			;00e4
	nop			;00e5
	nop			;00e6
	nop			;00e7
	nop			;00e8
	nop			;00e9
	nop			;00ea
	nop			;00eb
	nop			;00ec
l00edh:
	ld a,001h		;00ed
	out (0f4h),a		;00ef
	ld hl,0f555h		;00f1
l00f4h:
	ld a,055h		;00f4
	ld (hl),a			;00f6
	ld a,(hl)			;00f7
	cpl			;00f8
l00f9h:
	ld (hl),a			;00f9
	ld a,(hl)			;00fa
l00fbh:
	ld c,01bh		;00fb
	ld b,002h		;00fd
	ld a,055h		;00ff
l0101h:
	ld d,002h		;0101
l0103h:
	out (c),d		;0103
	out (c),a		;0105
	out (c),d		;0107
	in a,(c)		;0109
	cpl			;010b
l010ch:
	djnz l0103h		;010c
	ld sp,l0000h		;010e
	jp l013ah		;0111
	ld l,h			;0114
	ld d,a			;0115
	jp l1e37h		;0116
	jp l1e77h		;0119
l011ch:
	jp l1e95h		;011c
	jp l1ebch		;011f
	jp l1ec9h		;0122
	inc (hl)			;0125
	cp a			;0126
	ld e,h			;0127
	cp a			;0128
	ld hl,(000bfh)		;0129
l012ch:
	nop			;012c
	nop			;012d
	nop			;012e
	nop			;012f
	nop			;0130
l0131h:
	and (hl)			;0131
	sla b		;0132
	nop			;0134
	dec c			;0135
	jp z,0c2f7h		;0136
	xor (hl)			;0139
l013ah:
	ld a,070h		;013a
	ld i,a		;013c
	ld hl,l579ch		;013e
	ld de,l7000h		;0141
	ld bc,l0018h		;0144
	ldir		;0147
	im 2		;0149
	ld hl,0ca0dh		;014b
	ld de,0ca0eh		;014e
	ld bc,004f1h		;0151
	ld (hl),000h		;0154
	ldir		;0156
	ld de,l0000h		;0158
sub_015bh:
	ld hl,0ccd5h		;015b
	call sub_0db9h		;015e
	ld hl,0cdd7h		;0161
	call sub_0db9h		;0164
	ld hl,0cbd3h		;0167
	call sub_0db9h		;016a
	ld hl,0c276h		;016d
	call sub_0db9h		;0170
	ld hl,0cfc9h		;0173
	push hl			;0176
	pop de			;0177
	inc de			;0178
	ld (hl),000h		;0179
	ld bc,02e36h		;017b
	ldir		;017e
	call sub_0b1bh		;0180
	ld c,000h		;0183
	jr nz,$+9		;0185
	push bc			;0187
	ld bc,l00e2h		;0188
	jr l01b3h		;018b
	ld de,0ff0eh		;018d
	ld a,08dh		;0190
	xor a			;0192
	ld (0c1f6h),a		;0193
	ld (0c0cbh),a		;0196
	xor a			;0199
	ld (0c144h),a		;019a
	ld (0ceffh),a		;019d
	ld hl,l0001h		;01a0
	ld (0cf06h),hl		;01a3
	ld hl,08000h		;01a6
	ld (0cf04h),hl		;01a9
	ld (hl),a			;01ac
	inc hl			;01ad
	ld (hl),a			;01ae
	push bc			;01af
	ld bc,0016fh		;01b0
l01b3h:
	ld hl,0561ch		;01b3
	ld de,0bef4h		;01b6
	ldir		;01b9
	pop bc			;01bb
	push bc			;01bc
	call sub_0b33h		;01bd
	ld iy,0c2f7h		;01c0
	ld ix,0cfc9h		;01c4
	ld hl,l0000h		;01c8
	ld (0cb9ch),hl		;01cb
l01ceh:
	ld bc,l002eh		;01ce
	ld hl,0bfc8h		;01d1
	ld de,(0cb9ch)		;01d4
	add hl,de			;01d8
	ld e,01dh		;01d9
	call 00572h		;01db
	add hl,bc			;01de
	ld e,01fh		;01df
	call 00572h		;01e1
	ld bc,l002eh		;01e4
	ld hl,0bfb1h		;01e7
	ld de,(0cb9ch)		;01ea
	add hl,de			;01ee
	ld e,021h		;01ef
	call 00572h		;01f1
	ld e,023h		;01f4
	add hl,bc			;01f6
	call 00572h		;01f7
	ld bc,l002eh		;01fa
	ld hl,0bfbch		;01fd
	ld de,(0cb9ch)		;0200
	add hl,de			;0204
	ld e,025h		;0205
	call 00572h		;0207
	ld e,027h		;020a
	add hl,bc			;020c
	call 00572h		;020d
	ld (iy+008h),028h		;0210
	ld hl,(0cb9ch)		;0214
	ld (iy+02dh),l		;0217
	ld a,(iy+02eh)		;021a
	and 004h		;021d
	ld (iy+02eh),a		;021f
	push bc			;0222
	push de			;0223
	push hl			;0224
	push iy		;0225
	pop hl			;0227
	ld de,0ffc1h		;0228
	add hl,de			;022b
	ld (hl),000h		;022c
	push hl			;022e
	pop de			;022f
	inc de			;0230
	ld bc,l005ah		;0231
	ldir		;0234
	push iy		;0236
	pop hl			;0238
	ld de,0000bh		;0239
	add hl,de			;023c
	ld (hl),08dh		;023d
	ld (iy+02ch),002h		;023f
	pop hl			;0243
	pop de			;0244
	pop bc			;0245
	inc hl			;0246
	ld (0cb9ch),hl		;0247
	ld a,l			;024a
	cp 00bh		;024b
	jr nc,l0255h		;024d
	call sub_3dd6h		;024f
	jp l01ceh		;0252
l0255h:
	ld a,080h		;0255
	ld (0cba5h),a		;0257
	call 0041ch		;025a
	call l04b7h		;025d
	call 003b8h		;0260
	call sub_0c7ah		;0263
	xor a			;0266
	ld (0cbc7h),a		;0267
	ld (0cbc8h),a		;026a
	ld (0cb9ah),a		;026d
	ld (0cb8ah),a		;0270
	ei			;0273
	pop bc			;0274
	ld a,c			;0275
	cp 0ffh		;0276
	push af			;0278
	call z,sub_45cbh		;0279
	pop af			;027c
	call sub_0585h		;027d
	ld a,001h		;0280
	ld (0cbc6h),a		;0282
	call sub_3dd6h		;0285
	ld a,020h		;0288
	call l42feh		;028a
	call l42feh		;028d
	call l0b23h		;0290
	call sub_1dfdh		;0293
	ld iy,0c2f7h		;0296
	call sub_448ah		;029a
	call sub_1ae7h		;029d
	ld hl,0cf0eh		;02a0
	ld (hl),000h		;02a3
	ld hl,(0cf06h)		;02a5
	ld (0cbb7h),hl		;02a8
	call sub_001bh		;02ab
	ld a,04eh		;02ae
	out (0f1h),a		;02b0
	jr $+4		;02b2
	ld (ix+021h),0cfh		;02b4
	sli h		;02b8
	ld a,(hl)			;02ba
	cp 00bh		;02bb
	jr c,l02c1h		;02bd
	xor a			;02bf
l02c0h:
	ld (hl),a			;02c0
l02c1h:
	call sub_3dd6h		;02c1
	ei			;02c4
	call sub_4c1bh		;02c5
	call sub_1281h		;02c8
	call sub_3e44h		;02cb
	call sub_0dfah		;02ce
	call sub_2b6ah		;02d1
	call sub_001eh		;02d4
	ld a,04eh		;02d7
	out (0f1h),a		;02d9
	ld a,(0cedch)		;02db
	or a			;02de
	jr z,l02e5h		;02df
	di			;02e1
	call 0526ah		;02e2
l02e5h:
	call 0347fh		;02e5
	ld a,(0cbcfh)		;02e8
	call sub_3dd6h		;02eb
	call sub_4850h		;02ee
	push iy		;02f1
	ld a,(0cbc7h)		;02f3
	call sub_3dd6h		;02f6
	call 00314h		;02f9
	pop iy		;02fc
	ld hl,(0cbd1h)		;02fe
l0301h:
	ld a,h			;0301
l0302h:
	or l			;0302
	jr nz,$-77		;0303
	ld hl,(0c276h)		;0305
	ld a,h			;0308
	or l			;0309
	jr nz,$-84		;030a
	call 0036fh		;030c
	jp 002b6h		;030f
	jp (hl)			;0312
	ld (l463ah),hl		;0313
	ret nz			;0316
	and 002h		;0317
	jp z,l034bh		;0319
	ld hl,0cefdh		;031c
	inc (hl)			;031f
	ld a,01fh		;0320
	and (hl)			;0322
	ret nz			;0323
	ld a,(hl)			;0324
	rlca			;0325
	rlca			;0326
	rlca			;0327
	and 003h		;0328
	ld hl,l036bh		;032a
	ld e,a			;032d
	ld d,000h		;032e
	add hl,de			;0330
	ld a,(hl)			;0331
	push af			;0332
	ld e,080h		;0333
	bit 1,a		;0335
	jr nz,l033bh		;0337
	ld e,000h		;0339
l033bh:
	call sub_5617h		;033b
	pop af			;033e
	ld e,080h		;033f
	bit 0,a		;0341
	jr nz,l0347h		;0343
	ld e,000h		;0345
l0347h:
	call sub_5613h		;0347
	ret			;034a
l034bh:
	ld a,(iy+007h)		;034b
	cp 002h		;034e
	ld e,080h		;0350
	jr c,l0356h		;0352
	ld e,000h		;0354
l0356h:
	call sub_5613h		;0356
	ld a,(iy+009h)		;0359
	ld e,a			;035c
	ld a,(iy-03fh)		;035d
	cp e			;0360
	ld e,080h		;0361
	jr z,l0367h		;0363
	ld e,000h		;0365
l0367h:
	jp sub_5617h		;0367
	ret			;036a
l036bh:
	ld (bc),a			;036b
	nop			;036c
	ld bc,l39fdh+3		;036d
	inc de			;0370
	cp a			;0371
	ld hl,0cf00h		;0372
	cp (hl)			;0375
	ret z			;0376
	ld (hl),a			;0377
	cp 00ah		;0378
	ret nz			;037a
	call sub_3deeh		;037b
	ret z			;037e
	call sub_0b1bh		;037f
	ret z			;0382
	ld hl,l0391h		;0383
	call l43c0h		;0386
	ld hl,(0cee3h)		;0389
	inc hl			;038c
	ld (0cee3h),hl		;038d
	ret			;0390
l0391h:
	dec c			;0391
	dec c			;0392
	rlca			;0393
	ld h,d			;0394
	ld h,d			;0395
	ld d,d			;0396
	ld b,c			;0397
	ld c,l			;0398
	jr nz,l040eh		;0399
	ld h,e			;039b
	ld h,c			;039c
	ld l,(hl)			;039d
	ld l,(hl)			;039e
	ld h,l			;039f
	ld h,h			;03a0
	inc l			;03a1
	jr nz,$+101		;03a2
	ld l,b			;03a4
	ld h,l			;03a5
	ld h,e			;03a6
	ld l,e			;03a7
	ld (hl),e			;03a8
	ld (hl),l			;03a9
	ld l,l			;03aa
	jr nz,$+104		;03ab
	ld h,c			;03ad
	ld l,c			;03ae
	ld l,h			;03af
	ld h,l			;03b0
	ld h,h			;03b1
	and c			;03b2
	adc a,l			;03b3
	jp l0441h		;03b4
	ld a,(0a53eh)		;03b7
	ld b,060h		;03ba
	out (010h),a		;03bc
	ld a,b			;03be
	out (010h),a		;03bf
	ld a,010h		;03c1
	out (010h),a		;03c3
	ld de,(0c038h)		;03c5
	ld hl,l012ch		;03c9
	or a			;03cc
	sbc hl,de		;03cd
	jr nc,l03ebh		;03cf
	ld hl,l2580h		;03d1
	xor a			;03d4
l03d5h:
	inc a			;03d5
	or a			;03d6
	sbc hl,de		;03d7
	jr nc,l03d5h		;03d9
	dec a			;03db
	or a			;03dc
	jr nz,l03e0h		;03dd
	inc a			;03df
l03e0h:
	ld c,012h		;03e0
	ld d,007h		;03e2
	out (c),d		;03e4
	out (c),a		;03e6
l03e8h:
	jp l044fh		;03e8
l03ebh:
	ld hl,00258h		;03eb
	xor a			;03ee
l03efh:
	inc a			;03ef
	or a			;03f0
	sbc hl,de		;03f1
	jr nc,l03efh		;03f3
	dec a			;03f5
	or a			;03f6
	jr nz,l03fah		;03f7
	inc a			;03f9
l03fah:
	ld c,012h		;03fa
	ld d,027h		;03fc
	out (c),d		;03fe
	out (c),a		;0400
	jp l044fh		;0402
	ret			;0405
	ld hl,l040eh+1		;0406
	jp (hl)			;0409
	ei			;040a
	call sub_5247h		;040b
l040eh:
	call sub_0502h		;040e
	call 007cah		;0411
	call sub_524dh		;0414
	ei			;0417
	nop			;0418
	ret			;0419
	inc (ix+021h)		;041a
l041dh:
	jr nz,l0423h		;041d
	in a,(019h)		;041f
	ld b,008h		;0421
l0423h:
	ld hl,l043eh		;0423
l0426h:
	ld e,(hl)			;0426
	inc hl			;0427
	ld a,(hl)			;0428
	inc hl			;0429
	call sub_0504h		;042a
	djnz l0426h		;042d
	in a,(019h)		;042f
	ld (0ced9h),a		;0431
	ret			;0434
	call sub_015bh		;0435
	ld a,(hl)			;0438
	nop			;0439
	ld e,000h		;043a
	ld (bc),a			;043c
	nop			;043d
l043eh:
	nop			;043e
	jr l0445h		;043f
l0441h:
	jr nz,$+9		;0441
	ld a,(hl)			;0443
	dec b			;0444
l0445h:
	ld l,c			;0445
	inc bc			;0446
	exx			;0447
	nop			;0448
	djnz l044bh		;0449
l044bh:
	djnz l044eh		;044b
	rra			;044d
l044eh:
	nop			;044e
l044fh:
	ld de,(0c03ah)		;044f
	ld hl,l012ch		;0453
	or a			;0456
	sbc hl,de		;0457
	jr nc,l0489h		;0459
	ld hl,l2580h		;045b
	xor a			;045e
l045fh:
	inc a			;045f
	or a			;0460
	sbc hl,de		;0461
	jr nc,l045fh		;0463
	dec a			;0465
	or a			;0466
	jr nz,l046ah		;0467
	inc a			;0469
l046ah:
	ld e,a			;046a
	ld a,i		;046b
	di			;046d
	push af			;046e
	ld c,011h		;046f
	ld d,007h		;0471
	ld a,e			;0473
	out (c),d		;0474
	out (c),a		;0476
	inc c			;0478
	inc c			;0479
	ld a,e			;047a
	or a			;047b
	rra			;047c
	out (c),d		;047d
	out (c),a		;047f
	pop hl			;0481
	bit 2,l		;0482
	jr z,l0488h		;0484
	ei			;0486
	nop			;0487
l0488h:
	ret			;0488
l0489h:
	ld hl,00258h		;0489
	xor a			;048c
l048dh:
	inc a			;048d
	or a			;048e
	sbc hl,de		;048f
	jr nc,l048dh		;0491
	dec a			;0493
	or a			;0494
	jr nz,l0498h		;0495
	inc a			;0497
l0498h:
	ld e,a			;0498
	ld a,i		;0499
	di			;049b
	push af			;049c
	ld c,011h		;049d
	ld d,027h		;049f
	ld a,e			;04a1
	out (c),d		;04a2
	out (c),a		;04a4
	inc c			;04a6
	inc c			;04a7
	ld a,e			;04a8
	or a			;04a9
	rra			;04aa
	out (c),d		;04ab
	out (c),a		;04ad
	pop hl			;04af
	bit 2,l		;04b0
	jr z,l04b6h		;04b2
	ei			;04b4
	nop			;04b5
l04b6h:
	ret			;04b6
l04b7h:
	ld c,01bh		;04b7
	in a,(c)		;04b9
	ld a,018h		;04bb
	out (c),a		;04bd
	ld hl,004bah		;04bf
	ld hl,0bf0fh		;04c2
	ld a,0bfh		;04c5
	and (hl)			;04c7
	ld b,a			;04c8
	ld d,041h		;04c9
	ld a,(0c020h)		;04cb
	cp 008h		;04ce
	jr nz,l04d6h		;04d0
	set 6,b		;04d2
	set 7,d		;04d4
l04d6h:
	ld (hl),b			;04d6
	ld a,005h		;04d7
	out (c),a		;04d9
	out (c),b		;04db
	ld a,003h		;04dd
	out (c),a		;04df
	out (c),d		;04e1
	ld a,004h		;04e3
	out (c),a		;04e5
	ld a,(0c021h)		;04e7
	or 044h		;04ea
	out (c),a		;04ec
	ld b,007h		;04ee
	ld hl,004f7h		;04f0
	otir		;04f3
	ret			;04f5
	ld (l0002h),a		;04f6
	jr z,$+18		;04f9
	djnz l04feh		;04fb
	rra			;04fd
l04feh:
	ld c,01bh		;04fe
	jr l0506h		;0500
sub_0502h:
	reti		;0502
sub_0504h:
	ld c,019h		;0504
l0506h:
	push bc			;0506
	push de			;0507
	push hl			;0508
l0509h:
	ld d,a			;0509
	ld a,i		;050a
	di			;050c
	push af			;050d
	out (c),e		;050e
	out (c),d		;0510
	pop hl			;0512
	bit 2,l		;0513
	jr z,l0519h		;0515
	ei			;0517
	nop			;0518
l0519h:
	pop hl			;0519
	pop de			;051a
	pop bc			;051b
	ret			;051c
sub_051dh:
	ld c,01bh		;051d
	jr l0523h		;051f
sub_0521h:
	ld c,019h		;0521
l0523h:
	push bc			;0523
	push de			;0524
	push hl			;0525
	ld a,i		;0526
	di			;0528
	push af			;0529
	out (c),e		;052a
	in b,(c)		;052c
	pop hl			;052e
	bit 2,l		;052f
	jr z,l0535h		;0531
	ei			;0533
	nop			;0534
l0535h:
	pop hl			;0535
	pop de			;0536
	ld a,b			;0537
	pop bc			;0538
l0539h:
	ret			;0539
l053ah:
	ld a,i		;053a
	ld a,d			;053c
	push af			;053d
	cpl			;053e
	and e			;053f
	di			;0540
	ld e,a			;0541
	ld a,(hl)			;0542
	and d			;0543
	or e			;0544
	ld (hl),a			;0545
	ld e,005h		;0546
	call l0506h		;0548
	pop de			;054b
	bit 2,e		;054c
	ret z			;054e
	ei			;054f
	ret			;0550
	ld a,i		;0551
	pop hl			;0553
	push af			;0554
	di			;0555
	jp (hl)			;0556
	pop hl			;0557
	ex (sp),hl			;0558
	bit 2,l		;0559
	ret z			;055b
	ei			;055c
	nop			;055d
	ret			;055e
	inc (ix-003h)		;055f
	push hl			;0562
	pop hl			;0563
	ld d,000h		;0564
	bit 7,e		;0566
	jr z,l056bh		;0568
	dec d			;056a
l056bh:
	add hl,de			;056b
	ld e,(hl)			;056c
	inc hl			;056d
	ld d,(hl)			;056e
	ex de,hl			;056f
	ret			;0570
	ld (0e5e5h),hl		;0571
	push iy		;0574
	pop hl			;0576
	ld d,000h		;0577
	bit 7,e		;0579
	jr z,l057eh		;057b
	dec d			;057d
l057eh:
	add hl,de			;057e
	pop de			;057f
	ld (hl),e			;0580
	inc hl			;0581
	ld (hl),d			;0582
	pop hl			;0583
	ret			;0584
sub_0585h:
	ld de,0cdd9h		;0585
	ld a,(0c273h)		;0588
	and 004h		;058b
	jr nz,l0592h		;058d
	ld de,0ccd7h		;058f
l0592h:
	ld hl,l1de7h		;0592
	ld bc,l0003h+1		;0595
	ld a,(0cefeh)		;0598
	bit 7,a		;059b
	jr nz,l05b3h		;059d
	ld a,(0bf19h)		;059f
	bit 4,a		;05a2
	jr z,l05b3h		;05a4
	ld hl,l1b29h		;05a6
	ld bc,l0006h+2		;05a9
	bit 5,a		;05ac
	jr z,l05b3h		;05ae
	ld hl,01b31h		;05b0
l05b3h:
	ldir		;05b3
	ret			;05b5
	ei			;05b6
	reti		;05b7
l05b9h:
	nop			;05b9
	nop			;05ba
	nop			;05bb
	nop			;05bc
	nop			;05bd
	nop			;05be
	nop			;05bf
l05c0h:
	nop			;05c0
	nop			;05c1
	nop			;05c2
	nop			;05c3
	nop			;05c4
	nop			;05c5
	nop			;05c6
	nop			;05c7
	nop			;05c8
	ld bc,l0101h		;05c9
	ld bc,l0101h		;05cc
	ld bc,l0101h		;05cf
	ld bc,l0101h		;05d2
	ld bc,l0101h		;05d5
	ld bc,00202h		;05d8
	ld (bc),a			;05db
	ld (bc),a			;05dc
	ld (bc),a			;05dd
	ld (bc),a			;05de
	ld (bc),a			;05df
	ld (bc),a			;05e0
	ld (bc),a			;05e1
	ld (bc),a			;05e2
	ld (bc),a			;05e3
	ld (bc),a			;05e4
	ld (bc),a			;05e5
	ld (bc),a			;05e6
	ld (bc),a			;05e7
	ld (bc),a			;05e8
	inc bc			;05e9
	add a,b			;05ea
	inc bc			;05eb
	inc bc			;05ec
	inc bc			;05ed
	add a,b			;05ee
	inc bc			;05ef
	inc bc			;05f0
	inc bc			;05f1
	add a,b			;05f2
	inc bc			;05f3
	inc bc			;05f4
	inc bc			;05f5
	add a,b			;05f6
	inc bc			;05f7
	inc bc			;05f8
	inc h			;05f9
	inc h			;05fa
	inc h			;05fb
	inc h			;05fc
	inc (hl)			;05fd
	inc h			;05fe
	inc (hl)			;05ff
l0600h:
	inc (hl)			;0600
	inc (hl)			;0601
	inc h			;0602
	inc (hl)			;0603
	inc (hl)			;0604
	ex af,af'			;0605
	jr z,l0610h		;0606
	ex af,af'			;0608
	inc h			;0609
	inc h			;060a
	inc h			;060b
	inc h			;060c
	dec (hl)			;060d
	dec h			;060e
	dec (hl)			;060f
l0610h:
	dec (hl)			;0610
	dec (hl)			;0611
	dec h			;0612
	dec (hl)			;0613
	dec (hl)			;0614
	ld c,02eh		;0615
	ld c,00eh		;0617
	ld h,026h		;0619
	ld h,026h		;061b
	inc (hl)			;061d
l061eh:
	ld h,036h		;061e
sub_0620h:
	ld (hl),034h		;0620
	ld h,036h		;0622
	ld (hl),008h		;0624
	dec hl			;0626
	dec bc			;0627
	dec bc			;0628
	ld b,a			;0629
	ld b,a			;062a
	ld b,a			;062b
	ld b,a			;062c
	scf			;062d
	ld b,a			;062e
	scf			;062f
	scf			;0630
	scf			;0631
	ld b,a			;0632
	scf			;0633
	scf			;0634
	add hl,bc			;0635
	ld c,c			;0636
	add hl,bc			;0637
	add hl,bc			;0638
	jr z,l0663h		;0639
	jr z,$+42		;063b
	inc (hl)			;063d
	inc h			;063e
	inc (hl)			;063f
	inc (hl)			;0640
	inc (hl)			;0641
	inc h			;0642
	inc (hl)			;0643
	inc (hl)			;0644
	ex af,af'			;0645
	jr z,l0650h		;0646
	ex af,af'			;0648
	ld c,c			;0649
	ld c,c			;064a
	ld c,c			;064b
	ld c,c			;064c
	scf			;064d
	ld b,a			;064e
	scf			;064f
l0650h:
	scf			;0650
	scf			;0651
	ld b,a			;0652
	scf			;0653
	scf			;0654
	add hl,bc			;0655
	ld c,c			;0656
	add hl,bc			;0657
	add hl,bc			;0658
	ld c,d			;0659
	ld c,d			;065a
	ld c,d			;065b
	ld c,d			;065c
	scf			;065d
	ld c,d			;065e
	ld a,(0373ah)		;065f
	ld c,d			;0662
l0663h:
	ld a,(0093ah)		;0663
	ld c,h			;0666
	inc c			;0667
	inc c			;0668
	dec hl			;0669
	dec hl			;066a
	dec hl			;066b
	dec hl			;066c
	inc (hl)			;066d
	ld h,036h		;066e
	ld (hl),034h		;0670
	ld h,036h		;0672
	ld (hl),00bh		;0674
	dec hl			;0676
	dec bc			;0677
	dec bc			;0678
	ld c,h			;0679
	ld c,h			;067a
	ld c,h			;067b
	ld c,h			;067c
	scf			;067d
	ld c,d			;067e
	ld a,(0373ah)		;067f
	ld c,d			;0682
	ld a,(l0c3ah)		;0683
	ld c,h			;0686
	inc c			;0687
	inc c			;0688
	ld c,l			;0689
	ld c,l			;068a
	ld c,l			;068b
	ld c,l			;068c
	dec a			;068d
	ld c,l			;068e
	dec a			;068f
	dec a			;0690
	dec a			;0691
	ld c,l			;0692
	dec a			;0693
	dec a			;0694
	rrca			;0695
	ld c,a			;0696
	rrca			;0697
	rrca			;0698
	add hl,hl			;0699
	add hl,hl			;069a
	add hl,hl			;069b
	add hl,hl			;069c
	dec (hl)			;069d
	ld b,l			;069e
	dec (hl)			;069f
	dec (hl)			;06a0
	dec (hl)			;06a1
	ld b,l			;06a2
	dec (hl)			;06a3
	dec (hl)			;06a4
	ld c,02eh		;06a5
	ld c,00eh		;06a7
	ld c,a			;06a9
	ld c,a			;06aa
	ld c,a			;06ab
	ld c,a			;06ac
	dec a			;06ad
	ld c,l			;06ae
	dec a			;06af
	dec a			;06b0
	dec a			;06b1
	ld c,a			;06b2
	dec a			;06b3
	ccf			;06b4
	rrca			;06b5
	ld c,a			;06b6
	rrca			;06b7
	rrca			;06b8
l06b9h:
	nop			;06b9
	nop			;06ba
	nop			;06bb
	nop			;06bc
	nop			;06bd
	nop			;06be
	nop			;06bf
l06c0h:
	nop			;06c0
	ld h,h			;06c1
	add a,b			;06c2
	nop			;06c3
	nop			;06c4
	nop			;06c5
	nop			;06c6
	nop			;06c7
	nop			;06c8
	ld d,c			;06c9
	ld d,c			;06ca
	ld bc,l0001h		;06cb
	ld bc,l0000h		;06ce
	ld h,h			;06d1
	add a,b			;06d2
	inc b			;06d3
	nop			;06d4
	nop			;06d5
	ld bc,l5101h		;06d6
	ld (bc),a			;06d9
	ld (bc),a			;06da
	ld (bc),a			;06db
	ld (bc),a			;06dc
	ld d,c			;06dd
	ld (bc),a			;06de
	ld (bc),a			;06df
	ld (bc),a			;06e0
	ld h,h			;06e1
	ld h,b			;06e2
	ld (bc),a			;06e3
	ld (bc),a			;06e4
	ld d,c			;06e5
	ld (bc),a			;06e6
	ld (bc),a			;06e7
	ld (bc),a			;06e8
	ld (hl),e			;06e9
	ld (hl),e			;06ea
	inc bc			;06eb
	inc bc			;06ec
	nop			;06ed
	inc bc			;06ee
	inc bc			;06ef
	inc bc			;06f0
	add a,b			;06f1
	ld h,b			;06f2
	nop			;06f3
	nop			;06f4
	inc bc			;06f5
	inc bc			;06f6
	inc bc			;06f7
	ld (hl),e			;06f8
	ld (hl),e			;06f9
	sub (hl)			;06fa
	ld b,a			;06fb
	inc b			;06fc
	nop			;06fd
	dec d			;06fe
	jp nc,l6404h		;06ff
	ld h,b			;0702
	inc b			;0703
	nop			;0704
	ld d,c			;0705
	ld b,004h		;0706
	sub (hl)			;0708
	ld (hl),e			;0709
	sub (hl)			;070a
	ld c,l			;070b
	dec b			;070c
	nop			;070d
	dec b			;070e
	jp nc,l6405h		;070f
	ld h,b			;0712
	ld d,c			;0713
	nop			;0714
	ld d,c			;0715
	dec b			;0716
	dec b			;0717
	sub (hl)			;0718
	ld (hl),e			;0719
	ld b,04ah		;071a
	ld b,000h		;071c
	ld b,0d2h		;071e
	ld b,064h		;0720
	ld h,b			;0722
	ld d,c			;0723
	nop			;0724
	ld d,c			;0725
	ld b,004h		;0726
	sub (hl)			;0728
	ld (hl),e			;0729
	xor d			;072a
	rlca			;072b
	inc h			;072c
	nop			;072d
	ld b,a			;072e
	jp nc,l6707h		;072f
	ld h,b			;0732
	ld d,c			;0733
	nop			;0734
	ld d,c			;0735
	ld a,(bc)			;0736
	rlca			;0737
	xor d			;0738
	ld (hl),e			;0739
	sbc a,e			;073a
	ld c,c			;073b
	ex af,af'			;073c
	nop			;073d
	ld e,0d2h		;073e
	ex af,af'			;0740
	ld h,h			;0741
	ld h,b			;0742
	ld d,c			;0743
	nop			;0744
	ld d,c			;0745
	dec bc			;0746
	ex af,af'			;0747
	sbc a,e			;0748
	ld (hl),e			;0749
	xor h			;074a
	add hl,bc			;074b
	jr z,l074eh		;074c
l074eh:
	ld c,c			;074e
	jp nc,l6709h		;074f
	ld h,b			;0752
	ld d,c			;0753
	nop			;0754
	ld d,c			;0755
	inc c			;0756
	add hl,bc			;0757
	xor h			;0758
	ld (hl),e			;0759
	ld a,(bc)			;075a
	ld a,(bc)			;075b
	ld h,000h		;075c
	ld a,(bc)			;075e
	jp nc,l670ah		;075f
	ld h,b			;0762
	ld d,c			;0763
	nop			;0764
	ld d,c			;0765
	ld a,(bc)			;0766
	rlca			;0767
	xor d			;0768
	ld (hl),e			;0769
	dec bc			;076a
	ld c,h			;076b
	dec bc			;076c
	nop			;076d
	dec bc			;076e
	jp nc,l640bh		;076f
	ld h,b			;0772
	ld d,c			;0773
	nop			;0774
	ld d,c			;0775
	dec bc			;0776
	ex af,af'			;0777
	sbc a,e			;0778
	ld (hl),e			;0779
	inc c			;077a
	inc c			;077b
	dec hl			;077c
	nop			;077d
	inc c			;077e
	jp nc,l670ch		;077f
	ld h,b			;0782
	ld d,c			;0783
	nop			;0784
	ld d,c			;0785
	inc c			;0786
	add hl,bc			;0787
	xor h			;0788
	ld (hl),e			;0789
	xor d			;078a
	dec c			;078b
	dec h			;078c
	nop			;078d
	ld c,l			;078e
	jp nc,l670dh		;078f
	ld h,b			;0792
	ld d,c			;0793
	nop			;0794
	ld d,c			;0795
	ld a,(bc)			;0796
	rlca			;0797
	xor d			;0798
	ld (hl),e			;0799
	sbc a,e			;079a
	ld c,a			;079b
	ld c,000h		;079c
	ld c,0d2h		;079e
	ld c,064h		;07a0
	ld h,b			;07a2
	ld d,c			;07a3
	nop			;07a4
	ld d,c			;07a5
	dec bc			;07a6
	ex af,af'			;07a7
	sbc a,e			;07a8
	ld (hl),e			;07a9
	xor d			;07aa
	rrca			;07ab
	ld l,000h		;07ac
	rrca			;07ae
	jp nc,l640fh		;07af
	ld h,b			;07b2
	ld d,c			;07b3
	nop			;07b4
	ld d,c			;07b5
	rrca			;07b6
	add hl,bc			;07b7
	xor d			;07b8
l07b9h:
	nop			;07b9
	ld (bc),a			;07ba
	ld bc,00480h		;07bb
	adc a,b			;07be
	djnz $-94		;07bf
	ld b,b			;07c1
	add a,d			;07c2
	add a,e			;07c3
	nop			;07c4
	nop			;07c5
	add a,c			;07c6
	nop			;07c7
	nop			;07c8
	ld bc,l1021h		;07c9
	cp a			;07cc
	ld c,000h		;07cd
	inc hl			;07cf
	ld b,003h		;07d0
l07d2h:
	dec (hl)			;07d2
	jr nz,l07dbh		;07d3
	ld (hl),00ah		;07d5
	inc c			;07d7
	inc hl			;07d8
	djnz l07d2h		;07d9
l07dbh:
	ld hl,0bf7ah		;07db
l07deh:
	ld a,c			;07de
	cp (hl)			;07df
	jr c,l07f9h		;07e0
	push hl			;07e2
	ld de,l002eh		;07e3
	di			;07e6
	add hl,de			;07e7
	ld a,(hl)			;07e8
	and a			;07e9
	jr z,l07f6h		;07ea
	cp 0ffh		;07ec
	jr z,l07f6h		;07ee
	cp 0fdh		;07f0
	jr z,l07f6h		;07f2
	dec a			;07f4
	ld (hl),a			;07f5
l07f6h:
	ei			;07f6
	nop			;07f7
	pop hl			;07f8
l07f9h:
	inc hl			;07f9
	ld a,(hl)			;07fa
	cp 0ffh		;07fb
	jr nz,l07deh		;07fd
	ld hl,0bf1ah		;07ff
	ld c,000h		;0802
	ld b,005h		;0804
l0806h:
	dec (hl)			;0806
	jr nz,l080fh		;0807
	ld (hl),00ah		;0809
	inc c			;080b
	inc hl			;080c
	djnz l0806h		;080d
l080fh:
	ld a,c			;080f
	cp 002h		;0810
	push af			;0812
	call nc,sub_0a66h		;0813
	call sub_0871h		;0816
	call sub_54d1h		;0819
	pop af			;081c
	push af			;081d
	cp 005h		;081e
	call nc,sub_0840h		;0820
	pop af			;0823
	cp 002h		;0824
	ret c			;0826
	ld a,(0cedbh)		;0827
	or a			;082a
	jr z,l083dh		;082b
	dec a			;082d
	ld (0cedbh),a		;082e
	or a			;0831
	jr nz,l083dh		;0832
	di			;0834
	call sub_521ch		;0835
	ld a,0ffh		;0838
	ld (0cedch),a		;083a
l083dh:
	jp l0021h		;083d
sub_0840h:
	ld a,(0bf1ah)		;0840
	ld b,a			;0843
	ld a,(0c036h)		;0844
	sub 008h		;0847
	add a,b			;0849
	ld (0bf1ah),a		;084a
	ret			;084d
l084eh:
	push de			;084e
	push hl			;084f
	ld de,l002eh		;0850
	add hl,de			;0853
	ex (sp),hl			;0854
	and a			;0855
	push hl			;0856
	sbc hl,de		;0857
	ld a,(hl)			;0859
	pop hl			;085a
	ex (sp),hl			;085b
	cp 003h		;085c
	ld a,(hl)			;085e
	jr z,l0868h		;085f
	and a			;0861
	jr z,l0868h		;0862
	inc a			;0864
	jr nz,l0868h		;0865
	dec a			;0867
l0868h:
	pop hl			;0868
	ld (hl),a			;0869
	pop de			;086a
	ret			;086b
sub_086ch:
	ld hl,0bfb0h		;086c
	jr l084eh		;086f
sub_0871h:
	ld hl,0cb9ah		;0871
	ld de,0bf66h		;0874
	di			;0877
	nop			;0878
	ld a,(hl)			;0879
	and a			;087a
	ei			;087b
	nop			;087c
	jr z,l088dh		;087d
	ld (hl),000h		;087f
	call sub_0cfeh		;0881
	di			;0884
	call sub_0dddh		;0885
	ei			;0888
	nop			;0889
	jp l0894h		;088a
l088dh:
	call l0d43h		;088d
	ret nc			;0890
	call l0cc2h		;0891
l0894h:
	and a			;0894
	ret z			;0895
	call sub_089ah		;0896
	ret			;0899
sub_089ah:
	ld hl,0bf16h		;089a
	bit 0,(hl)		;089d
	res 0,(hl)		;089f
	jr nz,l08efh		;08a1
	cp 01bh		;08a3
	jr nz,l08b2h		;08a5
	push hl			;08a7
	ld hl,0c043h		;08a8
	bit 7,(hl)		;08ab
	pop hl			;08ad
	jr z,l08b2h		;08ae
	ld a,024h		;08b0
l08b2h:
	push hl			;08b2
	call sub_0913h		;08b3
	pop hl			;08b6
	jr z,l08c9h		;08b7
	cp 00dh		;08b9
	jp nz,l08efh		;08bb
	ld b,a			;08be
	ld a,(0c273h)		;08bf
	bit 7,a		;08c2
	ld a,b			;08c4
	jr z,l08efh		;08c5
	jr l08e3h		;08c7
l08c9h:
	ld b,a			;08c9
	ld a,c			;08ca
	cp 005h		;08cb
	jr nz,l08d2h		;08cd
	set 0,(hl)		;08cf
	ret			;08d1
l08d2h:
	cp 000h		;08d2
	ret nz			;08d4
	ld a,(0c273h)		;08d5
	ld a,(0c273h)		;08d8
	bit 3,a		;08db
	jr nz,l08e3h		;08dd
	bit 7,a		;08df
	jr z,l08ech		;08e1
l08e3h:
	ld a,001h		;08e3
	ld (0bf15h),a		;08e5
	ld a,b			;08e8
	call l08efh		;08e9
l08ech:
	jp l11f5h		;08ec
l08efh:
	ld hl,0c043h		;08ef
	bit 1,(hl)		;08f2
	jr z,l0907h		;08f4
	push af			;08f6
	ld de,0bf5ch		;08f7
	call l0c7fh		;08fa
	pop af			;08fd
	call sub_55a2h		;08fe
	jr nz,l0907h		;0901
	ld a,00ah		;0903
	jr l08efh		;0905
l0907h:
	ld a,(0c273h)		;0907
	and 010h		;090a
	ret z			;090c
	ld hl,0c275h		;090d
	set 6,(hl)		;0910
	ret			;0912
sub_0913h:
	ld hl,0c047h		;0913
	bit 7,(hl)		;0916
	jp z,l0920h		;0918
	ld c,0ffh		;091b
	cp 00ah		;091d
	ret z			;091f
l0920h:
	ld hl,0c02bh		;0920
	ld bc,l0006h+1		;0923
	cpdr		;0926
	ret			;0928
	ld de,0d5c5h		;0929
	push hl			;092c
	ld hl,(0cb9ch)		;092d
	ld de,0ca0dh		;0930
	ld b,005h		;0933
l0935h:
	ld a,(hl)			;0935
	sub 030h		;0936
	call sub_0999h		;0938
	jr c,l0988h		;093b
	rlca			;093d
	rlca			;093e
	rlca			;093f
	rlca			;0940
	ld c,a			;0941
	inc hl			;0942
	ld a,(hl)			;0943
	sub 030h		;0944
	call sub_0999h		;0946
	jr c,l0988h		;0949
	add a,c			;094b
	ld (de),a			;094c
	inc hl			;094d
	push hl			;094e
	push de			;094f
	ld hl,l098dh		;0950
	ld e,b			;0953
	ld d,000h		;0954
	sla e		;0956
	add hl,de			;0958
	ld e,(hl)			;0959
	inc hl			;095a
	ld d,(hl)			;095b
	pop hl			;095c
	push hl			;095d
	ld a,(hl)			;095e
	cp e			;095f
	jr c,l0986h		;0960
	ld e,a			;0962
	ld a,d			;0963
	and a			;0964
	jr z,l096ah		;0965
	sub e			;0967
	jr c,l0986h		;0968
l096ah:
	pop de			;096a
	pop hl			;096b
	inc de			;096c
	djnz l0935h		;096d
	ld hl,0ca0dh		;096f
	ld de,0cf0fh		;0972
	ld b,005h		;0975
l0977h:
	ld a,(hl)			;0977
	ld (de),a			;0978
	inc hl			;0979
	dec de			;097a
	djnz l0977h		;097b
	ld hl,0bf16h		;097d
	set 4,(hl)		;0980
	xor a			;0982
	ld (de),a			;0983
	jr l0989h		;0984
l0986h:
	pop hl			;0986
	pop hl			;0987
l0988h:
	scf			;0988
l0989h:
	pop hl			;0989
	pop de			;098a
	pop bc			;098b
	ret			;098c
l098dh:
	nop			;098d
	nop			;098e
	nop			;098f
	ld e,c			;0990
	nop			;0991
	inc hl			;0992
	ld bc,l0131h		;0993
	ld (de),a			;0996
	nop			;0997
	nop			;0998
sub_0999h:
	cp 00ah		;0999
	ccf			;099b
	ret			;099c
sub_099dh:
	ld a,(0bf16h)		;099d
	bit 4,a		;09a0
	jr nz,l09abh		;09a2
	ld hl,l58afh		;09a4
	call l43c0h		;09a7
	ret			;09aa
l09abh:
	ld hl,0cf0eh		;09ab
	jr l09b0h		;09ae
l09b0h:
	ld a,(hl)			;09b0
	and a			;09b1
	ret z			;09b2
	ld a,(0c044h)		;09b3
	bit 6,a		;09b6
	jr z,l09c6h		;09b8
	push hl			;09ba
	ld c,02fh		;09bb
	call sub_09f0h		;09bd
	dec hl			;09c0
	call sub_09f0h		;09c1
	jr l09d1h		;09c4
l09c6h:
	push hl			;09c6
	dec hl			;09c7
	ld c,02dh		;09c8
	call sub_09f0h		;09ca
	inc hl			;09cd
	call sub_09ffh		;09ce
l09d1h:
	ld a,(0cf0fh)		;09d1
	call sub_42d6h		;09d4
	ld a,020h		;09d7
	call l42feh		;09d9
	call l42feh		;09dc
	pop hl			;09df
	dec hl			;09e0
	dec hl			;09e1
	ld c,03ah		;09e2
	call sub_09f0h		;09e4
	dec hl			;09e7
	call sub_09f0h		;09e8
	dec hl			;09eb
	ld a,(hl)			;09ec
	jp sub_42d6h		;09ed
sub_09f0h:
	push de			;09f0
	push hl			;09f1
	push bc			;09f2
	ld a,(hl)			;09f3
	call sub_42d6h		;09f4
	pop bc			;09f7
	ld a,c			;09f8
	call l42feh		;09f9
	pop hl			;09fc
	pop de			;09fd
	ret			;09fe
sub_09ffh:
	push de			;09ff
	push hl			;0a00
l0a01h:
	push bc			;0a01
	ld a,(hl)			;0a02
	cp 00ah		;0a03
	jr c,l0a09h		;0a05
	sub 006h		;0a07
l0a09h:
	ld b,a			;0a09
	add a,a			;0a0a
	add a,b			;0a0b
	ld d,000h		;0a0c
	ld e,a			;0a0e
	ld hl,l0a26h		;0a0f
	add hl,de			;0a12
	ld a,(hl)			;0a13
	call l42feh		;0a14
	inc hl			;0a17
	ld a,(hl)			;0a18
	call l42feh		;0a19
	inc hl			;0a1c
	ld a,(hl)			;0a1d
	call l42feh		;0a1e
	pop bc			;0a21
	ld a,c			;0a22
	call l42feh		;0a23
l0a26h:
	pop hl			;0a26
	pop de			;0a27
	ret			;0a28
	ld c,d			;0a29
	ld h,c			;0a2a
	ld l,(hl)			;0a2b
	ld b,(hl)			;0a2c
	ld h,l			;0a2d
	ld h,d			;0a2e
	ld c,l			;0a2f
	ld h,c			;0a30
	ld (hl),d			;0a31
	ld b,c			;0a32
	ld (hl),b			;0a33
	ld (hl),d			;0a34
	ld c,l			;0a35
	ld h,c			;0a36
	ld a,c			;0a37
	ld c,d			;0a38
	ld (hl),l			;0a39
	ld l,(hl)			;0a3a
	ld c,d			;0a3b
	ld (hl),l			;0a3c
	ld l,h			;0a3d
	ld b,c			;0a3e
	ld (hl),l			;0a3f
	ld h,a			;0a40
	ld d,e			;0a41
	ld h,l			;0a42
	ld (hl),b			;0a43
	ld c,a			;0a44
	ld h,e			;0a45
	ld (hl),h			;0a46
	ld c,(hl)			;0a47
	ld l,a			;0a48
	halt			;0a49
	ld b,h			;0a4a
	ld h,l			;0a4b
	ld h,e			;0a4c
sub_0a4dh:
	ld a,(0bf16h)		;0a4d
	bit 4,a		;0a50
	ret z			;0a52
	ld a,020h		;0a53
	call l42feh		;0a55
	ld a,05bh		;0a58
	call l42feh		;0a5a
	call sub_099dh		;0a5d
	ld a,05dh		;0a60
	call l42feh		;0a62
	ret			;0a65
sub_0a66h:
	ld a,(0cf0eh)		;0a66
	and a			;0a69
	ret z			;0a6a
	ld hl,0cf0ah		;0a6b
	ld b,060h		;0a6e
	ld c,000h		;0a70
	call sub_0aa2h		;0a72
	ret nc			;0a75
	inc hl			;0a76
	call sub_0aa2h		;0a77
	ret nc			;0a7a
	inc hl			;0a7b
	ld b,024h		;0a7c
	call sub_0aa2h		;0a7e
	ret nc			;0a81
	inc hl			;0a82
	push hl			;0a83
	inc hl			;0a84
	ld e,(hl)			;0a85
	ld d,000h		;0a86
	ld hl,l0aafh		;0a88
	add hl,de			;0a8b
	ld b,(hl)			;0a8c
	pop hl			;0a8d
	ld c,001h		;0a8e
	call sub_0aa2h		;0a90
	ret nc			;0a93
	inc hl			;0a94
	ld b,013h		;0a95
	call sub_0aa2h		;0a97
	ret nc			;0a9a
	inc hl			;0a9b
l0a9ch:
	ld a,(hl)			;0a9c
	add a,001h		;0a9d
	daa			;0a9f
	ld (hl),a			;0aa0
	ret			;0aa1
sub_0aa2h:
	ld a,(hl)			;0aa2
	add a,001h		;0aa3
	daa			;0aa5
	ld (hl),a			;0aa6
	cp b			;0aa7
	jr c,l0aadh		;0aa8
	ld (hl),c			;0aaa
	scf			;0aab
	ret			;0aac
l0aadh:
	and a			;0aad
	ret			;0aae
l0aafh:
	nop			;0aaf
	ld (l3229h),a		;0ab0
	ld sp,03132h		;0ab3
	ld (03132h),a		;0ab6
	nop			;0ab9
	nop			;0aba
	nop			;0abb
	nop			;0abc
	nop			;0abd
	nop			;0abe
	ld (l3231h),a		;0abf
	ld hl,0bfafh		;0ac2
	ld a,(hl)			;0ac5
	and a			;0ac6
	ret nz			;0ac7
	ld (hl),001h		;0ac8
	jp sub_0a66h		;0aca
	ld (0d621h),hl		;0acd
	cp a			;0ad0
	ld bc,00299h		;0ad1
	call sub_0b28h		;0ad4
	push af			;0ad7
	call sub_0b65h		;0ad8
	ld c,000h		;0adb
l0addh:
	ld a,(de)			;0add
	and (hl)			;0ade
	add a,c			;0adf
	ld c,a			;0ae0
	inc hl			;0ae1
	inc de			;0ae2
	djnz l0addh		;0ae3
	pop af			;0ae5
	add a,c			;0ae6
	push af			;0ae7
	pop bc			;0ae8
	ld c,00bh		;0ae9
	push iy		;0aeb
l0aedh:
	dec c			;0aed
	ld a,c			;0aee
	push bc			;0aef
	call sub_3dd6h		;0af0
	pop bc			;0af3
	ld hl,0ff81h		;0af4
	push iy		;0af7
	pop de			;0af9
	add hl,de			;0afa
	push bc			;0afb
	ld bc,l0040h		;0afc
	call sub_0b28h		;0aff
	pop bc			;0b02
	add a,b			;0b03
	ld b,a			;0b04
	ld a,004h		;0b05
	and (iy+02eh)		;0b07
	add a,b			;0b0a
	ld b,a			;0b0b
	ld a,(iy+01ch)		;0b0c
	add a,b			;0b0f
	ld b,a			;0b10
	ld a,c			;0b11
	and a			;0b12
	jr nz,l0aedh		;0b13
	pop iy		;0b15
	ld a,b			;0b17
	add a,099h		;0b18
	ret			;0b1a
sub_0b1bh:
	call 00aceh		;0b1b
	ld hl,0cf03h		;0b1e
	cp (hl)			;0b21
	ret			;0b22
l0b23h:
	call sub_0b1bh		;0b23
	ld (hl),a			;0b26
	ret			;0b27
sub_0b28h:
	xor a			;0b28
l0b29h:
	add a,(hl)			;0b29
	inc hl			;0b2a
	dec bc			;0b2b
	ld d,a			;0b2c
	ld a,b			;0b2d
	or c			;0b2e
	ld a,d			;0b2f
	jr nz,l0b29h		;0b30
	ret			;0b32
sub_0b33h:
	call sub_0b65h		;0b33
	ld ix,l5790h		;0b36
l0b3ah:
	push bc			;0b3a
	ld a,(de)			;0b3b
	cpl			;0b3c
	or c			;0b3d
	ld c,a			;0b3e
	and (ix+000h)		;0b3f
	ld b,a			;0b42
	ld a,c			;0b43
	cpl			;0b44
	and (hl)			;0b45
	or b			;0b46
	ld (hl),a			;0b47
	pop bc			;0b48
	inc ix		;0b49
	inc hl			;0b4b
	inc de			;0b4c
	djnz l0b3ah		;0b4d
	ld hl,0c325h		;0b4f
	ld de,l00aeh		;0b52
	ld b,00bh		;0b55
l0b57h:
	ld a,c			;0b57
	and a			;0b58
	ld a,000h		;0b59
	jr nz,l0b60h		;0b5b
	ld a,(hl)			;0b5d
	and 004h		;0b5e
l0b60h:
	ld (hl),a			;0b60
	add hl,de			;0b61
	djnz l0b57h		;0b62
	ret			;0b64
sub_0b65h:
	ld b,005h		;0b65
	ld de,l578bh		;0b67
	ld hl,0c271h		;0b6a
	ret			;0b6d
	jp 0f811h		;0b6e
	ld d,h			;0b71
	ld l,d			;0b72
	ld d,h			;0b73
	add hl,hl			;0b74
	ld c,l			;0b75
	cpl			;0b76
	ld d,b			;0b77
	add a,(hl)			;0b78
	add a,l			;0b79
	ret pe			;0b7a
	ld (hl),l			;0b7b
	ld b,e			;0b7c
	ld c,b			;0b7d
	nop			;0b7e
	add hl,bc			;0b7f
	ld l,0c6h		;0b80
	ld l,b			;0b82
	ld b,(hl)			;0b83
	adc a,b			;0b84
	ld (hl),l			;0b85
	inc h			;0b86
	ld e,d			;0b87
	add a,(hl)			;0b88
	add a,c			;0b89
	inc de			;0b8a
	or h			;0b8b
	jp (hl)			;0b8c
	add hl,de			;0b8d
	add hl,hl			;0b8e
	ld d,h			;0b8f
	call p,09bddh		;0b90
	jp 0a0aah		;0b93
	daa			;0b96
	ld b,b			;0b97
	ld (hl),d			;0b98
	adc a,l			;0b99
	and d			;0b9a
	add a,a			;0b9b
	rst 28h			;0b9c
	ret z			;0b9d
	or c			;0b9e
	ld a,c			;0b9f
	ret nc			;0ba0
	sbc a,c			;0ba1
	set 6,a		;0ba2
	ld h,l			;0ba4
	pop hl			;0ba5
	ld (hl),07bh		;0ba6
	call nz,09b1dh		;0ba8
	ld d,0ech		;0bab
	or b			;0bad
	ld b,(hl)			;0bae
	ld (hl),e			;0baf
	jr nz,$+4		;0bb0
	inc bc			;0bb2
sub_0bb3h:
	ld a,(0c042h)		;0bb3
	bit 2,a		;0bb6
	ret nz			;0bb8
	push bc			;0bb9
	push de			;0bba
	push hl			;0bbb
	ld de,l000dh		;0bbc
	add hl,de			;0bbf
	ex de,hl			;0bc0
	ld hl,0cfcfh		;0bc1
	ld a,(0bf14h)		;0bc4
	and a			;0bc7
	jr nz,l0bd0h		;0bc8
	inc a			;0bca
	ld (0bf14h),a		;0bcb
	jr l0c0eh		;0bce
l0bd0h:
	ld b,a			;0bd0
l0bd1h:
	call sub_3fd5h		;0bd1
	jr z,l0beeh		;0bd4
	push bc			;0bd6
	ld bc,l000dh		;0bd7
	add hl,bc			;0bda
	pop bc			;0bdb
	djnz l0bd1h		;0bdc
	ld hl,0bf14h		;0bde
	ld a,(hl)			;0be1
	ld b,a			;0be2
	inc a			;0be3
	cp 013h		;0be4
	jr c,l0beah		;0be6
	ld a,012h		;0be8
l0beah:
	ld (hl),a			;0bea
	ld a,b			;0beb
	jr l0bf5h		;0bec
l0beeh:
	ld a,(0bf14h)		;0bee
	sub b			;0bf1
	and a			;0bf2
	jr z,l0c0eh		;0bf3
l0bf5h:
	ld b,a			;0bf5
	push bc			;0bf6
	ld hl,0cfc8h		;0bf7
	ld de,l000dh		;0bfa
l0bfdh:
	add hl,de			;0bfd
	djnz l0bfdh		;0bfe
	push hl			;0c00
	add hl,de			;0c01
	ex de,hl			;0c02
	pop hl			;0c03
	pop bc			;0c04
l0c05h:
	push bc			;0c05
	ld bc,l000dh		;0c06
	lddr		;0c09
	pop bc			;0c0b
	djnz l0c05h		;0c0c
l0c0eh:
	pop hl			;0c0e
	push hl			;0c0f
	ld de,l0006h+1		;0c10
	push de			;0c13
	add hl,de			;0c14
	ld de,0cfc9h		;0c15
	pop bc			;0c18
	ldir		;0c19
	push de			;0c1b
	push hl			;0c1c
	ld bc,l0006h		;0c1d
	ld hl,0cf0ah		;0c20
	ldir		;0c23
	pop hl			;0c25
	pop de			;0c26
	ld bc,l0006h+1		;0c27
	dec hl			;0c2a
	bit 0,(hl)		;0c2b
	jr nz,l0c38h		;0c2d
	add hl,bc			;0c2f
	bit 7,(hl)		;0c30
	jr nz,l0c38h		;0c32
	ex de,hl			;0c34
	dec hl			;0c35
	set 0,(hl)		;0c36
l0c38h:
	pop hl			;0c38
	pop de			;0c39
l0c3ah:
	pop bc			;0c3a
	ret			;0c3b
sub_0c3ch:
	ld a,(0bf14h)		;0c3c
	and a			;0c3f
	ret z			;0c40
	ld b,a			;0c41
	ld a,001h		;0c42
	ld (0bf15h),a		;0c44
	ld de,l000dh		;0c47
	ld hl,0cfcfh		;0c4a
	call sub_0c51h		;0c4d
	ret			;0c50
sub_0c51h:
	push bc			;0c51
	push de			;0c52
	push hl			;0c53
	call sub_4281h		;0c54
	pop hl			;0c57
	push hl			;0c58
	bit 0,(hl)		;0c59
	jr nz,l0c62h		;0c5b
	ld a,02ah		;0c5d
	call l42feh		;0c5f
l0c62h:
	push hl			;0c62
	ld a,00bh		;0c63
	call sub_425ah		;0c65
	pop hl			;0c68
	ld de,l0003h+2		;0c69
	add hl,de			;0c6c
	call l09b0h		;0c6d
	call sub_42fch		;0c70
	pop hl			;0c73
	pop de			;0c74
	pop bc			;0c75
	add hl,de			;0c76
	djnz sub_0c51h		;0c77
	ret			;0c79
sub_0c7ah:
	xor a			;0c7a
	ld (0bf14h),a		;0c7b
	ret			;0c7e
l0c7fh:
	push de			;0c7f
	push af			;0c80
	push de			;0c81
	ex de,hl			;0c82
	ld e,(hl)			;0c83
	inc hl			;0c84
	ld d,(hl)			;0c85
	ex de,hl			;0c86
	pop de			;0c87
	ld (hl),a			;0c88
	inc hl			;0c89
	push hl			;0c8a
	ld hl,l0003h+1		;0c8b
	add hl,de			;0c8e
	push hl			;0c8f
	ld c,(hl)			;0c90
	inc hl			;0c91
	ld b,(hl)			;0c92
	pop hl			;0c93
	and a			;0c94
	pop hl			;0c95
	push hl			;0c96
	sbc hl,bc		;0c97
	pop hl			;0c99
	jp nz,l0ca8h		;0c9a
	ld hl,l0006h		;0c9d
	add hl,de			;0ca0
	push hl			;0ca1
	ld c,(hl)			;0ca2
	inc hl			;0ca3
	ld b,(hl)			;0ca4
	pop hl			;0ca5
	push bc			;0ca6
	pop hl			;0ca7
l0ca8h:
	push hl			;0ca8
	push de			;0ca9
	inc de			;0caa
	inc de			;0cab
	call sub_0dd7h		;0cac
	pop de			;0caf
	and a			;0cb0
	sbc hl,bc		;0cb1
	pop hl			;0cb3
	jr nz,l0cb9h		;0cb4
	scf			;0cb6
	jr l0cbeh		;0cb7
l0cb9h:
	ex de,hl			;0cb9
	ld (hl),e			;0cba
	inc hl			;0cbb
	ld (hl),d			;0cbc
	and a			;0cbd
l0cbeh:
	pop de			;0cbe
	ld a,d			;0cbf
	pop de			;0cc0
	ret			;0cc1
l0cc2h:
	push de			;0cc2
	ex de,hl			;0cc3
	inc hl			;0cc4
	inc hl			;0cc5
	ld c,(hl)			;0cc6
	inc hl			;0cc7
	ld b,(hl)			;0cc8
	ex de,hl			;0cc9
	pop de			;0cca
	push bc			;0ccb
	pop hl			;0ccc
	ld a,(hl)			;0ccd
	push af			;0cce
	inc hl			;0ccf
	push hl			;0cd0
	ld hl,l0003h+1		;0cd1
	add hl,de			;0cd4
	push hl			;0cd5
	ld c,(hl)			;0cd6
	inc hl			;0cd7
	ld b,(hl)			;0cd8
	pop hl			;0cd9
	and a			;0cda
	pop hl			;0cdb
	push hl			;0cdc
	sbc hl,bc		;0cdd
	pop hl			;0cdf
	jp nz,l0ceeh		;0ce0
	ld hl,l0006h		;0ce3
	add hl,de			;0ce6
	push hl			;0ce7
	ld c,(hl)			;0ce8
	inc hl			;0ce9
	ld b,(hl)			;0cea
	pop hl			;0ceb
	push bc			;0cec
	pop hl			;0ced
l0ceeh:
	push hl			;0cee
	pop bc			;0cef
	push de			;0cf0
	ex de,hl			;0cf1
	inc hl			;0cf2
	inc hl			;0cf3
	ld (hl),c			;0cf4
	inc hl			;0cf5
	ld (hl),b			;0cf6
	ex de,hl			;0cf7
	pop de			;0cf8
	pop af			;0cf9
	ret			;0cfa
sub_0cfbh:
	jp sub_0dd7h		;0cfb
sub_0cfeh:
	push de			;0cfe
	inc de			;0cff
	inc de			;0d00
	call sub_0dd7h		;0d01
	pop de			;0d04
	ret			;0d05
	push de			;0d06
	inc de			;0d07
	inc de			;0d08
	call sub_0dddh		;0d09
	pop de			;0d0c
	ret			;0d0d
	ld hl,l0003h+1		;0d0e
	jr l0d16h		;0d11
	ld hl,l0006h		;0d13
l0d16h:
	add hl,de			;0d16
	jp l0dcbh		;0d17
sub_0d1ah:
	push hl			;0d1a
	ld hl,l0003h+1		;0d1b
	add hl,de			;0d1e
	push hl			;0d1f
	ld c,(hl)			;0d20
l0d21h:
	inc hl			;0d21
	ld b,(hl)			;0d22
	pop hl			;0d23
	and a			;0d24
	pop hl			;0d25
	push hl			;0d26
	sbc hl,bc		;0d27
	pop hl			;0d29
	jp nz,l0d38h		;0d2a
	ld hl,l0006h		;0d2d
	add hl,de			;0d30
	push hl			;0d31
	ld c,(hl)			;0d32
	inc hl			;0d33
	ld b,(hl)			;0d34
	pop hl			;0d35
	push bc			;0d36
	pop hl			;0d37
l0d38h:
	ret			;0d38
sub_0d39h:
	call sub_0cfbh		;0d39
	ld hl,l0006h+2		;0d3c
	add hl,de			;0d3f
	jp l0dd1h		;0d40
l0d43h:
	push bc			;0d43
	push hl			;0d44
	call sub_0dbfh		;0d45
	call sub_0cfeh		;0d48
	and a			;0d4b
	sbc hl,bc		;0d4c
	pop hl			;0d4e
	pop bc			;0d4f
	jr z,l0d54h		;0d50
	scf			;0d52
	ret			;0d53
l0d54h:
	and a			;0d54
	ret			;0d55
sub_0d56h:
	ld hl,l0006h+2		;0d56
	add hl,de			;0d59
	call l0dcbh		;0d5a
	jp sub_0dddh		;0d5d
l0d60h:
	push bc			;0d60
	push hl			;0d61
	call sub_0d39h		;0d62
	pop hl			;0d65
	pop bc			;0d66
l0d67h:
	push bc			;0d67
	push hl			;0d68
	ld a,(hl)			;0d69
	push de			;0d6a
	push af			;0d6b
	push de			;0d6c
	ex de,hl			;0d6d
	ld e,(hl)			;0d6e
	inc hl			;0d6f
	ld d,(hl)			;0d70
	ex de,hl			;0d71
	pop de			;0d72
	ld (hl),a			;0d73
	inc hl			;0d74
	push hl			;0d75
	ld hl,l0003h+1		;0d76
	add hl,de			;0d79
	push hl			;0d7a
	ld c,(hl)			;0d7b
	inc hl			;0d7c
	ld b,(hl)			;0d7d
	pop hl			;0d7e
	and a			;0d7f
	pop hl			;0d80
	push hl			;0d81
	sbc hl,bc		;0d82
	pop hl			;0d84
	jp nz,l0d93h		;0d85
	ld hl,l0006h		;0d88
	add hl,de			;0d8b
	push hl			;0d8c
	ld c,(hl)			;0d8d
	inc hl			;0d8e
	ld b,(hl)			;0d8f
	pop hl			;0d90
	push bc			;0d91
	pop hl			;0d92
l0d93h:
	push hl			;0d93
	push de			;0d94
	inc de			;0d95
	inc de			;0d96
	call sub_0dd7h		;0d97
	pop de			;0d9a
	and a			;0d9b
	sbc hl,bc		;0d9c
	pop hl			;0d9e
	jr nz,l0da4h		;0d9f
	scf			;0da1
	jr l0da9h		;0da2
l0da4h:
	ex de,hl			;0da4
	ld (hl),e			;0da5
	inc hl			;0da6
	ld (hl),d			;0da7
	and a			;0da8
l0da9h:
	pop de			;0da9
	ld a,d			;0daa
	pop de			;0dab
	pop hl			;0dac
	pop bc			;0dad
	ret c			;0dae
	inc hl			;0daf
	djnz l0d67h		;0db0
	ret			;0db2
sub_0db3h:
	ex de,hl			;0db3
	call sub_0db9h		;0db4
	ex de,hl			;0db7
	ret			;0db8
sub_0db9h:
	push hl			;0db9
	ld (hl),e			;0dba
	inc hl			;0dbb
	ld (hl),d			;0dbc
	pop hl			;0dbd
	ret			;0dbe
sub_0dbfh:
	ex de,hl			;0dbf
	call sub_0dc5h		;0dc0
	ex de,hl			;0dc3
	ret			;0dc4
sub_0dc5h:
	push hl			;0dc5
	ld e,(hl)			;0dc6
	inc hl			;0dc7
	ld d,(hl)			;0dc8
	pop hl			;0dc9
	ret			;0dca
l0dcbh:
	push hl			;0dcb
	ld c,(hl)			;0dcc
	inc hl			;0dcd
	ld b,(hl)			;0dce
	pop hl			;0dcf
	ret			;0dd0
l0dd1h:
	push hl			;0dd1
	ld (hl),c			;0dd2
	inc hl			;0dd3
	ld (hl),b			;0dd4
	pop hl			;0dd5
	ret			;0dd6
sub_0dd7h:
	ex de,hl			;0dd7
	call l0dcbh		;0dd8
	ex de,hl			;0ddb
	ret			;0ddc
sub_0dddh:
	ex de,hl			;0ddd
	call l0dd1h		;0dde
	ex de,hl			;0de1
	ret			;0de2
sub_0de3h:
	ld hl,l0006h+2		;0de3
	add hl,de			;0de6
	push de			;0de7
	call sub_0dc5h		;0de8
	pop hl			;0deb
	ex de,hl			;0dec
	ret			;0ded
sub_0deeh:
	push de			;0dee
	push hl			;0def
	ld hl,l0006h+2		;0df0
	add hl,de			;0df3
	pop de			;0df4
	call sub_0db9h		;0df5
	pop de			;0df8
	ret			;0df9
sub_0dfah:
	ld a,(0cbc7h)		;0dfa
	call sub_3dd6h		;0dfd
	ld a,(0c273h)		;0e00
	and 004h		;0e03
	jr nz,l0e28h		;0e05
	call sub_1311h		;0e07
	jr nc,l0e1eh		;0e0a
	ld a,(0c273h)		;0e0c
	and 080h		;0e0f
	jr z,l0e1eh		;0e11
	push de			;0e13
	ld hl,0bfc7h		;0e14
	call l084eh		;0e17
	pop de			;0e1a
	jp l0efbh		;0e1b
l0e1eh:
	ld a,(0bfc7h)		;0e1e
	and a			;0e21
	ret nz			;0e22
	call sub_12c1h		;0e23
	jr l0e2eh		;0e26
l0e28h:
	call sub_1311h		;0e28
	jp c,sub_12c1h		;0e2b
l0e2eh:
	ld hl,0c274h		;0e2e
	bit 7,(hl)		;0e31
	push af			;0e33
	ld a,(0cefeh)		;0e34
	bit 7,a		;0e37
	jr nz,l0e3dh		;0e39
	res 7,(hl)		;0e3b
l0e3dh:
	pop af			;0e3d
	jp nz,l107dh		;0e3e
	ld hl,0bf16h		;0e41
	bit 2,(hl)		;0e44
	res 2,(hl)		;0e46
	jr z,l0e51h		;0e48
	ld a,00dh		;0e4a
	ld b,000h		;0e4c
	jp l10bfh		;0e4e
l0e51h:
	ld de,0bf66h		;0e51
	call l0d43h		;0e54
	ret c			;0e57
	ld de,0bf70h		;0e58
	call l0d43h		;0e5b
	jr nc,l0e68h		;0e5e
	ld a,(0c273h)		;0e60
	and 080h		;0e63
	jp z,l0efbh		;0e65
l0e68h:
	ld de,0bf04h		;0e68
	call l0d43h		;0e6b
	jr nc,l0e9ch		;0e6e
	ld a,(0cbc7h)		;0e70
	push af			;0e73
	ld hl,l0e97h		;0e74
	push hl			;0e77
	ld a,(0bf18h)		;0e78
	bit 2,a		;0e7b
	call z,sub_12e9h		;0e7d
	ld a,00ah		;0e80
	call sub_3dd6h		;0e82
	ld de,0bf04h		;0e85
	call l0cc2h		;0e88
	or a			;0e8b
	jp z,l107dh		;0e8c
	ld b,000h		;0e8f
	jp l10bfh		;0e91
	call l107dh		;0e94
l0e97h:
	pop af			;0e97
	ld (0cbc7h),a		;0e98
	ret			;0e9b
l0e9ch:
	ld a,(0cefeh)		;0e9c
	bit 7,a		;0e9f
	jr z,l0ebfh		;0ea1
	push iy		;0ea3
	ld a,00ah		;0ea5
	call sub_3dd6h		;0ea7
	ld a,007h		;0eaa
	add a,(iy-03fh)		;0eac
	and 007h		;0eaf
	ld d,(iy+009h)		;0eb1
	cp d			;0eb4
	pop iy		;0eb5
	ret z			;0eb7
	ld hl,0cefeh		;0eb8
	ld a,07ch		;0ebb
	and (hl)			;0ebd
	ret nz			;0ebe
l0ebfh:
	ld a,(0bf18h)		;0ebf
	bit 2,a		;0ec2
	call nz,sub_12e9h		;0ec4
	ld de,0bf2ah		;0ec7
	call l0d43h		;0eca
	jr c,l0efbh		;0ecd
	ld a,(0c273h)		;0ecf
	bit 2,a		;0ed2
	jr z,l0ef6h		;0ed4
	ld b,a			;0ed6
	ld a,(0bfabh)		;0ed7
	and a			;0eda
	jr nz,l0ef6h		;0edb
	ld a,(0ccd5h)		;0edd
	and a			;0ee0
	jr z,l0ef6h		;0ee1
	bit 6,b		;0ee3
	jp nz,l110ch		;0ee5
	bit 5,b		;0ee8
	jr z,l0ef6h		;0eea
	ld a,(0c025h)		;0eec
	push af			;0eef
	ld h,a			;0ef0
	ld b,000h		;0ef1
	jp l1065h		;0ef3
l0ef6h:
	ei			;0ef6
	call sub_55c8h		;0ef7
	ret			;0efa
l0efbh:
	call l0cc2h		;0efb
	di			;0efe
	push af			;0eff
	call sub_0de3h		;0f00
	inc hl			;0f03
	call sub_0d1ah		;0f04
	ei			;0f07
	call sub_0deeh		;0f08
	pop af			;0f0b
	ld c,a			;0f0c
	ld a,(0c273h)		;0f0d
	and 044h		;0f10
	cp 044h		;0f12
	ld a,c			;0f14
	ld b,000h		;0f15
	jp z,l10bfh		;0f17
	ld hl,0c274h		;0f1a
	bit 6,(hl)		;0f1d
	res 6,(hl)		;0f1f
	jp nz,l10bfh		;0f21
	ld hl,0bf16h		;0f24
	bit 7,(hl)		;0f27
	res 7,(hl)		;0f29
	jr z,l0f71h		;0f2b
	ld hl,0c046h		;0f2d
	bit 5,(hl)		;0f30
	call nz,sub_250bh		;0f32
	sub 041h		;0f35
	push af			;0f37
	ld hl,l3683h		;0f38
	ld de,0c019h		;0f3b
	call sub_3fd5h		;0f3e
	ld l,00bh		;0f41
	jr nz,l0f46h		;0f43
	dec l			;0f45
l0f46h:
	pop af			;0f46
	cp l			;0f47
	push af			;0f48
	jr c,l0f54h		;0f49
	ld hl,l58c7h		;0f4b
	call l43c0h		;0f4e
	jp l0ff0h		;0f51
l0f54h:
	ld a,(0c273h)		;0f54
	bit 2,a		;0f57
	call z,sub_12c1h		;0f59
	ld a,(0bf18h)		;0f5c
	bit 2,a		;0f5f
	call nz,sub_12e9h		;0f61
	call l107dh		;0f64
	ld hl,0cbc7h		;0f67
	ld a,(hl)			;0f6a
	pop af			;0f6b
	push af			;0f6c
	ld (hl),a			;0f6d
	jp l0ff0h		;0f6e
l0f71h:
	push af			;0f71
	ld h,a			;0f72
	ld a,(0c047h)		;0f73
	and 080h		;0f76
	jr z,l0f80h		;0f78
	ld a,00ah		;0f7a
	cp h			;0f7c
	jp z,l0ff0h		;0f7d
l0f80h:
	ld a,(0c026h)		;0f80
	and a			;0f83
	jr z,l0fcdh		;0f84
	cp h			;0f86
	jr nz,l0fcdh		;0f87
	ld a,(0c273h)		;0f89
	and 004h		;0f8c
	jr nz,l0fa9h		;0f8e
	ld hl,l0003h+1		;0f90
	ld a,(0cefeh)		;0f93
	bit 7,a		;0f96
	jr nz,l0fa4h		;0f98
	ld a,(0bf19h)		;0f9a
	and 030h		;0f9d
	jr z,l0fa4h		;0f9f
	ld hl,l0006h+2		;0fa1
l0fa4h:
	ld (0ccd5h),hl		;0fa4
	jr l0ffeh		;0fa7
l0fa9h:
	push bc			;0fa9
	call sub_44cah		;0faa
	ld bc,(0ccd5h)		;0fad
	ld hl,0ccd7h		;0fb1
	add hl,bc			;0fb4
	dec hl			;0fb5
l0fb6h:
	ld a,b			;0fb6
	or c			;0fb7
	jr z,l0fc3h		;0fb8
	ld a,(hl)			;0fba
	cp 00dh		;0fbb
	jr z,l0fc3h		;0fbd
	dec hl			;0fbf
	dec bc			;0fc0
	jr l0fb6h		;0fc1
l0fc3h:
	ld (0ccd5h),bc		;0fc3
	call l11f5h		;0fc7
	pop bc			;0fca
	jr l0ff0h		;0fcb
l0fcdh:
	ld a,(0c029h)		;0fcd
	cp h			;0fd0
	jr nz,l0ff5h		;0fd1
	call sub_11fdh		;0fd3
	jr z,l0ff0h		;0fd6
	ld hl,(0ccd5h)		;0fd8
	dec hl			;0fdb
	ld (0ccd5h),hl		;0fdc
	ld a,(0c043h)		;0fdf
	bit 1,a		;0fe2
	call nz,sub_44d2h		;0fe4
	ld a,(0c029h)		;0fe7
	call sub_11fdh		;0fea
	call z,l11f5h		;0fed
l0ff0h:
	ld b,004h		;0ff0
	jp l10a0h		;0ff2
l0ff5h:
	ld a,(0c02bh)		;0ff5
	and a			;0ff8
	jr z,l1018h		;0ff9
	cp h			;0ffb
	jr nz,l1018h		;0ffc
l0ffeh:
	push bc			;0ffe
	call sub_44cah		;0fff
	ld a,(0ccd5h)		;1002
	ld b,a			;1005
	and a			;1006
	jr z,l1012h		;1007
	ld hl,0ccd7h		;1009
	ld de,0bf34h		;100c
	call sub_42edh		;100f
l1012h:
	pop bc			;1012
	call l11f5h		;1013
	jr l0ff0h		;1016
l1018h:
	ld a,(0c02ah)		;1018
	and a			;101b
	jr z,l1028h		;101c
	cp h			;101e
	jr nz,l1028h		;101f
l1021h:
	ld hl,0c274h		;1021
	set 6,(hl)		;1024
	jr l0ff0h		;1026
l1028h:
	ld a,(0c023h)		;1028
	and a			;102b
	jr z,l1038h		;102c
	cp h			;102e
	jr nz,l1038h		;102f
	ld hl,0bf16h		;1031
	set 7,(hl)		;1034
	jr l0ff0h		;1036
l1038h:
	ld a,(0c027h)		;1038
	and a			;103b
	jr z,l1065h		;103c
	cp h			;103e
	jr nz,l1065h		;103f
	ld a,(0c273h)		;1041
	bit 2,a		;1044
	jr l105eh		;1046
	ld hl,l0000h		;1048
	ld (0ccd5h),hl		;104b
	push bc			;104e
	call sub_44cah		;104f
	pop bc			;1052
	jr l105eh		;1053
	ld hl,0bf16h		;1055
	di			;1058
	ld a,008h		;1059
	xor (hl)			;105b
	ei			;105c
	ld (hl),a			;105d
l105eh:
	call l11f5h		;105e
	set 2,b		;1061
	jr l10a0h		;1063
l1065h:
	ld a,(0c025h)		;1065
	cp h			;1068
	ld a,h			;1069
	jr nz,l1088h		;106a
	ld hl,0c273h		;106c
	bit 2,(hl)		;106f
	jr z,l1088h		;1071
	call l11f5h		;1073
	set 1,b		;1076
	bit 3,(hl)		;1078
	jr nz,l1086h		;107a
	pop af			;107c
l107dh:
	ld a,(0ccd5h)		;107d
	and a			;1080
	jp nz,l110ch		;1081
	ei			;1084
	ret			;1085
l1086h:
	jr l10a0h		;1086
l1088h:
	ld hl,0c273h		;1088
	bit 2,(hl)		;108b
	jr nz,l10a0h		;108d
	cp 00dh		;108f
	jr nz,l10a0h		;1091
	call l11f5h		;1093
	call l19dbh+1		;1096
	call sub_0585h		;1099
	ld b,004h		;109c
	jr l10a0h		;109e
l10a0h:
	pop af			;10a0
	bit 2,b		;10a1
	res 2,b		;10a3
	jr nz,l1104h		;10a5
	ld e,a			;10a7
	cp 00dh		;10a8
	jr nz,l10bfh		;10aa
	ld hl,0c043h		;10ac
	bit 4,(hl)		;10af
	jr z,l10bfh		;10b1
	ld hl,0bf16h		;10b3
	set 2,(hl)		;10b6
	push bc			;10b8
	call sub_0dfah		;10b9
	ld a,00ah		;10bc
	pop bc			;10be
l10bfh:
	ld de,(0ccd5h)		;10bf
	ld hl,0ccd7h		;10c3
	add hl,de			;10c6
	ld (hl),a			;10c7
	inc de			;10c8
	ld (0ccd5h),de		;10c9
	ld hl,0bfabh		;10cd
	ld a,(hl)			;10d0
	and a			;10d1
	jr z,l10d8h		;10d2
	ld a,(0bfd8h)		;10d4
	and a			;10d7
l10d8h:
	call z,l084eh		;10d8
	ld a,(0c273h)		;10db
	and 004h		;10de
	jr z,l10ech		;10e0
	ld a,(0c01ch)		;10e2
	cp e			;10e5
	jr nz,l1104h		;10e6
	set 1,b		;10e8
	jr l1104h		;10ea
l10ech:
	ld a,(0cefeh)		;10ec
	bit 7,a		;10ef
	jr nz,l10fch		;10f1
	ld a,(0bf19h)		;10f3
	and 030h		;10f6
	ld a,0f8h		;10f8
	jr nz,l10feh		;10fa
l10fch:
	ld a,081h		;10fc
l10feh:
	cp e			;10fe
	jr nz,l1104h		;10ff
	jp l19dbh+1		;1101
l1104h:
	bit 1,b		;1104
	res 1,b		;1106
	ret z			;1108
	call l11f5h		;1109
l110ch:
	ld hl,0c274h		;110c
	bit 7,(hl)		;110f
	jr z,l1122h		;1111
l1113h:
	ld a,(0cefeh)		;1113
	bit 7,a		;1116
	jr z,l111ch		;1118
	res 7,(hl)		;111a
l111ch:
	ld a,(0cbc8h)		;111c
	call sub_3dd6h		;111f
l1122h:
	ld a,007h		;1122
	add a,(iy-03fh)		;1124
	and 007h		;1127
	ld d,(iy+009h)		;1129
	cp d			;112c
	jp z,l11c6h		;112d
	ld e,000h		;1130
	push de			;1132
	ld a,001h		;1133
	call l1e37h		;1135
	ld d,a			;1138
	ld e,000h		;1139
	pop bc			;113b
	jp c,l11c6h		;113c
	push de			;113f
	ld hl,0ffc6h		;1140
	push iy		;1143
	pop de			;1145
	add hl,de			;1146
	pop de			;1147
	ld c,b			;1148
	sla c		;1149
	sla c		;114b
	sla c		;114d
	ld b,000h		;114f
	add hl,bc			;1151
	push hl			;1152
	call sub_0db9h		;1153
	ld a,(0bf17h)		;1156
	and 040h		;1159
	jr z,l1166h		;115b
	ld hl,0ca0dh		;115d
	ld bc,(0cb84h)		;1160
	jr l116dh		;1164
l1166h:
	ld hl,0ccd7h		;1166
	ld bc,(0ccd5h)		;1169
l116dh:
	push bc			;116d
l116eh:
	ld a,(hl)			;116e
	push bc			;116f
	push hl			;1170
	call l1e95h		;1171
	pop hl			;1174
	pop bc			;1175
	jr c,l11b3h		;1176
	dec bc			;1178
	inc hl			;1179
	ld a,b			;117a
	or c			;117b
	jr nz,l116eh		;117c
	pop bc			;117e
	pop hl			;117f
	inc hl			;1180
	inc hl			;1181
	call sub_0db9h		;1182
	inc hl			;1185
	inc hl			;1186
	call l0dd1h		;1187
	ld a,(iy+009h)		;118a
	inc a			;118d
	and 007h		;118e
	ld (iy+009h),a		;1190
	ld hl,l0000h		;1193
	ld a,(0bf17h)		;1196
	and 040h		;1199
	jr nz,l11b1h		;119b
	bit 1,(iy+02eh)		;119d
	jr z,l11aeh		;11a1
	ld a,(0c045h)		;11a3
	bit 3,a		;11a6
	jr z,l11aeh		;11a8
	bit 4,a		;11aa
	jr z,l11b1h		;11ac
l11aeh:
	ld (0ccd5h),hl		;11ae
l11b1h:
	and l			;11b1
	ret			;11b2
l11b3h:
	pop bc			;11b3
	pop hl			;11b4
	push de			;11b5
	call sub_0dc5h		;11b6
	pop hl			;11b9
	call l1ec9h		;11ba
	call sub_1ee7h		;11bd
	ld (ix+003h),000h		;11c0
	jr l11c6h		;11c4
l11c6h:
	ld a,(0bf17h)		;11c6
	and 040h		;11c9
	jr nz,l11e7h		;11cb
	ld a,(0c045h)		;11cd
	bit 3,a		;11d0
	jr z,l11e9h		;11d2
	bit 1,(iy+02eh)		;11d4
	jr nz,l11e7h		;11d8
	ld a,(0c271h)		;11da
	and 040h		;11dd
	jr nz,l11e7h		;11df
	bit 7,(iy+02eh)		;11e1
sub_11e5h:
	jr z,l11e9h		;11e5
l11e7h:
	scf			;11e7
	ret			;11e8
l11e9h:
	ld hl,0c274h		;11e9
	set 7,(hl)		;11ec
	ld a,(iy+02dh)		;11ee
	ld (0cbc8h),a		;11f1
	ret			;11f4
l11f5h:
	push hl			;11f5
	ld hl,0c275h		;11f6
	res 6,(hl)		;11f9
	pop hl			;11fb
	ret			;11fc
sub_11fdh:
	ld b,a			;11fd
	ld a,(0c029h)		;11fe
	cp b			;1201
	ld a,b			;1202
	jr nz,l122ch		;1203
	ld a,(0c273h)		;1205
	and 080h		;1208
	ld a,(0ccd5h)		;120a
	jr z,l1229h		;120d
	sub 004h		;120f
	push bc			;1211
	ld b,a			;1212
	ld a,(0cefeh)		;1213
	bit 7,a		;1216
	jr nz,l1225h		;1218
	ld a,(0bf19h)		;121a
	and 030h		;121d
	jr z,l1225h		;121f
	ld a,b			;1221
	sub 004h		;1222
	ld b,a			;1224
l1225h:
	ld a,b			;1225
	pop bc			;1226
	jr l1229h		;1227
l1229h:
	and a			;1229
	jr z,l122eh		;122a
l122ch:
	or 0ffh		;122c
l122eh:
	ld a,b			;122e
	ret			;122f
sub_1230h:
	ld h,a			;1230
	ld a,(0c028h)		;1231
	and a			;1234
	jr nz,l123ah		;1235
	ld a,h			;1237
	jr l123eh		;1238
l123ah:
	cp h			;123a
	ld a,h			;123b
	jr z,l124eh		;123c
l123eh:
	push af			;123e
	ld hl,0c272h		;123f
	call sub_129fh		;1242
	ld hl,0bfach		;1245
	call l084eh		;1248
	pop af			;124b
	scf			;124c
	ret			;124d
l124eh:
	ld a,(0c273h)		;124e
	bit 7,a		;1251
	jr nz,l127fh		;1253
	bit 6,a		;1255
	jr z,l1293h		;1257
	ld hl,0c272h		;1259
	ld a,00ch		;125c
	and (hl)			;125e
	jr nz,l1269h		;125f
	ld a,(0bfach)		;1261
	and a			;1264
	jr nz,l126dh		;1265
	jr l1275h		;1267
l1269h:
	cp 00ch		;1269
	jr nz,l1275h		;126b
l126dh:
	call sub_129fh		;126d
	scf			;1270
	ld a,(0c028h)		;1271
	ret			;1274
l1275h:
	ld a,004h		;1275
	add a,(hl)			;1277
	ld (hl),a			;1278
	ld hl,0bfach		;1279
	call l084eh		;127c
l127fh:
	and a			;127f
	ret			;1280
sub_1281h:
	ld hl,0c272h		;1281
	ld a,(hl)			;1284
	and 00ch		;1285
	ld b,a			;1287
	ret z			;1288
	ld a,(0bfach)		;1289
	and a			;128c
	ret nz			;128d
	ld a,b			;128e
	cp 00ch		;128f
	jr nz,sub_129fh		;1291
l1293h:
	push iy		;1293
	call sub_1ae7h		;1295
	pop iy		;1298
	call l11f5h		;129a
	jr l12b9h		;129d
sub_129fh:
	ld b,(hl)			;129f
	ld a,00ch		;12a0
	and b			;12a2
	ret z			;12a3
	ld a,0fch		;12a4
	add a,b			;12a6
	ld (hl),a			;12a7
	push hl			;12a8
	call sub_12afh		;12a9
	pop hl			;12ac
	jr sub_129fh		;12ad
sub_12afh:
	ld de,0bf2ah		;12af
	ld a,(0c028h)		;12b2
	call l0c7fh		;12b5
	ret			;12b8
l12b9h:
	ld hl,0c272h		;12b9
	ld a,0f3h		;12bc
	and (hl)			;12be
	ld (hl),a			;12bf
	ret			;12c0
sub_12c1h:
	push ix		;12c1
	ld hl,0ccd5h		;12c3
	ld ix,0cdd7h		;12c6
	ld bc,l0101h+1		;12ca
l12cdh:
	ld a,(ix+000h)		;12cd
	ld e,(hl)			;12d0
	ld (ix+000h),e		;12d1
	ld (hl),a			;12d4
	inc hl			;12d5
	inc ix		;12d6
	dec bc			;12d8
	ld a,b			;12d9
	or c			;12da
	jr nz,l12cdh		;12db
	di			;12dd
	ld hl,0c273h		;12de
	ld a,004h		;12e1
	xor (hl)			;12e3
	ei			;12e4
	ld (hl),a			;12e5
	pop ix		;12e6
	ret			;12e8
sub_12e9h:
	push ix		;12e9
	ld hl,0ccd5h		;12eb
	ld ix,0cbd3h		;12ee
	ld bc,l0101h+1		;12f2
l12f5h:
	ld a,(ix+000h)		;12f5
	ld e,(hl)			;12f8
	ld (ix+000h),e		;12f9
	ld (hl),a			;12fc
	inc hl			;12fd
	inc ix		;12fe
	dec bc			;1300
	ld a,b			;1301
	or c			;1302
	jr nz,l12f5h		;1303
	di			;1305
	ld hl,0bf18h		;1306
	ld a,004h		;1309
	xor (hl)			;130b
l130ch:
	ei			;130c
	ld (hl),a			;130d
	pop ix		;130e
	ret			;1310
sub_1311h:
	ld de,0bf70h		;1311
	jp l0d43h		;1314
	inc (ix+032h)		;1317
	ld d,a			;131a
	ld e,b			;131b
	adc a,020h		;131c
	jr nz,l1340h		;131e
	jr nz,l1325h		;1320
	ld a,(bc)			;1322
	ld l,c			;1323
	nop			;1324
l1325h:
	nop			;1325
	cp b			;1326
	ld b,d			;1327
	ld c,c			;1328
	ld d,h			;1329
	ld b,e			;132a
	ld c,a			;132b
	ld c,(hl)			;132c
	ld d,(hl)			;132d
	nop			;132e
	inc b			;132f
	ld b,l			;1330
	ret nz			;1331
	dec b			;1332
l1333h:
	pop bc			;1333
	ld e,b			;1334
	ld (04c35h),a		;1335
	ld (l3256h),a		;1338
	nop			;133b
	ld bc,0c042h		;133c
	inc bc			;133f
l1340h:
	ld b,c			;1340
	jp nz,l5541h		;1341
	ld b,h			;1344
	jr nz,$+34		;1345
	jr nz,l134eh		;1347
	rst 38h			;1349
	jr c,l130ch		;134a
	ld b,041h		;134c
l134eh:
	out (059h),a		;134e
	ld d,d			;1350
	ld e,b			;1351
	ld c,a			;1352
	ld d,(hl)			;1353
	ld d,d			;1354
	dec b			;1355
	nop			;1356
	ld sp,hl			;1357
	adc a,007h		;1358
	ld b,c			;135a
	push de			;135b
	ld d,h			;135c
	ld c,a			;135d
	ld c,h			;135e
	ld b,(hl)			;135f
	jr nz,l1382h		;1360
	nop			;1362
	ld (bc),a			;1363
	ld (hl),h			;1364
	jp nz,04105h		;1365
	rst 10h			;1368
	ld c,h			;1369
	ld b,l			;136a
	ld c,(hl)			;136b
	jr nz,$+34		;136c
	jr nz,$-119		;136e
	ld a,b			;1370
	jr nz,l1333h		;1371
	dec b			;1373
	ld b,c			;1374
	ld e,b			;1375
	call nz,04c45h		;1376
	ld b,c			;1379
	ld e,c			;137a
	jr nz,l1384h		;137b
	ld a,b			;137d
	ld (l06c0h),hl		;137e
	ld b,c			;1381
l1382h:
	ld e,b			;1382
	ret z			;1383
l1384h:
	ld b,c			;1384
	ld c,(hl)			;1385
	ld b,a			;1386
	jr nz,l13a9h		;1387
	rlca			;1389
	jp m,0bfd7h		;138a
	ld b,0c2h		;138d
	ld b,l			;138f
	ld b,c			;1390
	ld b,e			;1391
	ld c,a			;1392
	ld c,(hl)			;1393
	jr nz,l13b6h		;1394
	inc b			;1396
	jp m,0c001h		;1397
	ld bc,0c242h		;139a
	ld b,(hl)			;139d
	ld b,c			;139e
	ld c,c			;139f
	ld c,h			;13a0
	ld b,l			;13a1
	ld b,h			;13a2
	dec b			;13a3
	nop			;13a4
	ex (sp),hl			;13a5
	adc a,007h		;13a6
	ld b,d			;13a8
l13a9h:
	bit 1,a		;13a9
	ld c,(hl)			;13ab
	ld b,h			;13ac
	ld b,l			;13ad
	ld c,h			;13ae
	jr nz,l13b1h		;13af
l13b1h:
	ex af,af'			;13b1
	ld b,e			;13b2
	ret nz			;13b3
	ld (bc),a			;13b4
	ld b,d			;13b5
l13b6h:
	call nc,sub_5845h		;13b6
	ld d,h			;13b9
	jr nz,l13dch		;13ba
	jr nz,l13c1h		;13bc
	ld a,b			;13be
	or 0c1h		;13bf
l13c1h:
	ld bc,0d542h		;13c1
	ld b,h			;13c4
	ld c,h			;13c5
	ld c,c			;13c6
	ld d,e			;13c7
	ld d,h			;13c8
	jr nz,l13cbh		;13c9
l13cbh:
	ld bc,0c043h		;13cb
	inc b			;13ce
l13cfh:
	jp l4e4fh		;13cf
	ld c,(hl)			;13d2
	ld b,l			;13d3
	ld b,e			;13d4
	ld d,h			;13d5
	jr nz,l142eh		;13d6
	ld a,(bc)			;13d8
	add a,c			;13d9
	rst 38h			;13da
	inc bc			;13db
l13dch:
	ld b,e			;13dc
	jp nz,04c45h		;13dd
	ld c,h			;13e0
	jr nz,$+34		;13e1
	jr nz,l13e5h		;13e3
l13e5h:
	ld bc,0c046h		;13e5
l13e8h:
	ld bc,l4f43h		;13e8
	ld c,(hl)			;13eb
	ret nc			;13ec
	ld b,l			;13ed
	ld d,d			;13ee
	ld c,l			;13ef
	jr nz,l1402h		;13f0
	inc b			;13f2
	ld l,000h		;13f3
	inc bc			;13f5
	ld b,e			;13f6
	ret z			;13f7
	ld b,l			;13f8
	ld b,e			;13f9
	ld c,e			;13fa
	jr nz,$+34		;13fb
	jr nz,$+9		;13fd
	jp m,0bfeah		;13ff
l1402h:
	ld b,043h		;1402
	ld c,h			;1404
	bit 0,c		;1405
	ld b,h			;1407
	ld c,d			;1408
	jr nz,$+34		;1409
	rlca			;140b
	rrca			;140c
	ld (hl),0c0h		;140d
	ld b,043h		;140f
	call l5442h+2		;1411
	ld c,c			;1414
	ld c,l			;1415
	ld b,l			;1416
	jr nz,$+9		;1417
	jp m,0bfdah		;1419
	ld b,043h		;141c
	ld c,l			;141e
	out (047h),a		;141f
	jr nz,$+34		;1421
	jr nz,l1445h		;1423
	nop			;1425
	add a,b			;1426
	ld b,d			;1427
	ret nz			;1428
	ld bc,l4d43h		;1429
	ld d,e			;142c
	ld b,a			;142d
l142eh:
	call nz,sub_5349h		;142e
	ld b,e			;1431
	nop			;1432
	ld b,b			;1433
	ld b,a			;1434
	ret nz			;1435
	ld bc,0d043h		;1436
	ld b,c			;1439
	ld b,e			;143a
	ld d,h			;143b
	ld c,c			;143c
	ld c,l			;143d
	ld b,l			;143e
	nop			;143f
	jr nz,l14b5h		;1440
	jp nz,l4306h		;1442
l1445h:
	jp nc,l2020h		;1445
	jr nz,l146ah		;1448
	jr nz,$+34		;144a
	nop			;144c
	ex af,af'			;144d
	ld (hl),e			;144e
	jp nz,04303h		;144f
	out (054h),a		;1452
	ld b,c			;1454
	ld d,h			;1455
	ld d,l			;1456
	ld d,e			;1457
	jr nz,l13e8h		;1458
	nop			;145a
	nop			;145b
	nop			;145c
	nop			;145d
	ld b,e			;145e
	call nc,sub_5845h		;145f
	ld d,h			;1462
	jr nz,l1485h		;1463
	jr nz,l146ah		;1465
	ld a,b			;1467
	set 0,b		;1468
l146ah:
	ld bc,04143h		;146a
	adc a,04ch		;146d
	ld c,c			;146f
	ld c,(hl)			;1470
	ld b,l			;1471
	jr nz,$+17		;1472
	ld a,a			;1474
	ld h,0c0h		;1475
	ld (bc),a			;1477
	ld b,e			;1478
	ld c,a			;1479
	call sub_414dh		;147a
	ld c,(hl)			;147d
	ld b,h			;147e
	jr nz,l1490h		;147f
	ld a,a			;1481
	jr z,$-62		;1482
	ld (bc),a			;1484
l1485h:
	ld b,e			;1485
	ld b,c			;1486
	ld c,(hl)			;1487
	ret nc			;1488
	ld b,c			;1489
	ld b,e			;148a
	jr nz,l14adh		;148b
	rrca			;148d
	ld a,a			;148e
	daa			;148f
l1490h:
	ret nz			;1490
	ld (bc),a			;1491
	ld b,e			;1492
	ld c,a			;1493
	ld c,(hl)			;1494
	rst 8			;1495
	ld c,e			;1496
	jr nz,l14b9h		;1497
	jr nz,l149bh		;1499
l149bh:
	ld bc,0c273h		;149b
	inc bc			;149e
	ld b,e			;149f
	ld c,a			;14a0
	ld c,(hl)			;14a1
	call sub_444fh		;14a2
	ld b,l			;14a5
	jr nz,l14a9h		;14a6
	ld b,b			;14a8
l14a9h:
	ld b,d			;14a9
	ret nz			;14aa
	inc bc			;14ab
	ld b,e			;14ac
l14adh:
	ld c,a			;14ad
	ld c,(hl)			;14ae
	out (054h),a		;14af
	ld b,c			;14b1
	ld c,l			;14b2
	ld d,b			;14b3
	nop			;14b4
l14b5h:
	add a,b			;14b5
	ld b,h			;14b6
	ret nz			;14b7
	inc b			;14b8
l14b9h:
	ld b,e			;14b9
	ld c,a			;14ba
	ld c,(hl)			;14bb
	sub 045h		;14bc
	ld d,d			;14be
	ld d,e			;14bf
	ld b,l			;14c0
	add a,(hl)			;14c1
	nop			;14c2
	nop			;14c3
	nop			;14c4
	nop			;14c5
	call nz,sub_5349h		;14c6
	ld b,e			;14c9
	ld c,a			;14ca
	ld c,(hl)			;14cb
	ld c,(hl)			;14cc
	ld b,l			;14cd
	ld h,(hl)			;14ce
	nop			;14cf
	nop			;14d0
	nop			;14d1
	nop			;14d2
	ld b,h			;14d3
	pop bc			;14d4
	ld e,c			;14d5
	ld d,h			;14d6
	ld c,c			;14d7
	ld c,l			;14d8
	ld b,l			;14d9
	jr nz,$+112		;14da
	nop			;14dc
	nop			;14dd
	nop			;14de
	nop			;14df
	ld b,h			;14e0
	ld b,c			;14e1
	ld e,c			;14e2
	push de			;14e3
	ld d,e			;14e4
	ld b,c			;14e5
	jr nz,l1508h		;14e6
	nop			;14e8
	ld b,b			;14e9
	ld b,h			;14ea
	ret nz			;14eb
	inc b			;14ec
	ld b,h			;14ed
	ld b,l			;14ee
	call z,sub_5445h		;14ef
	ld b,l			;14f2
	jr nz,l1515h		;14f3
	nop			;14f5
	inc b			;14f6
	ld b,e			;14f7
	ret nz			;14f8
	ld (bc),a			;14f9
	ld b,h			;14fa
	ld c,c			;14fb
	ld d,e			;14fc
	ret nc			;14fd
	ld c,h			;14fe
l14ffh:
	ld b,c			;14ff
	ld e,c			;1500
	jr nz,l1551h		;1501
	nop			;1503
	nop			;1504
	nop			;1505
	nop			;1506
	ld b,h			;1507
l1508h:
	rst 10h			;1508
	ld b,c			;1509
l150ah:
	ld c,c			;150a
	ld d,h			;150b
	jr nz,l152eh		;150c
	jr nz,l1517h		;150e
	jp m,0c034h		;1510
	ld b,044h		;1513
l1515h:
	ld c,c			;1515
	rst 0			;1516
l1517h:
	ld c,c			;1517
	ld d,b			;1518
	ld b,l			;1519
	ld b,c			;151a
	ld d,h			;151b
	nop			;151c
	jr nz,$+69		;151d
	ret nz			;151f
	inc bc			;1520
	ld b,h			;1521
	ld c,c			;1522
	ld b,a			;1523
	ld c,c			;1524
	out (045h),a		;1525
	ld c,(hl)			;1527
	ld d,h			;1528
	dec b			;1529
	nop			;152a
	ei			;152b
	adc a,007h		;152c
l152eh:
	push bc			;152e
	ld b,e			;152f
	ld c,b			;1530
	ld c,a			;1531
	jr nz,l1554h		;1532
	jr nz,$+34		;1534
	nop			;1536
	ld (bc),a			;1537
l1538h:
	ld b,e			;1538
	ret nz			;1539
	dec b			;153a
	ld b,l			;153b
	ld c,(hl)			;153c
	call nc,05245h		;153d
	jr nz,$+34		;1540
	jr nz,l150ah		;1542
	ld (bc),a			;1544
	nop			;1545
	nop			;1546
	nop			;1547
	ld b,l			;1548
	out (043h),a		;1549
	ld b,c			;154b
	ld d,b			;154c
	ld b,l			;154d
	jr nz,l1570h		;154e
	nop			;1550
l1551h:
	add a,b			;1551
	ld b,e			;1552
	ret nz			;1553
l1554h:
	dec b			;1554
	add a,04ch		;1555
	ld c,a			;1557
	ld d,a			;1558
	jr nz,l157bh		;1559
	jr nz,l157dh		;155b
	nop			;155d
	djnz l15d3h		;155e
	jp nz,04605h		;1560
	ret			;1563
	ld c,h			;1564
	ld b,l			;1565
	jr nz,$+34		;1566
	jr nz,l158ah		;1568
	add a,000h		;156a
	nop			;156c
	nop			;156d
	nop			;156e
	ld b,(hl)			;156f
l1570h:
	jp nc,04341h		;1570
	ld c,e			;1573
	jr nz,l1596h		;1574
	jr nz,l14ffh		;1576
	rra			;1578
	dec de			;1579
	ret nz			;157a
l157bh:
	ld b,046h		;157b
l157dh:
	push de			;157d
	ld c,h			;157e
	ld c,h			;157f
	ld b,h			;1580
	ld d,l			;1581
	ld d,b			;1582
	jr nz,l1585h		;1583
l1585h:
	ld (bc),a			;1585
	ld (hl),e			;1586
	jp nz,l4803h		;1587
l158ah:
	jp nz,l5541h		;158a
	ld b,h			;158d
	jr nz,l15b0h		;158e
	jr nz,l1597h		;1590
	rst 38h			;1592
	ld a,(l06c0h)		;1593
l1596h:
	ld c,b			;1596
l1597h:
	push bc			;1597
	ld b,c			;1598
	ld b,h			;1599
	ld b,l			;159a
	ld d,d			;159b
	ld c,h			;159c
	ld c,(hl)			;159d
	nop			;159e
	ld bc,0c044h		;159f
	inc b			;15a2
	ld c,b			;15a3
	ld b,l			;15a4
	ld b,c			;15a5
	call z,sub_454ch		;15a6
	ld b,h			;15a9
	jr nz,l15ach		;15aa
l15ach:
	ld (bc),a			;15ac
	ld b,(hl)			;15ad
	ret nz			;15ae
	rlca			;15af
l15b0h:
	ld c,b			;15b0
	ret			;15b1
	ld b,h			;15b2
	jr nz,l15d5h		;15b3
	jr nz,l15d7h		;15b5
	jr nz,l15b9h		;15b7
l15b9h:
	ld (bc),a			;15b9
	ld b,h			;15ba
	ret nz			;15bb
	ld bc,0cf48h		;15bc
	ld d,(hl)			;15bf
	ld d,d			;15c0
	ld b,l			;15c1
	ld d,d			;15c2
	ld d,d			;15c3
	jr nz,l15cbh		;15c4
	nop			;15c6
	rst 30h			;15c7
	adc a,007h		;15c8
	ld c,b			;15ca
l15cbh:
	push de			;15cb
	ld c,(hl)			;15cc
	ld b,h			;15cd
	ld d,d			;15ce
	ld b,l			;15cf
	ld d,d			;15d0
	ld d,d			;15d1
	dec b			;15d2
l15d3h:
	nop			;15d3
	push af			;15d4
l15d5h:
	adc a,007h		;15d5
l15d7h:
	ret			;15d7
	ld b,h			;15d8
	jr nz,l15fbh		;15d9
	jr nz,l15fdh		;15db
	jr nz,$+34		;15dd
	and 000h		;15df
	nop			;15e1
	nop			;15e2
	nop			;15e3
	sla b		;15e4
	jr nz,l1608h		;15e6
	jr nz,l160ah		;15e8
	jr nz,l160ch		;15ea
	add a,(hl)			;15ec
	nop			;15ed
	nop			;15ee
	nop			;15ef
	nop			;15f0
	ld c,e			;15f1
	ret			;15f2
	ld c,h			;15f3
	ld c,h			;15f4
	jr nz,l1617h		;15f5
	jr nz,l1619h		;15f7
	add a,001h		;15f9
l15fbh:
	nop			;15fb
	nop			;15fc
l15fdh:
	nop			;15fd
	call z,l4f43h		;15fe
	ld c,e			;1601
	jr nz,l1624h		;1602
	jr nz,l1626h		;1604
	nop			;1606
	ex af,af'			;1607
l1608h:
	ld b,d			;1608
	ret nz			;1609
l160ah:
	dec b			;160a
	ld c,h			;160b
l160ch:
	add a,041h		;160c
	ld b,h			;160e
	ld b,h			;160f
	jr nz,l1632h		;1610
	jr nz,l1614h		;1612
l1614h:
	djnz l1659h		;1614
	ret nz			;1616
l1617h:
	inc bc			;1617
	ld c,h			;1618
l1619h:
	ld b,(hl)			;1619
	ret			;161a
	ld b,a			;161b
	ld c,(hl)			;161c
	ld c,a			;161d
	ld d,d			;161e
	ld b,l			;161f
	nop			;1620
	add a,b			;1621
	ld b,a			;1622
	ret nz			;1623
l1624h:
	inc bc			;1624
l1625h:
	ld c,h			;1625
l1626h:
	ld b,e			;1626
	pop bc			;1627
	ld c,h			;1628
	ld c,h			;1629
	ld d,e			;162a
	jr nz,l164dh		;162b
	ld (bc),a			;162d
	ex af,af'			;162e
	ld b,h			;162f
	pop bc			;1630
	inc b			;1631
l1632h:
	ld c,h			;1632
	ld b,e			;1633
	out (054h),a		;1634
	ld d,d			;1636
	ld b,l			;1637
	ld b,c			;1638
	ld c,l			;1639
	nop			;163a
	jr nz,l1683h		;163b
	ret nz			;163d
	ld (bc),a			;163e
	call l4e4fh		;163f
l1642h:
	ld c,c			;1642
	ld d,h			;1643
	ld c,a			;1644
	ld d,d			;1645
	jr nz,l1648h		;1646
l1648h:
	ld bc,0c271h		;1648
	inc b			;164b
	ld c,l			;164c
l164dh:
	ret			;164d
	ld c,(hl)			;164e
	ld b,l			;164f
	jr nz,l1672h		;1650
	jr nz,l1674h		;1652
	add a,003h		;1654
	nop			;1656
	nop			;1657
	nop			;1658
l1659h:
	ld c,l			;1659
	jp nz,sub_444fh		;165a
	jr nz,l167fh		;165d
	jr nz,l1681h		;165f
	nop			;1661
	add a,b			;1662
	ld b,c			;1663
	ret nz			;1664
	ex af,af'			;1665
	ld c,l			;1666
	ld b,d			;1667
	add a,049h		;1668
	ld c,h			;166a
	ld b,l			;166b
	jr nz,l168eh		;166c
	add a,000h		;166e
	nop			;1670
	nop			;1671
l1672h:
	nop			;1672
	ld c,l			;1673
l1674h:
	ld b,d			;1674
	push bc			;1675
	ld d,d			;1676
	ld b,c			;1677
	ld d,e			;1678
	ld b,l			;1679
	jr nz,l1642h		;167a
	ld bc,l0000h		;167c
l167fh:
	nop			;167f
	ld c,l			;1680
l1681h:
	pop bc			;1681
	ld c,h			;1682
l1683h:
	ld c,h			;1683
	jr nz,l16a6h		;1684
	jr nz,l16a8h		;1686
	nop			;1688
	inc b			;1689
	ld b,h			;168a
	ret nz			;168b
	inc b			;168c
	ld c,l			;168d
l168eh:
	jp l4e4fh		;168e
	jr nz,l16b3h		;1691
	jr nz,l16b5h		;1693
	nop			;1695
	inc b			;1696
	ld (hl),c			;1697
	jp nz,l4d02h+2		;1698
	add a,049h		;169b
	ld c,h			;169d
	ld d,h			;169e
	ld b,l			;169f
	ld d,d			;16a0
	jr nz,l1712h		;16a1
	ld a,a			;16a3
	inc a			;16a4
	ret nz			;16a5
l16a6h:
	inc b			;16a6
	ld c,l			;16a7
l16a8h:
	ret z			;16a8
	ld b,l			;16a9
	ld b,c			;16aa
	ld d,d			;16ab
	ld b,h			;16ac
	jr nz,l16cfh		;16ad
	ld c,000h		;16af
	nop			;16b1
	nop			;16b2
l16b3h:
	nop			;16b3
	ld c,l			;16b4
l16b5h:
	ld c,b			;16b5
	jp sub_454ch		;16b6
	ld b,c			;16b9
	ld d,d			;16ba
	jr nz,l16ebh		;16bb
	nop			;16bd
	nop			;16be
	nop			;16bf
	nop			;16c0
	ld c,l			;16c1
	jp nc,l5450h		;16c2
	jr nz,l16e7h		;16c5
	jr nz,$+34		;16c7
	nop			;16c9
	ld (bc),a			;16ca
	ld (hl),c			;16cb
	jp nz,l4d02h+2		;16cc
l16cfh:
	out (054h),a		;16cf
	ld b,c			;16d1
	ld c,l			;16d2
	ld d,b			;16d3
	jr nz,$+34		;16d4
	nop			;16d6
	ld bc,0c045h		;16d7
	inc b			;16da
l16dbh:
	ld c,l			;16db
	exx			;16dc
	ld b,e			;16dd
	ld b,c			;16de
	ld c,h			;16df
	ld c,h			;16e0
	jr nz,$+34		;16e1
	ld (bc),a			;16e3
	ld bc,0c003h		;16e4
l16e7h:
	ld bc,l594dh		;16e7
	pop bc			;16ea
l16ebh:
	ld c,h			;16eb
	ld c,c			;16ec
	ld b,c			;16ed
	ld d,e			;16ee
	jr nz,$+4		;16ef
	ld bc,0c00bh		;16f1
	ld bc,l594dh		;16f4
	call 04143h		;16f7
	ld c,h			;16fa
	ld c,h			;16fb
	jr nz,$+4		;16fc
	ld bc,0c013h		;16fe
	ld bc,sub_414dh		;1701
	ret c			;1704
	ld b,(hl)			;1705
	ld d,d			;1706
	ld b,c			;1707
	ld c,l			;1708
	ld b,l			;1709
	add a,a			;170a
	rla			;170b
	rra			;170c
	ret nz			;170d
	inc bc			;170e
	ld c,l			;170f
	ld b,e			;1710
	ld c,a			;1711
l1712h:
	call l2020h		;1712
	jr nz,l1737h		;1715
	nop			;1717
	ex af,af'			;1718
	ld b,h			;1719
	ret nz			;171a
	inc b			;171b
	ld c,(hl)			;171c
	push bc			;171d
	ld d,a			;171e
	ld c,l			;171f
	ld c,a			;1720
	ld b,h			;1721
	ld b,l			;1722
	jr nz,l1725h		;1723
l1725h:
	jr nz,l176bh		;1725
	ret nz			;1727
	inc bc			;1728
	ld c,(hl)			;1729
	rst 8			;172a
	ld c,l			;172b
	ld c,a			;172c
	ld b,h			;172d
	ld b,l			;172e
	jr nz,l1751h		;172f
	nop			;1731
	ex af,af'			;1732
	ld b,(hl)			;1733
	ret nz			;1734
	inc bc			;1735
	ld c,(hl)			;1736
l1737h:
	push de			;1737
	ld b,e			;1738
	ld d,d			;1739
	jr nz,l175ch		;173a
	jr nz,l175eh		;173c
	nop			;173e
	djnz $+68		;173f
	ret nz			;1741
	dec b			;1742
	ld c,(hl)			;1743
	ld d,l			;1744
	call z,02046h		;1745
	jr nz,l176ah		;1748
	jr nz,l174ch		;174a
l174ch:
	jr nz,l1790h		;174c
	ret nz			;174e
	dec b			;174f
	ld c,(hl)			;1750
l1751h:
	ld d,l			;1751
	ld c,h			;1752
	call z,sub_2053h		;1753
	jr nz,l1778h		;1756
	rlca			;1758
	ld e,030h		;1759
	ret nz			;175b
l175ch:
	dec b			;175c
	ret nc			;175d
l175eh:
	ld b,c			;175e
	ld b,e			;175f
	ld c,h			;1760
	ld b,l			;1761
	ld c,(hl)			;1762
	jr nz,l1785h		;1763
	rlca			;1765
	rst 38h			;1766
	inc e			;1767
	ret nz			;1768
	inc bc			;1769
l176ah:
	ld d,b			;176a
l176bh:
	ld b,c			;176b
	jp nc,l5449h		;176c
	ld e,c			;176f
	jr nz,l1792h		;1770
	rlca			;1772
	inc bc			;1773
	ld hl,l05c0h		;1774
	ld d,b			;1777
l1778h:
	ld b,c			;1778
	out (053h),a		;1779
	jr nz,l179dh		;177b
	jr nz,l179fh		;177d
	rrca			;177f
	ld a,a			;1780
	ld hl,(l02c0h)		;1781
	ld d,b			;1784
l1785h:
	ld b,c			;1785
	ld d,e			;1786
	ld d,e			;1787
	pop bc			;1788
	ld c,h			;1789
	ld c,h			;178a
	jr nz,l178dh		;178b
l178dh:
	inc b			;178d
	ld b,d			;178e
	ret nz			;178f
l1790h:
	inc bc			;1790
	ld d,b			;1791
l1792h:
	ld b,c			;1792
	ld b,e			;1793
	call nc,04d49h		;1794
	ld b,l			;1797
	jr nz,$+6		;1798
	jp m,0bfd8h		;179a
l179dh:
	ld b,050h		;179d
l179fh:
	push bc			;179f
	ld d,d			;17a0
	ld d,e			;17a1
	ld c,c			;17a2
	ld d,e			;17a3
	ld d,h			;17a4
	jr nz,l17aeh		;17a5
	rst 38h			;17a7
	inc sp			;17a8
	ret nz			;17a9
	ld b,050h		;17aa
	ret nc			;17ac
	ld b,l			;17ad
l17aeh:
	ld d,d			;17ae
	ld d,e			;17af
	ld c,c			;17b0
	ld d,e			;17b1
	ld d,h			;17b2
	nop			;17b3
	inc b			;17b4
	ld b,c			;17b5
	ret nz			;17b6
	ld b,0d2h		;17b7
	ld b,l			;17b9
	ld b,c			;17ba
	ld b,h			;17bb
	jr nz,$+34		;17bc
	jr nz,l17e0h		;17be
	add a,000h		;17c0
	nop			;17c2
	nop			;17c3
	nop			;17c4
	ld d,d			;17c5
	ld b,e			;17c6
	ld d,(hl)			;17c7
	ld b,h			;17c8
	add a,052h		;17c9
	ld c,l			;17cb
	ld d,d			;17cc
	dec b			;17cd
	nop			;17ce
	rst 28h			;17cf
	adc a,007h		;17d0
	ld d,d			;17d2
	ld b,e			;17d3
	ld d,(hl)			;17d4
	ld b,h			;17d5
	ret			;17d6
	ld b,(hl)			;17d7
	ld d,d			;17d8
	ld b,c			;17d9
	dec b			;17da
	nop			;17db
	di			;17dc
	adc a,007h		;17dd
	ld d,d			;17df
l17e0h:
	ld b,e			;17e0
	ld d,(hl)			;17e1
	ld b,h			;17e2
	jp nc,l4a45h		;17e3
	jr nz,l17edh		;17e6
	nop			;17e8
	defb 0edh;next byte illegal after ed		;17e9
	adc a,007h		;17ea
	ld d,d			;17ec
l17edh:
	ld b,e			;17ed
	ld d,(hl)			;17ee
	ld b,h			;17ef
	out (041h),a		;17f0
	ld b,d			;17f2
	ld c,l			;17f3
	dec b			;17f4
	nop			;17f5
	pop af			;17f6
	adc a,007h		;17f7
	ld d,d			;17f9
	push bc			;17fa
	ld d,h			;17fb
	ld d,d			;17fc
	ld e,c			;17fd
	jr nz,$+34		;17fe
	jr nz,$+9		;1800
	rrca			;1802
	dec e			;1803
	ret nz			;1804
	inc bc			;1805
	ld d,d			;1806
	ld b,l			;1807
	call nz,sub_5349h		;1808
	ld d,b			;180b
	ld c,h			;180c
l180dh:
	ld b,c			;180d
	rrca			;180e
	ld a,a			;180f
	dec hl			;1810
	ret nz			;1811
	ld (bc),a			;1812
	ld d,d			;1813
	ld b,l			;1814
	out (050h),a		;1815
	ld d,h			;1817
	ld c,c			;1818
	ld c,l			;1819
	ld b,l			;181a
	rlca			;181b
	jp m,0bfdfh		;181c
	ld b,052h		;181f
	ret c			;1821
	ld b,d			;1822
	ld c,h			;1823
	ld c,a			;1824
	ld b,e			;1825
	ld c,e			;1826
	jr nz,l1829h		;1827
l1829h:
	inc b			;1829
	ld b,(hl)			;182a
	ret nz			;182b
	dec b			;182c
	ld d,d			;182d
	ld b,l			;182e
	jp l4e4fh		;182f
	ld c,(hl)			;1832
	ld b,l			;1833
	ld b,e			;1834
	cp (hl)			;1835
	ld a,(bc)			;1836
	add a,c			;1837
	rst 38h			;1838
	nop			;1839
	ld d,d			;183a
	ld b,l			;183b
	ld d,e			;183c
	ld b,l			;183d
	call nc,l2020h		;183e
	jr nz,l1849h		;1841
	nop			;1843
	nop			;1844
	nop			;1845
	nop			;1846
	ld d,d			;1847
	ld b,l			;1848
l1849h:
	ld d,e			;1849
	ld d,h			;184a
	ld b,c			;184b
	ld d,d			;184c
	call nc,sub_0620h		;184d
	ld bc,l0000h		;1850
	nop			;1853
	ld d,d			;1854
	ld b,c			;1855
	ld c,l			;1856
	ld d,h			;1857
	ld b,l			;1858
	ld d,e			;1859
	call nc,sub_0620h		;185a
	ld (bc),a			;185d
	nop			;185e
	nop			;185f
	nop			;1860
	ld d,d			;1861
	ld e,b			;1862
	jp l554fh		;1863
	ld c,(hl)			;1866
	ld d,h			;1867
	jr nz,l186fh		;1868
	nop			;186a
	defb 0ddh,0ceh,007h	;illegal sequence		;186b
	ld d,d			;186e
l186fh:
	ld e,b			;186f
	push bc			;1870
	ld d,d			;1871
	ld d,d			;1872
	ld c,a			;1873
	ld d,d			;1874
	ld d,e			;1875
	dec b			;1876
	nop			;1877
	push hl			;1878
	adc a,007h		;1879
	out (043h),a		;187b
	ld d,d			;187d
	ld b,l			;187e
	ld b,l			;187f
	ld c,(hl)			;1880
	ld c,h			;1881
	ld c,(hl)			;1882
	rlca			;1883
	rst 38h			;1884
	ld sp,l05c0h		;1885
	ld d,e			;1888
	push bc			;1889
	ld c,(hl)			;188a
	ld b,h			;188b
	ld d,b			;188c
	ld b,c			;188d
	ld b,e			;188e
	jr nz,l18a0h		;188f
	ld a,a			;1891
	dec h			;1892
	ret nz			;1893
	ld (bc),a			;1894
	ld d,e			;1895
	ld b,l			;1896
	ld c,(hl)			;1897
	ld d,h			;1898
	add a,052h		;1899
	ld c,l			;189b
	ld d,d			;189c
	dec b			;189d
	nop			;189e
	jp (hl)			;189f
l18a0h:
	adc a,007h		;18a0
	ld d,e			;18a2
	ld b,l			;18a3
	ld c,(hl)			;18a4
	ld d,h			;18a5
	ret			;18a6
	ld b,(hl)			;18a7
	ld d,d			;18a8
	ld b,c			;18a9
	dec b			;18aa
	nop			;18ab
	ex de,hl			;18ac
	adc a,007h		;18ad
	ld d,e			;18af
	ld b,l			;18b0
	ld c,(hl)			;18b1
	ld d,h			;18b2
	jp nc,l4a45h		;18b3
	jr nz,l18bdh		;18b6
	nop			;18b8
l18b9h:
	rst 20h			;18b9
	adc a,007h		;18ba
	ld d,e			;18bc
l18bdh:
	call z,sub_544fh		;18bd
	ld d,h			;18c0
	ld c,c			;18c1
	ld c,l			;18c2
	ld b,l			;18c3
	rlca			;18c4
	jp m,0c035h		;18c5
	ld b,053h		;18c8
	ld d,h			;18ca
	pop bc			;18cb
	ld d,d			;18cc
	ld d,h			;18cd
	jr nz,l18f0h		;18ce
	jr nz,l18e1h		;18d0
	ld a,a			;18d2
	dec l			;18d3
	ret nz			;18d4
	ld (bc),a			;18d5
	ld d,e			;18d6
	ld d,h			;18d7
	rst 8			;18d8
	ld d,b			;18d9
	jr nz,l18fch		;18da
	jr nz,l18feh		;18dc
	rrca			;18de
	ld a,a			;18df
	inc l			;18e0
l18e1h:
	ret nz			;18e1
	ld (bc),a			;18e2
	ld d,e			;18e3
	ld d,h			;18e4
	jp nc,04145h		;18e5
	ld c,l			;18e8
	ld d,e			;18e9
	ld d,a			;18ea
	rrca			;18eb
	rst 38h			;18ec
	inc hl			;18ed
	ret nz			;18ee
	ld (bc),a			;18ef
l18f0h:
	ld d,e			;18f0
	ld d,h			;18f1
	ld d,d			;18f2
	ld b,l			;18f3
	ld b,c			;18f4
	ld c,l			;18f5
	jp l0041h		;18f6
	add a,b			;18f9
	ld b,l			;18fa
	ret nz			;18fb
l18fch:
	ld (bc),a			;18fc
	ld d,e			;18fd
l18feh:
	ld d,h			;18fe
	ld d,d			;18ff
	ld b,l			;1900
	ld b,c			;1901
	ld c,l			;1902
	call nz,sub_0042h		;1903
	ld b,b			;1906
	ld b,l			;1907
	ret nz			;1908
	ld (bc),a			;1909
	call nc,sub_4152h		;190a
	ld c,(hl)			;190d
	ld d,e			;190e
	jr nz,l1931h		;190f
	jr nz,l18b9h		;1911
	nop			;1913
	nop			;1914
	nop			;1915
	nop			;1916
	ld d,h			;1917
	ld d,d			;1918
	add a,04ch		;1919
	ld c,a			;191b
	ld d,a			;191c
	jr nz,l193fh		;191d
	nop			;191f
	ld (bc),a			;1920
	ld b,l			;1921
	ret nz			;1922
	dec b			;1923
	ld d,h			;1924
	ld d,d			;1925
	ret			;1926
	ld b,l			;1927
	ld d,e			;1928
	jr nz,l194bh		;1929
	jr nz,l1944h		;192b
	rrca			;192d
	push bc			;192e
	rst 38h			;192f
	inc bc			;1930
l1931h:
	ld d,h			;1931
	ld d,d			;1932
	ld b,c			;1933
	jp 02045h		;1934
	jr nz,l1959h		;1937
	nop			;1939
	ex af,af'			;193a
	ld (hl),c			;193b
	jp nz,05403h		;193c
l193fh:
	ld e,b			;193f
	jp l554fh		;1940
	ld c,(hl)			;1943
l1944h:
	ld d,h			;1944
	jr nz,l194ch		;1945
	nop			;1947
	rst 18h			;1948
	adc a,007h		;1949
l194bh:
	ld d,h			;194b
l194ch:
	ret c			;194c
	ld b,h			;194d
	ld b,l			;194e
	ld c,h			;194f
	ld b,c			;1950
	ld e,c			;1951
	jr nz,$+9		;1952
	ld a,b			;1954
	in a,(0bfh)		;1955
	ld b,054h		;1957
l1959h:
	ld e,b			;1959
	add a,04ch		;195a
	ld c,a			;195c
	ld d,a			;195d
	jr nz,$+34		;195e
	nop			;1960
	ld (bc),a			;1961
	ld b,d			;1962
	ret nz			;1963
	dec b			;1964
	ld d,h			;1965
	ld e,b			;1966
	pop de			;1967
	ld c,a			;1968
	ld d,(hl)			;1969
	ld b,(hl)			;196a
	ld c,h			;196b
	ld d,a			;196c
	dec b			;196d
	nop			;196e
	pop hl			;196f
	adc a,007h		;1970
	push de			;1972
	ld c,(hl)			;1973
	ld d,b			;1974
	ld d,d			;1975
	ld c,a			;1976
	ld d,h			;1977
	ld c,a			;1978
	jr nz,l19a1h		;1979
	ld a,(bc)			;197b
	ld e,e			;197c
	ret nz			;197d
	ld bc,0d355h		;197e
	ld b,l			;1981
	ld d,d			;1982
	ld d,e			;1983
	jr nz,l19a6h		;1984
	jr nz,l198fh		;1986
	dec bc			;1988
	inc h			;1989
	ret nz			;198a
	inc bc			;198b
	rst 10h			;198c
	ld d,d			;198d
	ld c,c			;198e
l198fh:
	ld d,h			;198f
	ld b,l			;1990
	jr nz,$+34		;1991
	jr nz,$-56		;1993
	ld (bc),a			;1995
	nop			;1996
	nop			;1997
	nop			;1998
	ld d,a			;1999
	ld b,c			;199a
	ld d,h			;199b
	ld b,e			;199c
	ld c,b			;199d
	ld b,h			;199e
	ld c,a			;199f
	rst 0			;19a0
l19a1h:
	rlca			;19a1
	jp m,0c032h		;19a2
	nop			;19a5
l19a6h:
	ret c			;19a6
	ld b,(hl)			;19a7
	ld c,h			;19a8
	ld c,a			;19a9
	ld d,a			;19aa
	jr nz,l19cdh		;19ab
	jr nz,l19afh		;19ad
l19afh:
	inc b			;19af
	ld (hl),l			;19b0
	jp nz,l5805h		;19b1
	call l5449h		;19b4
	ld c,a			;19b7
	ld c,e			;19b8
	jr nz,l19dbh		;19b9
	nop			;19bb
	ld b,b			;19bc
	ld b,e			;19bd
	ret nz			;19be
	inc bc			;19bf
	ld e,b			;19c0
	rst 8			;19c1
	ld b,(hl)			;19c2
	ld b,(hl)			;19c3
	jr nz,l19e6h		;19c4
	jr nz,l19e8h		;19c6
	rrca			;19c8
	ld a,a			;19c9
	ld l,0c0h		;19ca
	ld (bc),a			;19cc
l19cdh:
	ld e,b			;19cd
	ld c,a			;19ce
	adc a,020h		;19cf
	jr nz,l19f3h		;19d1
	jr nz,$+34		;19d3
	rrca			;19d5
	ld a,a			;19d6
	cpl			;19d7
	ret nz			;19d8
	ld (bc),a			;19d9
	rst 38h			;19da
l19dbh:
	ld a,(0d52ah)		;19db
	call z,sub_11e5h		;19de
	rst 10h			;19e1
	call z,03e19h		;19e2
	dec c			;19e5
l19e6h:
	ld (hl),a			;19e6
	pop hl			;19e7
l19e8h:
	inc hl			;19e8
	ld (0ccd5h),hl		;19e9
	ld a,(0cefeh)		;19ec
	bit 7,a		;19ef
	jr nz,l1a00h		;19f1
l19f3h:
	ld a,(0bf19h)		;19f3
	bit 5,a		;19f6
	jp nz,l2a7ah		;19f8
	bit 4,a		;19fb
	jp nz,l2ae2h		;19fd
l1a00h:
	push hl			;1a00
	ld de,0ff7fh		;1a01
	add hl,de			;1a04
	pop hl			;1a05
	jr nc,l1a0dh		;1a06
	ld hl,l5859h		;1a08
	jr l1a4dh		;1a0b
l1a0dh:
	call sub_1f01h		;1a0d
	ld a,(0cba2h)		;1a10
	cp 0ffh		;1a13
	jr nz,l1a1ch		;1a15
	ld hl,l5879h		;1a17
	jr l1a4dh		;1a1a
l1a1ch:
	cp 0feh		;1a1c
	jr z,l1a37h		;1a1e
	ld ix,(0cba0h)		;1a20
	and 007h		;1a24
	cp 006h		;1a26
	jp z,01b3ah		;1a28
	call sub_1f74h		;1a2b
	ld a,(0cb9eh)		;1a2e
	and a			;1a31
	jr nz,l1a39h		;1a32
	call sub_210dh		;1a34
l1a37h:
	jr l1a5ah		;1a37
l1a39h:
	and 0f0h		;1a39
	jr z,l1a5ch		;1a3b
l1a3dh:
	and 0f0h		;1a3d
	rra			;1a3f
	rra			;1a40
	rra			;1a41
	ld l,a			;1a42
	ld h,000h		;1a43
	ld de,01debh		;1a45
	add hl,de			;1a48
	ld e,(hl)			;1a49
	inc hl			;1a4a
	ld d,(hl)			;1a4b
	ex de,hl			;1a4c
l1a4dh:
	ld a,03fh		;1a4d
	call l42feh		;1a4f
	call l43c0h		;1a52
	call sub_42fch		;1a55
	jr l1aa5h		;1a58
l1a5ah:
	jr l1aa5h		;1a5a
l1a5ch:
	call sub_3deeh		;1a5c
	jr nz,l1a86h		;1a5f
	push ix		;1a61
	pop hl			;1a63
	push hl			;1a64
	pop de			;1a65
	ld bc,l16dbh		;1a66
	and a			;1a69
	sbc hl,bc		;1a6a
	jr z,l1a81h		;1a6c
	ex de,hl			;1a6e
	push hl			;1a6f
	ld bc,016f5h		;1a70
	and a			;1a73
	sbc hl,bc		;1a74
	pop hl			;1a76
	jr z,l1a81h		;1a77
	ld bc,l1333h		;1a79
	and a			;1a7c
	sbc hl,bc		;1a7d
	jr nz,l1a86h		;1a7f
l1a81h:
	ld hl,l592ch		;1a81
	jr l1a4dh		;1a84
l1a86h:
	push ix		;1a86
	pop hl			;1a88
	ld bc,l13e8h+1		;1a89
	and a			;1a8c
	sbc hl,bc		;1a8d
	jr nz,l1a9fh		;1a8f
	ld a,(iy+007h)		;1a91
	and a			;1a94
	jr nz,l1a9fh		;1a95
	ld hl,l5949h		;1a97
	call l43c0h		;1a9a
	jr l1aa5h		;1a9d
l1a9fh:
	call 020feh		;1a9f
	call sub_2311h		;1aa2
l1aa5h:
	call sub_3d16h		;1aa5
	ld a,(0c041h)		;1aa8
	bit 7,a		;1aab
	jr nz,l1ab6h		;1aad
	xor a			;1aaf
	ld (0cefeh),a		;1ab0
	call sub_32a2h		;1ab3
l1ab6h:
	ld a,(0c041h)		;1ab6
	ld b,a			;1ab9
	ld a,(0c034h)		;1aba
	bit 2,b		;1abd
	jr z,l1ac4h		;1abf
	ld a,(0c035h)		;1ac1
l1ac4h:
	ld (0bfd6h),a		;1ac4
	ld a,(0c043h)		;1ac7
	bit 2,a		;1aca
	ld a,07fh		;1acc
	jr nz,l1ad2h		;1ace
	ld a,008h		;1ad0
l1ad2h:
	ld (0c029h),a		;1ad2
	ld hl,0c048h		;1ad5
	ld a,(0c002h)		;1ad8
	cp (hl)			;1adb
	jr z,l1ae4h		;1adc
	ld (hl),a			;1ade
	ld hl,0bfd4h		;1adf
	ld (hl),000h		;1ae2
l1ae4h:
	call l0b23h		;1ae4
sub_1ae7h:
	ld a,(0cbc7h)		;1ae7
	call sub_3dd6h		;1aea
	ld hl,0c273h		;1aed
	set 7,(hl)		;1af0
	ld de,0ccd5h		;1af2
	bit 2,(hl)		;1af5
	jr z,l1afch		;1af7
	ld de,0cdd7h		;1af9
l1afch:
	ld bc,l0003h+1		;1afc
	ld hl,l1de7h		;1aff
	ld a,(0cefeh)		;1b02
	bit 7,a		;1b05
	jr nz,l1b1dh		;1b07
	ld a,(0bf19h)		;1b09
	bit 4,a		;1b0c
	jr z,l1b1dh		;1b0e
	ld hl,l1b29h		;1b10
	ld bc,l0006h+2		;1b13
	bit 5,a		;1b16
	jr z,l1b1dh		;1b18
	ld hl,01b31h		;1b1a
l1b1dh:
	call sub_0dddh		;1b1d
l1b20h:
	ld a,(hl)			;1b20
	call l42feh		;1b21
	inc hl			;1b24
	dec c			;1b25
	jr nz,l1b20h		;1b26
	ret			;1b28
l1b29h:
	ld c,l			;1b29
	ld b,l			;1b2a
	ld d,e			;1b2b
	ld d,e			;1b2c
	ld b,c			;1b2d
	ld b,a			;1b2e
	ld b,l			;1b2f
	ld a,(l7553h)		;1b30
	ld h,d			;1b33
	ld l,d			;1b34
	ld h,l			;1b35
	ld h,e			;1b36
	ld (hl),h			;1b37
	ld a,(0dd00h)		;1b38
	ld a,(hl)			;1b3b
	ex af,af'			;1b3c
	and 0e8h		;1b3d
	jr nz,l1b55h		;1b3f
	ld a,(ix+009h)		;1b41
	and a			;1b44
	jr nz,l1b4bh		;1b45
	ld hl,0bfd6h		;1b47
	inc (hl)			;1b4a
l1b4bh:
	cp 002h		;1b4b
	jr nz,l1b52h		;1b4d
	call sub_46d8h		;1b4f
l1b52h:
	jp l0000h		;1b52
l1b55h:
	cp 040h		;1b55
	jp nz,l1bf5h		;1b57
	call sub_1d89h		;1b5a
	jp c,l1a3dh		;1b5d
	ld a,(0cb9eh)		;1b60
	and a			;1b63
	jr nz,l1b6ch		;1b64
	call sub_210dh		;1b66
	jp l1c16h		;1b69
l1b6ch:
	ld b,a			;1b6c
	xor a			;1b6d
	push bc			;1b6e
l1b6fh:
	push af			;1b6f
	call sub_3dd6h		;1b70
	ld a,(iy+007h)		;1b73
	and a			;1b76
	pop bc			;1b77
	ld a,b			;1b78
	push af			;1b79
	jr z,l1b96h		;1b7a
	push iy		;1b7c
	pop hl			;1b7e
	ld de,0ff87h		;1b7f
	add hl,de			;1b82
	ld de,0cd5dh		;1b83
	call sub_3fd5h		;1b86
	jr nz,l1b96h		;1b89
	pop af			;1b8b
	pop bc			;1b8c
	ld hl,l58e4h		;1b8d
	call l43c0h		;1b90
	jp l1c16h		;1b93
l1b96h:
	pop af			;1b96
	inc a			;1b97
	cp 00bh		;1b98
	jr c,l1b6fh		;1b9a
	ld a,(0cbc7h)		;1b9c
	call sub_3dd6h		;1b9f
	ld a,(iy+007h)		;1ba2
	and a			;1ba5
	jr nz,l1babh		;1ba6
	pop bc			;1ba8
	jr l1bb2h		;1ba9
l1babh:
	pop bc			;1bab
	call sub_210dh		;1bac
	jp l1c16h		;1baf
l1bb2h:
	push de			;1bb2
	ld e,01dh		;1bb3
	call 00561h		;1bb5
	pop de			;1bb8
	xor a			;1bb9
	ld (hl),a			;1bba
	ld (iy-03bh),a		;1bbb
	ld (iy+007h),001h		;1bbe
	ld hl,0c271h		;1bc2
	set 6,(hl)		;1bc5
	ld a,b			;1bc7
	dec a			;1bc8
	jr z,l1bcch		;1bc9
	dec a			;1bcb
l1bcch:
	ld (iy+01ch),a		;1bcc
	ld hl,0c275h		;1bcf
	set 1,(hl)		;1bd2
	push hl			;1bd4
	call sub_2311h		;1bd5
	pop hl			;1bd8
	res 1,(hl)		;1bd9
	call sub_3d16h		;1bdb
	ld a,(0c044h)		;1bde
	bit 5,a		;1be1
	jr z,l1c16h		;1be3
	ld a,(0c046h)		;1be5
	and 008h		;1be8
	jr nz,l1c16h		;1bea
	call sub_3d07h		;1bec
	ld hl,0c273h		;1bef
	jp l1d32h		;1bf2
l1bf5h:
	cp 020h		;1bf5
	jr nz,l1c19h		;1bf7
	call sub_1d89h		;1bf9
	jp c,l1a3dh		;1bfc
	ld a,(0cb9eh)		;1bff
	and a			;1c02
	jr nz,l1c0ah		;1c03
	call sub_210dh		;1c05
	jr l1c16h		;1c08
l1c0ah:
	ld hl,0c275h		;1c0a
	set 1,(hl)		;1c0d
	push hl			;1c0f
	call sub_2311h		;1c10
	pop hl			;1c13
	res 1,(hl)		;1c14
l1c16h:
	jp l1aa5h		;1c16
l1c19h:
	cp 048h		;1c19
	jr nz,l1c70h		;1c1b
l1c1dh:
	call sub_2553h		;1c1d
	jr nc,l1c2bh		;1c20
	ld hl,(0cb9ch)		;1c22
	inc hl			;1c25
	ld (0cb9ch),hl		;1c26
	jr l1c1dh		;1c29
l1c2bh:
	cp 00dh		;1c2b
	ld c,0ffh		;1c2d
	jr z,l1c47h		;1c2f
	ld hl,(0cb9ch)		;1c31
	ld a,(hl)			;1c34
	call sub_250bh		;1c35
	ld hl,l1de6h		;1c38
	ld bc,l0006h+2		;1c3b
	cpdr		;1c3e
	ld hl,l5835h		;1c40
	jp nz,l1a4dh		;1c43
	inc c			;1c46
l1c47h:
	ld ix,01319h		;1c47
l1c4bh:
	ld a,04eh		;1c4b
	out (0f1h),a		;1c4d
	ld a,(ix+000h)		;1c4f
	cp 0ffh		;1c52
	jr z,l1c16h		;1c54
	ld a,(ix+00ch)		;1c56
	and a			;1c59
	jr z,l1c69h		;1c5a
	cp c			;1c5c
	jr z,l1c64h		;1c5d
	ld a,c			;1c5f
	cp 0ffh		;1c60
	jr nz,l1c69h		;1c62
l1c64h:
	push bc			;1c64
	call sub_210dh		;1c65
	pop bc			;1c68
l1c69h:
	ld de,l000dh		;1c69
	add ix,de		;1c6c
	jr l1c4bh		;1c6e
l1c70h:
	cp 068h		;1c70
	jr nz,l1c9bh		;1c72
l1c74h:
	call sub_2553h		;1c74
	jr nc,l1c82h		;1c77
	ld hl,(0cb9ch)		;1c79
	inc hl			;1c7c
	ld (0cb9ch),hl		;1c7d
	jr l1c74h		;1c80
l1c82h:
	cp 00dh		;1c82
	jr nz,l1c8fh		;1c84
	call sub_099dh		;1c86
	call sub_42fch		;1c89
	jp l1c16h		;1c8c
l1c8fh:
	call 0092ah		;1c8f
	jp nc,l1c16h		;1c92
	ld hl,l5835h		;1c95
	jp l1a4dh		;1c98
l1c9bh:
	cp 0a8h		;1c9b
	jr nz,l1cdeh		;1c9d
	call sub_1d89h		;1c9f
	jp c,l1a3dh		;1ca2
	ld a,(0cb9eh)		;1ca5
	and a			;1ca8
	jr nz,l1cb1h		;1ca9
	call sub_210dh		;1cab
	jp l1c16h		;1cae
l1cb1h:
	ld b,a			;1cb1
	ld a,(0cbc7h)		;1cb2
	call sub_3dd6h		;1cb5
	ld a,(iy+007h)		;1cb8
	and a			;1cbb
	jr nz,l1cc7h		;1cbc
	ld hl,l5949h		;1cbe
l1cc1h:
	call l43c0h		;1cc1
	jp l1c16h		;1cc4
l1cc7h:
	push iy		;1cc7
	pop hl			;1cc9
	ld de,0ff87h		;1cca
	add hl,de			;1ccd
	ld de,0cd5dh		;1cce
	call sub_3fd5h		;1cd1
	jr z,l1cdbh		;1cd4
	ld hl,l596bh		;1cd6
	jr l1cc1h		;1cd9
l1cdbh:
	jp l1bb2h		;1cdb
l1cdeh:
	cp 0c0h		;1cde
	jr nz,l1ce8h		;1ce0
	call sub_260bh		;1ce2
	jp l1c16h		;1ce5
l1ce8h:
	push af			;1ce8
l1ce9h:
	call sub_2553h		;1ce9
	jr nc,l1cf7h		;1cec
	ld hl,(0cb9ch)		;1cee
	inc hl			;1cf1
	ld (0cb9ch),hl		;1cf2
	jr l1ce9h		;1cf5
l1cf7h:
	pop bc			;1cf7
	cp 00dh		;1cf8
	ld a,b			;1cfa
	jr z,l1d03h		;1cfb
	ld hl,l5835h		;1cfd
	jp l1a4dh		;1d00
l1d03h:
	cp 008h		;1d03
	jr nz,l1d0dh		;1d05
	call sub_0c3ch		;1d07
	jp l1c16h		;1d0a
l1d0dh:
	cp 088h		;1d0d
	jr nz,l1d17h		;1d0f
	call sub_472ch		;1d11
	jp l1c16h		;1d14
l1d17h:
	cp 028h		;1d17
	jr nz,l1d21h		;1d19
	call sub_0c7ah		;1d1b
	jp l1c16h		;1d1e
l1d21h:
	cp 080h		;1d21
	ld hl,0c273h		;1d23
	jr nz,l1d2ch		;1d26
	res 6,(hl)		;1d28
	jr l1d32h		;1d2a
l1d2ch:
	cp 0a0h		;1d2c
	jr nz,l1d45h		;1d2e
	set 6,(hl)		;1d30
l1d32h:
	ld a,(0c274h)		;1d32
	and 080h		;1d35
	jr z,l1d42h		;1d37
	ld hl,l5888h		;1d39
	call l43c0h		;1d3c
	jp l1c16h		;1d3f
l1d42h:
	res 7,(hl)		;1d42
	ret			;1d44
l1d45h:
	cp 060h		;1d45
	jr nz,l1d7dh		;1d47
	ld a,(iy+007h)		;1d49
	cp 000h		;1d4c
	jr nz,l1d56h		;1d4e
	call sub_2243h		;1d50
	jp l1c16h		;1d53
l1d56h:
	cp 004h		;1d56
	jr nc,l1d60h		;1d58
	call sub_4e1bh		;1d5a
	jp l1c16h		;1d5d
l1d60h:
	ld (iy+007h),003h		;1d60
	ld e,01dh		;1d64
	call 00561h		;1d66
	xor a			;1d69
	ld (hl),a			;1d6a
	ld (iy-03bh),a		;1d6b
	ld a,(iy+006h)		;1d6e
	and 080h		;1d71
	ld (iy+006h),a		;1d73
	res 7,(iy+008h)		;1d76
	jp l1c16h		;1d7a
l1d7dh:
	ld hl,0c272h		;1d7d
	set 1,(hl)		;1d80
	xor a			;1d82
	ld (0bfb0h),a		;1d83
	jp l1c16h		;1d86
sub_1d89h:
	ld hl,0c275h		;1d89
	set 1,(hl)		;1d8c
	call sub_1f74h		;1d8e
	ld a,(0cb9eh)		;1d91
	ld b,a			;1d94
	and 0f0h		;1d95
	jr nz,l1dabh		;1d97
	ld a,b			;1d99
	and a			;1d9a
	jr z,l1dc5h		;1d9b
	ld hl,0cd5eh		;1d9d
	ld a,(hl)			;1da0
	and a			;1da1
	jr z,l1dc5h		;1da2
	ld a,0ach		;1da4
	cp (hl)			;1da6
	jr z,l1daeh		;1da7
	ld a,080h		;1da9
l1dabh:
	scf			;1dab
	jr l1dc6h		;1dac
l1daeh:
	ex de,hl			;1dae
	ld hl,0cd65h		;1daf
	ld a,(hl)			;1db2
	and a			;1db3
	jr nz,l1dbah		;1db4
	ld a,030h		;1db6
	jr l1dabh		;1db8
l1dbah:
	ld bc,l0006h+1		;1dba
	ldir		;1dbd
	ld a,(hl)			;1dbf
	and a			;1dc0
	jr nz,l1dbah		;1dc1
	xor a			;1dc3
	ld (de),a			;1dc4
l1dc5h:
	and a			;1dc5
l1dc6h:
	ld hl,0c275h		;1dc6
	res 1,(hl)		;1dc9
	ret			;1dcb
	xor a			;1dcc
l1dcdh:
	push af			;1dcd
	call sub_3dd6h		;1dce
	ld a,(iy+007h)		;1dd1
	and a			;1dd4
	pop bc			;1dd5
	ret z			;1dd6
	ld a,b			;1dd7
	inc a			;1dd8
	cp 00bh		;1dd9
	jr nz,l1dcdh		;1ddb
	scf			;1ddd
	ret			;1dde
	ld c,c			;1ddf
	ld b,e			;1de0
	ld c,h			;1de1
	ld c,l			;1de2
	ld b,c			;1de3
	ld d,h			;1de4
	ld c,b			;1de5
l1de6h:
	ld b,d			;1de6
l1de7h:
	ld h,e			;1de7
	ld l,l			;1de8
	ld h,h			;1de9
	ld a,(l0000h)		;1dea
	dec (hl)			;1ded
	ld e,b			;1dee
	dec a			;1def
	ld e,b			;1df0
	ld c,d			;1df1
	ld e,b			;1df2
	ld e,c			;1df3
	ld e,b			;1df4
	ld h,(hl)			;1df5
	ld e,b			;1df6
	ld (hl),b			;1df7
	ld e,b			;1df8
	ld a,c			;1df9
	ld e,b			;1dfa
	add a,b			;1dfb
	ld e,b			;1dfc
sub_1dfdh:
	ld a,079h		;1dfd
	ld (0cf01h),a		;1dff
	ld b,a			;1e02
	ld c,000h		;1e03
	ld de,l0021h		;1e05
	ld hl,l0003h+1		;1e08
	push hl			;1e0b
	ld hl,0ef5dh		;1e0c
	ld ix,0ed79h		;1e0f
l1e13h:
	ld (ix+000h),l		;1e13
	ld (ix+001h),h		;1e16
	ld (ix+003h),c		;1e19
	add hl,de			;1e1c
	ex (sp),hl			;1e1d
	ex de,hl			;1e1e
	add ix,de		;1e1f
	ex de,hl			;1e21
	ex (sp),hl			;1e22
	djnz l1e13h		;1e23
	pop hl			;1e25
	ret			;1e26
	push de			;1e27
	call l1e37h		;1e28
	ld h,a			;1e2b
	ld l,000h		;1e2c
	pop de			;1e2e
	call sub_0db3h		;1e2f
	inc de			;1e32
	inc de			;1e33
	jp sub_0db3h		;1e34
l1e37h:
	ld b,a			;1e37
	ld a,i		;1e38
	push af			;1e3a
	ld a,b			;1e3b
	push af			;1e3c
	and 080h		;1e3d
	ld c,000h		;1e3f
	ld a,(0cf01h)		;1e41
	ld b,a			;1e44
	ld hl,0ed7ch		;1e45
	jr z,l1e59h		;1e48
	ld c,008h		;1e4a
	ld a,c			;1e4c
	neg		;1e4d
	add a,b			;1e4f
	ld b,a			;1e50
	ld e,c			;1e51
	ld d,000h		;1e52
	sla e		;1e54
	sla e		;1e56
	add hl,de			;1e58
l1e59h:
	ld de,l0003h+1		;1e59
l1e5ch:
	ld a,(hl)			;1e5c
	and a			;1e5d
	jr z,l1e68h		;1e5e
l1e60h:
	inc c			;1e60
	add hl,de			;1e61
	djnz l1e5ch		;1e62
	pop af			;1e64
	scf			;1e65
	jr l1e72h		;1e66
l1e68h:
	ld a,(hl)			;1e68
	and a			;1e69
	jr z,l1e6eh		;1e6a
	jr l1e60h		;1e6c
l1e6eh:
	pop af			;1e6e
	ld (hl),a			;1e6f
	ld a,c			;1e70
	and a			;1e71
l1e72h:
	pop bc			;1e72
	bit 2,c		;1e73
	ret z			;1e75
	ret			;1e76
l1e77h:
	ld c,e			;1e77
	res 7,e		;1e78
	push bc			;1e7a
	call sub_1ee7h		;1e7b
	pop bc			;1e7e
	ld b,(hl)			;1e7f
	inc e			;1e80
	ld a,0dfh		;1e81
	add a,e			;1e83
	ld a,b			;1e84
	jr nz,l1e94h		;1e85
	ld d,(ix+002h)		;1e87
	xor a			;1e8a
	bit 7,c		;1e8b
	jr nz,l1e92h		;1e8d
	ld (ix+003h),a		;1e8f
l1e92h:
	ld e,a			;1e92
	ld a,b			;1e93
l1e94h:
	ret			;1e94
l1e95h:
	push af			;1e95
	call sub_1ee7h		;1e96
	pop bc			;1e99
	push bc			;1e9a
	ld (hl),b			;1e9b
	inc e			;1e9c
	ld a,0dfh		;1e9d
	add a,e			;1e9f
	jr nz,l1eb9h		;1ea0
	ld a,(ix+003h)		;1ea2
	push de			;1ea5
	push ix		;1ea6
	call l1e37h		;1ea8
	pop ix		;1eab
	pop de			;1ead
	push af			;1eae
	dec e			;1eaf
	pop af			;1eb0
	jr c,l1eb9h		;1eb1
	ld (ix+002h),a		;1eb3
	ld d,a			;1eb6
	ld e,000h		;1eb7
l1eb9h:
	pop bc			;1eb9
	ld a,b			;1eba
	ret			;1ebb
l1ebch:
	push bc			;1ebc
	push hl			;1ebd
	ld a,(hl)			;1ebe
	call l1e95h		;1ebf
	pop hl			;1ec2
	pop bc			;1ec3
	ret c			;1ec4
	inc hl			;1ec5
	djnz l1ebch		;1ec6
	ret			;1ec8
l1ec9h:
	push de			;1ec9
	push hl			;1eca
	call sub_1ee7h		;1ecb
	pop hl			;1ece
	push hl			;1ecf
	ld a,d			;1ed0
	cp h			;1ed1
	jr z,l1ee4h		;1ed2
l1ed4h:
	ld d,(ix+002h)		;1ed4
	push hl			;1ed7
	call sub_1ee7h		;1ed8
	pop hl			;1edb
	ld (ix+003h),000h		;1edc
	ld a,d			;1ee0
	cp h			;1ee1
	jr nz,l1ed4h		;1ee2
l1ee4h:
	pop hl			;1ee4
	pop de			;1ee5
	ret			;1ee6
sub_1ee7h:
	ld b,000h		;1ee7
	ld c,d			;1ee9
	sla c		;1eea
	rl b		;1eec
	sla c		;1eee
	rl b		;1ef0
	ld hl,0ed79h		;1ef2
	add hl,bc			;1ef5
	push hl			;1ef6
	pop ix		;1ef7
	ld c,(hl)			;1ef9
	inc hl			;1efa
	ld b,(hl)			;1efb
	ld l,e			;1efc
	ld h,000h		;1efd
	add hl,bc			;1eff
	ret			;1f00
sub_1f01h:
	ld hl,(0ccd5h)		;1f01
	ld de,0fffch		;1f04
	add hl,de			;1f07
	ld (0ccd5h),hl		;1f08
	ld hl,0ccdbh		;1f0b
	ld (0cb9ch),hl		;1f0e
	call sub_2553h		;1f11
	cp 00dh		;1f14
	jr nz,l1f1fh		;1f16
	ld a,0feh		;1f18
	ld (0cba2h),a		;1f1a
	jr l1f73h		;1f1d
l1f1fh:
	ld a,0ffh		;1f1f
	ld (0cba2h),a		;1f21
	ld ix,01319h		;1f24
	ld bc,l000dh		;1f28
l1f2bh:
	ld hl,(0cb9ch)		;1f2b
	push bc			;1f2e
	push ix		;1f2f
	ld b,008h		;1f31
	ld c,000h		;1f33
l1f35h:
	ld a,(ix+000h)		;1f35
	and 07fh		;1f38
	ld d,a			;1f3a
	ld a,(hl)			;1f3b
	call sub_250bh		;1f3c
	cp d			;1f3f
	jr nz,l1f67h		;1f40
	inc ix		;1f42
	inc hl			;1f44
	ld a,(hl)			;1f45
	call sub_2548h		;1f46
	push af			;1f49
	ld a,(ix-001h)		;1f4a
	or c			;1f4d
	ld c,a			;1f4e
	pop af			;1f4f
	jr z,l1f54h		;1f50
	djnz l1f35h		;1f52
l1f54h:
	bit 7,c		;1f54
	jr z,l1f67h		;1f56
	pop ix		;1f58
	pop bc			;1f5a
	ld (0cba0h),ix		;1f5b
	ld a,(ix+008h)		;1f5f
	ld (0cba2h),a		;1f62
	jr l1f6ah		;1f65
l1f67h:
	pop ix		;1f67
	pop bc			;1f69
l1f6ah:
	add ix,bc		;1f6a
	ld a,(ix+000h)		;1f6c
	cp 0ffh		;1f6f
	jr nz,l1f2bh		;1f71
l1f73h:
	ret			;1f73
sub_1f74h:
	ld hl,0cd57h		;1f74
	ld (0cba2h),hl		;1f77
	xor a			;1f7a
	ld (0cb9eh),a		;1f7b
l1f7eh:
	call sub_2553h		;1f7e
	jr nc,l1f8ch		;1f81
	ld hl,(0cb9ch)		;1f83
	inc hl			;1f86
	ld (0cb9ch),hl		;1f87
	jr l1f7eh		;1f8a
l1f8ch:
	cp 00dh		;1f8c
	jp z,l20edh		;1f8e
	ld hl,0cb9eh		;1f91
	inc (hl)			;1f94
	ld a,(0c275h)		;1f95
	and 002h		;1f98
	jr nz,l1fd4h		;1f9a
	ld a,(ix+008h)		;1f9c
	and 007h		;1f9f
	jr nz,l1febh		;1fa1
	ld hl,l20eeh		;1fa3
	ld b,002h		;1fa6
	call sub_2579h		;1fa8
	jr nc,l1fc6h		;1fab
	ld hl,l20f2h		;1fad
	ld b,001h		;1fb0
	call sub_2579h		;1fb2
	jr nc,l1fc6h		;1fb5
	ld a,010h		;1fb7
l1fb9h:
	ld hl,0cb9eh		;1fb9
	or (hl)			;1fbc
	ld (hl),a			;1fbd
	jp l20edh		;1fbe
	ld a,0ffh		;1fc1
	jr l1fc6h		;1fc3
	xor a			;1fc5
l1fc6h:
	and (ix+009h)		;1fc6
	ld hl,(0cba2h)		;1fc9
	ld (hl),a			;1fcc
	jp l20edh		;1fcd
l1fd0h:
	cp 002h		;1fd0
	jr nz,l1ffdh		;1fd2
l1fd4h:
	ld a,(ix+009h)		;1fd4
	ld hl,0cb9eh		;1fd7
	cp (hl)			;1fda
	jr nc,l1fe1h		;1fdb
	ld a,020h		;1fdd
	jr l1fb9h		;1fdf
l1fe1h:
	call sub_23fch		;1fe1
	jp nc,l20eah		;1fe4
	ld a,060h		;1fe7
	jr l1fb9h		;1fe9
l1febh:
	cp 001h		;1feb
	jr nz,l1fd0h		;1fed
	ld hl,020fah		;1fef
	ld b,001h		;1ff2
	call sub_2579h		;1ff4
	jr nc,l1fc6h		;1ff7
	ld a,010h		;1ff9
	jr l1fb9h		;1ffb
l1ffdh:
	cp 003h		;1ffd
	jr nz,l202fh		;1fff
	ld hl,(0ccd5h)		;2001
	ld de,0ccdah		;2004
	add hl,de			;2007
	ld a,(hl)			;2008
	cp 00dh		;2009
	jr nz,l200fh		;200b
	ld (hl),000h		;200d
l200fh:
	inc hl			;200f
	ld (hl),000h		;2010
	ld de,(0cba2h)		;2012
	ld hl,(0cb9ch)		;2016
	ld b,000h		;2019
	ld c,(ix+009h)		;201b
l201eh:
	ld a,(hl)			;201e
	or a			;201f
l2020h:
	jr nz,l2026h		;2020
	ld (de),a			;2022
	jp l20edh		;2023
l2026h:
	ldi		;2026
	jp pe,l201eh		;2028
	ld a,040h		;202b
	jr l1fb9h		;202d
l202fh:
	cp 007h		;202f
l2031h:
	jr nz,l208ch		;2031
	call sub_249ah		;2033
	jr nc,l203dh		;2036
	ld a,010h		;2038
	jp l1fb9h		;203a
l203dh:
	call sub_2064h		;203d
	ld b,a			;2040
	and 0f0h		;2041
	ld a,b			;2043
	jp nz,l1fb9h		;2044
	ld a,(ix+008h)		;2047
	rlca			;204a
l204bh:
	rlca			;204b
	rlca			;204c
	and 003h		;204d
	jp z,l20edh		;204f
	inc a			;2052
sub_2053h:
	ld hl,(0cba2h)		;2053
	ld (hl),000h		;2056
	ld hl,0cb9eh		;2058
	cp (hl)			;205b
	jp nc,l1f7eh		;205c
	ld a,020h		;205f
	jp l1fb9h		;2061
sub_2064h:
	ld hl,(0cba2h)		;2064
	ld (hl),a			;2067
	ld a,(ix+009h)		;2068
	bit 7,(ix+008h)		;206b
	jr z,l2081h		;206f
	rra			;2071
	rra			;2072
	rra			;2073
	rra			;2074
	and 00fh		;2075
	ld b,a			;2077
	ld a,(hl)			;2078
	cp b			;2079
	jr c,l2089h		;207a
	ld a,(ix+009h)		;207c
	and 00fh		;207f
l2081h:
	cp (hl)			;2081
	inc hl			;2082
	ld (0cba2h),hl		;2083
	ld a,000h		;2086
	ret nc			;2088
l2089h:
	ld a,050h		;2089
	ret			;208b
l208ch:
	cp 005h		;208c
	jr nz,l20a4h		;208e
	call sub_24a0h		;2090
	jr nc,l209ah		;2093
	ld a,010h		;2095
	jp l1fb9h		;2097
l209ah:
	ld de,(0cba2h)		;209a
	call sub_0db3h		;209e
	ld a,000h		;20a1
	ret			;20a3
l20a4h:
	cp 004h		;20a4
	jr nz,l20e5h		;20a6
	ld hl,020f6h		;20a8
	ld b,001h		;20ab
	call sub_2579h		;20ad
	jr nc,l20b7h		;20b0
l20b2h:
	ld a,010h		;20b2
l20b4h:
	jp l1fb9h		;20b4
l20b7h:
	ld hl,(0cba2h)		;20b7
	ld (hl),a			;20ba
	inc hl			;20bb
	ld (0cba2h),hl		;20bc
	ld hl,0cb9eh		;20bf
	inc (hl)			;20c2
l20c3h:
	call sub_2553h		;20c3
	jr nc,l20d1h		;20c6
	ld hl,(0cb9ch)		;20c8
	inc hl			;20cb
l20cch:
	ld (0cb9ch),hl		;20cc
	jr l20c3h		;20cf
l20d1h:
	cp 00dh		;20d1
	jr z,l20b2h		;20d3
	call sub_249ah		;20d5
	jr c,l20b2h		;20d8
	call sub_2064h		;20da
	ld b,a			;20dd
	and 0f0h		;20de
	ld a,b			;20e0
	jr nz,l20b4h		;20e1
	jr l20edh		;20e3
l20e5h:
	ld a,070h		;20e5
	jp l1fb9h		;20e7
l20eah:
	jp l1f7eh		;20ea
l20edh:
	ret			;20ed
l20eeh:
	ld c,a			;20ee
	adc a,04fh		;20ef
	ld b,(hl)			;20f1
l20f2h:
	ld e,c			;20f2
	jr nz,$+80		;20f3
	jr nz,$+71		;20f5
	jr nz,l213ah		;20f7
	jr nz,$+86		;20f9
	jr nz,$+69		;20fb
	jr nz,l20cch		;20fd
	inc e			;20ff
	ld hl,l0920h+1		;2100
	ld hl,0c0cdh		;2103
	ld b,e			;2106
	jr l2130h		;2107
	ld (hl),a			;2109
	ld h,c			;210a
	ld (hl),e			;210b
	and b			;210c
sub_210dh:
	ld a,(ix+008h)		;210d
	and 007h		;2110
	cp 006h		;2112
	jp z,l21efh		;2114
	call sub_211ch		;2117
	jr l2130h		;211a
sub_211ch:
	push ix		;211c
	pop hl			;211e
	ld b,008h		;211f
l2121h:
	ld a,(hl)			;2121
	and 07fh		;2122
	call sub_42f9h		;2124
	inc hl			;2127
	djnz l2121h		;2128
	ld a,020h		;212a
	call sub_42f9h		;212c
	ret			;212f
l2130h:
	call sub_23e3h		;2130
	ld a,(ix+008h)		;2133
	and 00fh		;2136
	jr nz,$+21		;2138
l213ah:
	ld a,(hl)			;213a
	and (ix+009h)		;213b
	ld hl,l20eeh		;213e
	ld de,l214ah		;2141
	call sub_2590h		;2144
	jp l21d7h		;2147
l214ah:
	ld c,a			;214a
	ld b,(hl)			;214b
	add a,0feh		;214c
	ld bc,00f20h		;214e
	ld a,(hl)			;2151
	and (ix+009h)		;2152
	ld hl,l2304h		;2155
	ld de,02309h		;2158
	call sub_2590h		;215b
	jr l21d7h		;215e
	cp 002h		;2160
	jr nz,l217eh		;2162
	ld a,(hl)			;2164
	and a			;2165
	jr z,l21d7h		;2166
	ld de,l0006h		;2168
	ld a,(ix+009h)		;216b
l216eh:
	add hl,de			;216e
	call sub_4281h		;216f
	inc hl			;2172
	ld a,(hl)			;2173
	and a			;2174
	jr z,l21d7h		;2175
	call sub_2292h		;2177
	djnz l216eh		;217a
	jr l21d7h		;217c
l217eh:
	cp 003h		;217e
	jr nz,l2187h		;2180
	call sub_43d1h		;2182
	jr l21dch		;2185
l2187h:
	cp 004h		;2187
	jr nz,l21a1h		;2189
	call sub_23e3h		;218b
	ld a,(hl)			;218e
	push hl			;218f
	ld hl,l22f8h		;2190
	ld de,l22feh		;2193
	call sub_2590h		;2196
	pop hl			;2199
	inc hl			;219a
	ld a,(hl)			;219b
	call sub_42abh		;219c
	jr l21d7h		;219f
l21a1h:
	cp 005h		;21a1
	jr nz,l21b1h		;21a3
	call sub_23e3h		;21a5
	call sub_0dc5h		;21a8
	ex de,hl			;21ab
	call sub_42aeh		;21ac
	jr l21d7h		;21af
l21b1h:
	cp 007h		;21b1
	jr nz,l21c5h		;21b3
	call sub_23e3h		;21b5
l21b8h:
	ld a,(hl)			;21b8
	push hl			;21b9
	call sub_42abh		;21ba
	pop hl			;21bd
	call sub_21ddh		;21be
	jr z,l21d7h		;21c1
	jr l21b8h		;21c3
l21c5h:
	cp 00fh		;21c5
	jr nz,l21dch		;21c7
	call sub_23e3h		;21c9
l21cch:
	ld a,(hl)			;21cc
	push hl			;21cd
	call sub_42cfh		;21ce
	pop hl			;21d1
	call sub_21ddh		;21d2
	jr nz,l21cch		;21d5
l21d7h:
	ld a,00dh		;21d7
	call sub_42f9h		;21d9
l21dch:
	ret			;21dc
sub_21ddh:
	ld a,(ix+008h)		;21dd
	and 060h		;21e0
	ret z			;21e2
	ld a,(hl)			;21e3
	and a			;21e4
	ret z			;21e5
	inc hl			;21e6
	ld a,(hl)			;21e7
	and a			;21e8
	ret z			;21e9
	call sub_2292h		;21ea
	and a			;21ed
	ret			;21ee
l21efh:
	ld a,(ix+008h)		;21ef
	cp 056h		;21f2
	jr z,l2210h		;21f4
	cp 0beh		;21f6
	jr z,l2210h		;21f8
	cp 066h		;21fa
	jr z,l2210h		;21fc
	cp 026h		;21fe
	jr nz,l2213h		;2200
	call sub_211ch		;2202
	call sub_23e3h		;2205
	call sub_2214h		;2208
	call sub_42fch		;220b
	jr l2213h		;220e
l2210h:
	call sub_2243h		;2210
l2213h:
	ret			;2213
sub_2214h:
	ld de,l0006h		;2214
	add hl,de			;2217
	push hl			;2218
	push de			;2219
	call sub_4281h		;221a
	pop de			;221d
	pop hl			;221e
	inc hl			;221f
l2220h:
	ld a,(hl)			;2220
	and a			;2221
	jr z,l223dh		;2222
	add hl,de			;2224
sub_2225h:
	push hl			;2225
	push de			;2226
	ld hl,l223eh		;2227
	call l43c0h		;222a
	pop de			;222d
	pop hl			;222e
l222fh:
	call sub_4281h		;222f
	inc hl			;2232
	ld a,(hl)			;2233
	and a			;2234
	jr z,l223dh		;2235
	call sub_2292h		;2237
	add hl,de			;223a
	jr l222fh		;223b
l223dh:
	ret			;223d
l223eh:
	jr nz,$+88		;223e
	ld c,c			;2240
	ld b,c			;2241
	and b			;2242
sub_2243h:
	ld hl,l2297h		;2243
	call l43c0h		;2246
	ld a,(iy+007h)		;2249
	and a			;224c
	jr nz,l2254h		;224d
	ld hl,022a6h		;224f
	jr l227eh		;2252
l2254h:
	dec a			;2254
	jr nz,l225ch		;2255
	ld hl,022b2h		;2257
	jr l227eh		;225a
l225ch:
	dec a			;225c
	jr nz,l2264h		;225d
	ld hl,l22c5h		;225f
l2262h:
	jr l227eh		;2262
l2264h:
	dec a			;2264
	jr nz,l226ch		;2265
	ld hl,l22d5h		;2267
	jr l227eh		;226a
l226ch:
	ld hl,l22ebh		;226c
	call l43c0h		;226f
	push iy		;2272
	pop de			;2274
	ld hl,0ff81h		;2275
	add hl,de			;2278
	call sub_2214h		;2279
	jr l2281h		;227c
l227eh:
	call l43c0h		;227e
l2281h:
	bit 2,(iy+02eh)		;2281
	jr z,l228dh		;2285
	ld hl,l2290h		;2287
	call l43c0h		;228a
l228dh:
	jp sub_42fch		;228d
l2290h:
	jr nz,l2262h		;2290
sub_2292h:
	ld a,02ch		;2292
	jp sub_42f9h		;2294
l2297h:
	ld c,h			;2297
	ld l,c			;2298
	ld l,(hl)			;2299
	ld l,e			;229a
	jr nz,l2310h		;229b
	ld (hl),h			;229d
	ld h,c			;229e
	ld (hl),h			;229f
	ld h,l			;22a0
	jr nz,l230ch		;22a1
	ld (hl),e			;22a3
	ld a,(044a0h)		;22a4
	ld c,c			;22a7
	ld d,e			;22a8
	ld b,e			;22a9
	ld c,a			;22aa
	ld c,(hl)			;22ab
	ld c,(hl)			;22ac
	ld b,l			;22ad
	ld b,e			;22ae
	ld d,h			;22af
	ld b,l			;22b0
	call nz,l4f43h		;22b1
	ld c,(hl)			;22b4
	ld c,(hl)			;22b5
	ld b,l			;22b6
	ld b,e			;22b7
	ld d,h			;22b8
	jr nz,l2324h		;22b9
	ld l,(hl)			;22bb
	jr nz,l232eh		;22bc
	ld (hl),d			;22be
	ld l,a			;22bf
	ld h,a			;22c0
	ld (hl),d			;22c1
	ld h,l			;22c2
	ld (hl),e			;22c3
	di			;22c4
l22c5h:
	ld b,(hl)			;22c5
	ld d,d			;22c6
	ld c,l			;22c7
	ld d,d			;22c8
	jr nz,l2334h		;22c9
	ld l,(hl)			;22cb
	jr nz,l233eh		;22cc
	ld (hl),d			;22ce
	ld l,a			;22cf
	ld h,a			;22d0
	ld (hl),d			;22d1
	ld h,l			;22d2
	ld (hl),e			;22d3
	di			;22d4
l22d5h:
	ld b,h			;22d5
	ld c,c			;22d6
	ld d,e			;22d7
	ld b,e			;22d8
	ld c,a			;22d9
	ld c,(hl)			;22da
	ld c,(hl)			;22db
	ld b,l			;22dc
	ld b,e			;22dd
	ld d,h			;22de
	jr nz,$+107		;22df
	ld l,(hl)			;22e1
	jr nz,$+114		;22e2
	ld (hl),d			;22e4
	ld l,a			;22e5
	ld h,a			;22e6
	ld (hl),d			;22e7
	ld h,l			;22e8
	ld (hl),e			;22e9
	di			;22ea
l22ebh:
	ld b,e			;22eb
	ld c,a			;22ec
	ld c,(hl)			;22ed
	ld c,(hl)			;22ee
	ld b,l			;22ef
	ld b,e			;22f0
	ld d,h			;22f1
	ld b,l			;22f2
	ld b,h			;22f3
	jr nz,l236ah		;22f4
	ld l,a			;22f6
	and b			;22f7
l22f8h:
	ld b,l			;22f8
	ld d,(hl)			;22f9
	ld b,l			;22fa
	ld d,d			;22fb
	ld e,c			;22fc
	and b			;22fd
l22feh:
	ld b,c			;22fe
	ld b,(hl)			;22ff
	ld d,h			;2300
	ld b,l			;2301
	ld d,d			;2302
	and b			;2303
l2304h:
	ld d,h			;2304
	ld d,d			;2305
	ld b,c			;2306
	ld c,(hl)			;2307
	out (043h),a		;2308
	ld c,a			;230a
	ld c,(hl)			;230b
l230ch:
	ld d,(hl)			;230c
	ld b,l			;230d
	ld d,d			;230e
	ld d,e			;230f
l2310h:
	push bc			;2310
sub_2311h:
	ld hl,0cd57h		;2311
	ld (0cba2h),hl		;2314
	call sub_23e3h		;2317
	ld (0cb9eh),hl		;231a
	ld a,(0c275h)		;231d
	and 002h		;2320
	jr nz,l2345h		;2322
l2324h:
	ld a,(ix+008h)		;2324
	and 007h		;2327
	di			;2329
	jr z,l2330h		;232a
	cp 001h		;232c
l232eh:
	jr nz,l2341h		;232e
l2330h:
	ld a,(ix+009h)		;2330
	cpl			;2333
l2334h:
	and (hl)			;2334
	push hl			;2335
	di			;2336
	ld hl,(0cba2h)		;2337
	or (hl)			;233a
	pop hl			;233b
	ei			;233c
	ld (hl),a			;233d
l233eh:
	jp l23e1h		;233e
l2341h:
	cp 002h		;2341
	jr nz,l235ch		;2343
l2345h:
	ld hl,(0cba2h)		;2345
	ld de,(0cb9eh)		;2348
l234ch:
	ld bc,l0006h+1		;234c
	ldir		;234f
	ld a,(hl)			;2351
	and a			;2352
	jr nz,l234ch		;2353
	ex de,hl			;2355
	ld (hl),000h		;2356
	dec hl			;2358
	jp l23e1h		;2359
l235ch:
	cp 003h		;235c
	jr nz,l2380h		;235e
	ld hl,(0cba2h)		;2360
	ld de,(0cb9eh)		;2363
	ld a,(hl)			;2367
	cp 025h		;2368
l236ah:
	jr z,l2370h		;236a
	cp 026h		;236c
	jr nz,l2375h		;236e
l2370h:
	xor a			;2370
	ld (de),a			;2371
	jp l23e1h		;2372
l2375h:
	ld bc,00080h		;2375
l2378h:
	ld a,(hl)			;2378
	ldi		;2379
	or a			;237b
	jr nz,l2378h		;237c
	jr l23e1h		;237e
l2380h:
	cp 004h		;2380
	jr nz,l239fh		;2382
l2384h:
	ld hl,(0cba2h)		;2384
	ld de,(0cb9eh)		;2387
	ld bc,l0002h		;238b
	ldir		;238e
	dec de			;2390
	dec de			;2391
	ld hl,0c036h		;2392
	and a			;2395
	sbc hl,de		;2396
	jr nz,l23e1h		;2398
	ld (0cf08h),hl		;239a
	jr l23e1h		;239d
l239fh:
	cp 005h		;239f
	jr nz,l23c1h		;23a1
	ld de,(0cb9eh)		;23a3
	ld hl,0c03ah		;23a7
	and a			;23aa
	sbc hl,de		;23ab
	jr nz,l2384h		;23ad
	di			;23af
	ld hl,(0cba2h)		;23b0
	ld de,(0cb9eh)		;23b3
	ld bc,l0002h		;23b7
	ldir		;23ba
	call l044fh		;23bc
	jr l23e1h		;23bf
l23c1h:
	cp 007h		;23c1
	jr nz,l23e1h		;23c3
l23c5h:
	ld hl,(0cba2h)		;23c5
	ld a,(hl)			;23c8
	inc hl			;23c9
	ld (0cba2h),hl		;23ca
	ld hl,(0cb9eh)		;23cd
	ld (hl),a			;23d0
	inc hl			;23d1
	ld (0cb9eh),hl		;23d2
	ld b,a			;23d5
	ld a,(ix+008h)		;23d6
	and 060h		;23d9
	jr z,l23e1h		;23db
	ld a,b			;23dd
	and a			;23de
	jr nz,l23c5h		;23df
l23e1h:
	ei			;23e1
	ret			;23e2
sub_23e3h:
	ld e,(ix+00ah)		;23e3
	ld d,(ix+00bh)		;23e6
	bit 4,(ix+008h)		;23e9
	jr z,l23fah		;23ed
	di			;23ef
	push iy		;23f0
	add iy,de		;23f2
	push iy		;23f4
	pop de			;23f6
	ei			;23f7
	pop iy		;23f8
l23fah:
	ex de,hl			;23fa
	ret			;23fb
sub_23fch:
	ld bc,l0600h		;23fc
	ld hl,(0cb9ch)		;23ff
	ld de,(0cba2h)		;2402
	ld a,(hl)			;2406
	cp 025h		;2407
	jr z,l240fh		;2409
	cp 026h		;240b
	jr nz,l241dh		;240d
l240fh:
	push ix		;240f
	pop hl			;2411
	ld de,l1625h		;2412
	and a			;2415
	sbc hl,de		;2416
	jr nz,l248eh		;2418
	jp l2486h		;241a
l241dh:
	ld a,(hl)			;241d
	and 07fh		;241e
	call sub_250bh		;2420
	cp 02dh		;2423
	jr z,l2448h		;2425
	call sub_2548h		;2427
	jr z,l2448h		;242a
	call sub_2529h		;242c
	jr z,l2438h		;242f
	call sub_2533h		;2431
	jr nz,l248eh		;2434
	set 7,c		;2436
l2438h:
	sla a		;2438
	ld (de),a			;243a
	inc de			;243b
	ld (0cba2h),de		;243c
	inc hl			;2440
	ld (0cb9ch),hl		;2441
	djnz l241dh		;2444
	jr l2452h		;2446
l2448h:
	ld a,040h		;2448
l244ah:
	ld (de),a			;244a
	inc de			;244b
	djnz l244ah		;244c
	ld (0cba2h),de		;244e
l2452h:
	ld a,(hl)			;2452
	call sub_2548h		;2453
	jr nz,l2462h		;2456
	ld a,060h		;2458
	ld (de),a			;245a
	inc de			;245b
	ld (0cba2h),de		;245c
	jr l2486h		;2460
l2462h:
	cp 02dh		;2462
	jr nz,l248eh		;2464
	inc hl			;2466
	ld (0cb9ch),hl		;2467
	call sub_24b0h		;246a
	jr c,l248eh		;246d
	call sub_24b8h		;246f
	jr c,l248eh		;2472
	cp 010h		;2474
	jr nc,l248eh		;2476
	sla a		;2478
	or 060h		;247a
	ld de,(0cba2h)		;247c
	ld (de),a			;2480
	inc de			;2481
	ld (0cba2h),de		;2482
l2486h:
	ld hl,(0cba2h)		;2486
	ld (hl),000h		;2489
	and a			;248b
	jr l248fh		;248c
l248eh:
	scf			;248e
l248fh:
	ret			;248f
l2490h:
	ld de,(0cb9ch)		;2490
	call sub_24e4h		;2494
	ret			;2497
	jr sub_24b8h		;2498
sub_249ah:
	call sub_24a0h		;249a
	ret c			;249d
	jr sub_24b8h		;249e
sub_24a0h:
	ld hl,(0cb9ch)		;24a0
	ld a,(hl)			;24a3
	cp 024h		;24a4
	jp nz,sub_24b0h		;24a6
	inc hl			;24a9
	ld (0cb9ch),hl		;24aa
	jp l2490h		;24ad
sub_24b0h:
	ld de,(0cb9ch)		;24b0
	call sub_24c4h		;24b4
	ret			;24b7
sub_24b8h:
	ld (0cb9ch),de		;24b8
	ld a,h			;24bc
	and a			;24bd
	jr z,l24c2h		;24be
	scf			;24c0
	ret			;24c1
l24c2h:
	ld a,l			;24c2
	ret			;24c3
sub_24c4h:
	ld hl,l0000h		;24c4
l24c7h:
	ld a,(de)			;24c7
	and 07fh		;24c8
	call sub_2548h		;24ca
	ret z			;24cd
	sub 030h		;24ce
	ret c			;24d0
	and a			;24d1
	ret m			;24d2
	cp 00ah		;24d3
	ccf			;24d5
	ret c			;24d6
	inc de			;24d7
	add hl,hl			;24d8
	push hl			;24d9
	add hl,hl			;24da
	add hl,hl			;24db
	pop bc			;24dc
	add hl,bc			;24dd
	ld c,a			;24de
	ld b,000h		;24df
	add hl,bc			;24e1
	jr l24c7h		;24e2
sub_24e4h:
	ld hl,l0000h		;24e4
l24e7h:
	ld a,(de)			;24e7
	call sub_250bh		;24e8
	call sub_2548h		;24eb
	ret z			;24ee
	sub 030h		;24ef
	ret c			;24f1
	add a,0e9h		;24f2
	ret c			;24f4
	add a,006h		;24f5
	jp p,l24fdh		;24f7
	add a,007h		;24fa
	ret c			;24fc
l24fdh:
	add a,00ah		;24fd
	or a			;24ff
	ld b,000h		;2500
	ld c,a			;2502
	add hl,hl			;2503
	add hl,hl			;2504
	add hl,hl			;2505
	add hl,hl			;2506
	add hl,bc			;2507
	inc de			;2508
	jr l24e7h		;2509
sub_250bh:
	and 07fh		;250b
	cp 061h		;250d
	ret c			;250f
	cp 07bh		;2510
	ret nc			;2512
	and 05fh		;2513
	ret			;2515
sub_2516h:
	ld de,(0cb9ch)		;2516
l251ah:
	ld a,(de)			;251a
	call sub_250bh		;251b
	ld c,a			;251e
	ld a,(hl)			;251f
	and 07fh		;2520
	cp c			;2522
	ret nz			;2523
	inc hl			;2524
	inc de			;2525
	djnz l251ah		;2526
	ret			;2528
sub_2529h:
	cp 030h		;2529
	jr c,l2541h		;252b
	cp 03ah		;252d
	jr nc,l2541h		;252f
	jr l253bh		;2531
sub_2533h:
	cp 041h		;2533
	jr c,l2541h		;2535
	cp 05bh		;2537
	jr nc,l2541h		;2539
l253bh:
	push bc			;253b
	ld b,a			;253c
	xor a			;253d
	ld a,b			;253e
	pop bc			;253f
	ret			;2540
l2541h:
	push bc			;2541
	ld b,a			;2542
	or 0ffh		;2543
	ld a,b			;2545
	pop bc			;2546
	ret			;2547
sub_2548h:
	and 07fh		;2548
	cp 020h		;254a
	ret z			;254c
	cp 02ch		;254d
	ret z			;254f
	cp 00dh		;2550
	ret			;2552
sub_2553h:
	set 0,c		;2553
	ld hl,(0cb9ch)		;2555
	ld de,(0ccd5h)		;2558
l255ch:
	ld a,(hl)			;255c
	and 07fh		;255d
	call sub_2548h		;255f
	jr nz,l2575h		;2562
	res 0,c		;2564
	cp 00dh		;2566
	jr z,l2575h		;2568
	inc hl			;256a
	ld (0cb9ch),hl		;256b
	dec de			;256e
	ld (0ccd5h),de		;256f
	jr l255ch		;2573
l2575h:
	ld b,a			;2575
	push bc			;2576
	pop af			;2577
	ret			;2578
sub_2579h:
	push bc			;2579
	push hl			;257a
	call sub_2516h		;257b
	pop hl			;257e
	pop bc			;257f
l2580h:
	jr nz,l2585h		;2580
	or 0ffh		;2582
	ret			;2584
l2585h:
	inc hl			;2585
	inc hl			;2586
	call sub_2516h		;2587
	jr nz,l258eh		;258a
	xor a			;258c
	ret			;258d
l258eh:
	scf			;258e
	ret			;258f
sub_2590h:
	and a			;2590
	jr nz,l2594h		;2591
	ex de,hl			;2593
l2594h:
	jp l43c0h		;2594
l2597h:
	push bc			;2597
	ld a,(hl)			;2598
	call sub_25b0h		;2599
	inc hl			;259c
	pop bc			;259d
	djnz l2597h		;259e
	ret			;25a0
l25a1h:
	ld a,(hl)			;25a1
	or a			;25a2
	ret z			;25a3
	push hl			;25a4
	call sub_25b0h		;25a5
	ld a,04eh		;25a8
	out (0f1h),a		;25aa
	pop hl			;25ac
	inc hl			;25ad
	jr l25a1h		;25ae
sub_25b0h:
	push de			;25b0
	ld d,a			;25b1
	ld a,(0bf19h)		;25b2
	bit 0,a		;25b5
	ld a,d			;25b7
	pop de			;25b8
	jp nz,l2ef4h		;25b9
	push af			;25bc
	call l42feh		;25bd
	jr c,l25c4h		;25c0
	pop af			;25c2
	ret			;25c3
l25c4h:
	ld a,04eh		;25c4
	out (0f1h),a		;25c6
	push de			;25c8
	ld de,0bf34h		;25c9
	call l0d43h		;25cc
	pop de			;25cf
	jr c,l25c4h		;25d0
	pop af			;25d2
	jr sub_25b0h		;25d3
sub_25d5h:
	push de			;25d5
	ld de,l0006h		;25d6
	add hl,de			;25d9
	push hl			;25da
	dec hl			;25db
	ld a,(hl)			;25dc
	call sub_42d6h		;25dd
	dec hl			;25e0
	ld a,02fh		;25e1
	call sub_25b0h		;25e3
	ld a,(hl)			;25e6
	call sub_42d6h		;25e7
	dec hl			;25ea
	ld a,02fh		;25eb
	call sub_25b0h		;25ed
	ld a,(hl)			;25f0
	call sub_42d6h		;25f1
	dec hl			;25f4
	ld a,020h		;25f5
	call sub_25b0h		;25f7
	ld a,(hl)			;25fa
	call sub_42d6h		;25fb
	dec hl			;25fe
	ld a,03ah		;25ff
	call sub_25b0h		;2601
	ld a,(hl)			;2604
	call sub_42d6h		;2605
	pop hl			;2608
	pop de			;2609
	ret			;260a
sub_260bh:
	ld a,0ffh		;260b
	ld (0cba0h),a		;260d
l2610h:
	call sub_2553h		;2610
	jr nc,l261eh		;2613
	ld hl,(0cb9ch)		;2615
	inc hl			;2618
	ld (0cb9ch),hl		;2619
	jr l2610h		;261c
l261eh:
	ld b,0ffh		;261e
	cp 00dh		;2620
	jr z,l2652h		;2622
	ld b,a			;2624
	ld a,(ix+009h)		;2625
	cp 002h		;2628
	jr z,l2652h		;262a
	ld a,b			;262c
	cp 026h		;262d
	jr z,l2652h		;262f
	cp 025h		;2631
	jr z,l2652h		;2633
	cp 024h		;2635
	jr z,l2643h		;2637
	call sub_24a0h		;2639
	ld (0cba2h),hl		;263c
	ld b,0ffh		;263f
	jr nc,l264fh		;2641
l2643h:
	ld hl,l2649h		;2643
	jp l25a1h		;2646
l2649h:
	ccf			;2649
	ld h,d			;264a
	ld h,c			;264b
	ld h,h			;264c
	dec c			;264d
	nop			;264e
l264fh:
	ld (0cba0h),a		;264f
l2652h:
	ld a,(ix+009h)		;2652
	or a			;2655
	jp nz,l270dh		;2656
	ld a,b			;2659
	cp 0ffh		;265a
	jr nz,l2643h		;265c
	ld a,(0cba0h)		;265e
	cp 0ffh		;2661
	jp nz,l2699h		;2663
	ld hl,(0cf04h)		;2666
	ld a,(hl)			;2669
	inc hl			;266a
	or (hl)			;266b
	jp z,l267ch		;266c
	dec hl			;266f
l2670h:
	ld e,(hl)			;2670
	inc hl			;2671
	ld d,(hl)			;2672
	ld a,d			;2673
	or e			;2674
	jr z,l267ch		;2675
	call sub_29fah		;2677
	jr l2670h		;267a
l267ch:
	call sub_283bh		;267c
	inc hl			;267f
	inc hl			;2680
	ld de,0bb77h		;2681
	ex de,hl			;2684
	sbc hl,de		;2685
	call sub_2f56h		;2687
	ld hl,l281ah		;268a
	call l25a1h		;268d
	ld hl,(0cf06h)		;2690
	call sub_2f56h		;2693
	jp l2b65h		;2696
l2699h:
	call sub_29d9h		;2699
	jp nz,l2994h		;269c
	ex de,hl			;269f
	inc hl			;26a0
	inc hl			;26a1
	push hl			;26a2
	ld hl,l27f2h		;26a3
	call l25a1h		;26a6
	pop hl			;26a9
	call sub_25d5h		;26aa
	call l2b65h		;26ad
	push hl			;26b0
	ld hl,l27fch		;26b1
	call l25a1h		;26b4
	pop hl			;26b7
	ld b,006h		;26b8
	call l2597h		;26ba
	call l2b65h		;26bd
	push hl			;26c0
	ld hl,l2806h		;26c1
	call l25a1h		;26c4
	pop hl			;26c7
	ld b,006h		;26c8
	call l2597h		;26ca
	call l2b65h		;26cd
	push hl			;26d0
	ld hl,l2810h		;26d1
	call l25a1h		;26d4
	pop hl			;26d7
	call l25a1h		;26d8
	call l2b65h		;26db
	call l2b65h		;26de
	inc hl			;26e1
	call l25a1h		;26e2
	call l2b65h		;26e5
l26e8h:
	call sub_2553h		;26e8
	jr nc,l26f6h		;26eb
l26edh:
	ld hl,(0cb9ch)		;26ed
	inc hl			;26f0
	ld (0cb9ch),hl		;26f1
	jr l26e8h		;26f4
l26f6h:
	cp 00dh		;26f6
	ret z			;26f8
	call sub_2548h		;26f9
	jr z,l26edh		;26fc
	cp 024h		;26fe
	ret z			;2700
	call sub_24a0h		;2701
	ld (0cba2h),hl		;2704
	ld b,0ffh		;2707
	ret c			;2709
	jp l2699h		;270a
l270dh:
	sub 001h		;270d
	jp nz,l2848h		;270f
	ld a,(0cefeh)		;2712
	bit 7,a		;2715
	ret nz			;2717
	ld a,(0cba0h)		;2718
	cp 0ffh		;271b
	jp nz,l274ch		;271d
	ld a,b			;2720
	cp 0ffh		;2721
	jp z,l2643h		;2723
	ld hl,(0cf06h)		;2726
	ld (0cbb7h),hl		;2729
	ld hl,(0cf04h)		;272c
	ld a,(hl)			;272f
	inc hl			;2730
	or (hl)			;2731
	jp z,l2994h		;2732
	ld b,00ah		;2735
l2737h:
	ld hl,(0cf04h)		;2737
	ld e,(hl)			;273a
	inc hl			;273b
	ld d,(hl)			;273c
	ld a,d			;273d
	or e			;273e
	jp z,l276ch		;273f
	inc hl			;2742
	push bc			;2743
	ex de,hl			;2744
	call sub_2772h		;2745
	pop bc			;2748
	djnz l2737h		;2749
	ret			;274b
l274ch:
	ld hl,(0cf04h)		;274c
l274fh:
	ld e,(hl)			;274f
	inc hl			;2750
	ld d,(hl)			;2751
	ld a,d			;2752
	or e			;2753
	jp z,l2994h		;2754
	push de			;2757
	inc hl			;2758
	push hl			;2759
	call sub_0dc5h		;275a
	ex de,hl			;275d
	ld de,(0cba2h)		;275e
	or a			;2762
	sbc hl,de		;2763
	pop de			;2765
	pop hl			;2766
	jr nz,l274fh		;2767
	call sub_2772h		;2769
l276ch:
	ld hl,l27d7h		;276c
	jp l25a1h		;276f
sub_2772h:
	dec de			;2772
	dec de			;2773
	push de			;2774
	push hl			;2775
	or a			;2776
	sbc hl,de		;2777
	push hl			;2779
	pop bc			;277a
	pop hl			;277b
	push hl			;277c
	ld a,(hl)			;277d
	inc hl			;277e
	or (hl)			;277f
	jr nz,l27a8h		;2780
	ex de,hl			;2782
	inc hl			;2783
	inc hl			;2784
	ld e,(hl)			;2785
	inc hl			;2786
	ld d,(hl)			;2787
	ld hl,(0cbb7h)		;2788
	ex de,hl			;278b
	push hl			;278c
	or a			;278d
	sbc hl,de		;278e
	pop hl			;2790
	jr c,l27a8h		;2791
	push bc			;2793
	push hl			;2794
	ld hl,(0cbb7h)		;2795
	ld (0cba2h),hl		;2798
	call sub_29d9h		;279b
	pop hl			;279e
	pop bc			;279f
	jr z,l27a5h		;27a0
	ld hl,(0cbb7h)		;27a2
l27a5h:
	ld (0cf06h),hl		;27a5
l27a8h:
	pop hl			;27a8
l27a9h:
	ld e,(hl)			;27a9
	inc hl			;27aa
	ld d,(hl)			;27ab
	ld a,d			;27ac
	or e			;27ad
	jr z,l27bbh		;27ae
	push de			;27b0
	ex de,hl			;27b1
	sbc hl,bc		;27b2
	ex de,hl			;27b4
	ld (hl),d			;27b5
	dec hl			;27b6
	ld (hl),e			;27b7
	pop hl			;27b8
	jr l27a9h		;27b9
l27bbh:
	push hl			;27bb
	dec hl			;27bc
	sbc hl,bc		;27bd
	ld (0cba8h),hl		;27bf
	ld (0cbaah),hl		;27c2
	pop hl			;27c5
	inc hl			;27c6
	pop de			;27c7
	ex de,hl			;27c8
	push hl			;27c9
	add hl,bc			;27ca
	push hl			;27cb
	ex de,hl			;27cc
	or a			;27cd
	sbc hl,de		;27ce
	push hl			;27d0
	pop bc			;27d1
	pop hl			;27d2
	pop de			;27d3
	ldir		;27d4
	ret			;27d6
l27d7h:
	ld h,l			;27d7
	ld (hl),d			;27d8
	ld h,c			;27d9
	ld (hl),e			;27da
	ld h,l			;27db
	ld h,h			;27dc
	jr nz,$+111		;27dd
	ld h,l			;27df
	ld (hl),e			;27e0
	ld (hl),e			;27e1
	ld h,c			;27e2
	ld h,a			;27e3
	ld h,l			;27e4
	dec c			;27e5
	nop			;27e6
	nop			;27e7
	nop			;27e8
	nop			;27e9
l27eah:
	ld b,c			;27ea
	ld c,h			;27eb
	ld c,h			;27ec
	jr nz,$+34		;27ed
	jr nz,l27feh		;27ef
	nop			;27f1
l27f2h:
	ld d,b			;27f2
	ld l,a			;27f3
	ld (hl),e			;27f4
	ld (hl),h			;27f5
	ld h,l			;27f6
	ld h,h			;27f7
	jr nz,l2834h		;27f8
	jr nz,l27fch		;27fa
l27fch:
	ld b,(hl)			;27fc
	ld (hl),d			;27fd
l27feh:
	ld l,a			;27fe
	ld l,l			;27ff
	jr nz,l2822h		;2800
	jr nz,$+60		;2802
	jr nz,l2806h		;2804
l2806h:
	ld d,h			;2806
	ld l,a			;2807
	jr nz,l282ah		;2808
	jr nz,l282ch		;280a
	jr nz,l2848h		;280c
	jr nz,l2810h		;280e
l2810h:
	ld d,e			;2810
	ld (hl),l			;2811
	ld h,d			;2812
	ld l,d			;2813
	ld h,l			;2814
	ld h,e			;2815
	ld (hl),h			;2816
	ld a,(l0020h)		;2817
l281ah:
	jr nz,l285eh		;281a
	ld a,c			;281c
	ld (hl),h			;281d
	ld h,l			;281e
	ld (hl),e			;281f
	jr nz,$+104		;2820
l2822h:
	ld (hl),d			;2822
	ld h,l			;2823
	ld h,l			;2824
	dec c			;2825
	ld c,(hl)			;2826
	ld h,l			;2827
	ld a,b			;2828
	ld (hl),h			;2829
l282ah:
	jr nz,l2899h		;282a
l282ch:
	ld h,l			;282c
	ld (hl),e			;282d
	ld (hl),e			;282e
	ld h,c			;282f
	ld h,a			;2830
	ld h,l			;2831
	jr nz,l2882h		;2832
l2834h:
	ld (hl),l			;2834
	ld l,l			;2835
	ld h,d			;2836
	ld h,l			;2837
	ld (hl),d			;2838
	jr nz,sub_283bh		;2839
sub_283bh:
	ld de,(0cf04h)		;283b
l283fh:
	ex de,hl			;283f
	call sub_0dc5h		;2840
	ld a,d			;2843
	or e			;2844
	jr nz,l283fh		;2845
	ret			;2847
l2848h:
	sub 001h		;2848
	jp nz,l28eeh		;284a
	ld hl,(0cb9ch)		;284d
	ld a,b			;2850
	cp 0ffh		;2851
	jr nz,l2858h		;2853
	ld hl,l27eah		;2855
l2858h:
	ld (0cba2h),hl		;2858
	ld a,(0cefeh)		;285b
l285eh:
	bit 7,a		;285e
	ret nz			;2860
	ld de,0c013h		;2861
l2864h:
	push de			;2864
	call sub_283bh		;2865
	push hl			;2868
	ld bc,l0018h+1		;2869
	add hl,bc			;286c
	ld de,0bb77h		;286d
	or a			;2870
	sbc hl,de		;2871
	jr c,l287ah		;2873
	pop hl			;2875
	pop de			;2876
	jp l28d5h		;2877
l287ah:
	pop hl			;287a
	inc hl			;287b
	inc hl			;287c
	ld de,(0cf06h)		;287d
	ld (hl),e			;2881
l2882h:
	inc hl			;2882
	ld (hl),d			;2883
	inc hl			;2884
	ex de,hl			;2885
	ld hl,l2fe3h		;2886
	ld a,(0cf0eh)		;2889
	and a			;288c
	jr z,l2892h		;288d
	ld hl,0cf0ah		;288f
l2892h:
	ld bc,l0006h		;2892
	ldir		;2895
	ex de,hl			;2897
	pop de			;2898
l2899h:
	ld b,006h		;2899
l289bh:
	ld a,(de)			;289b
	srl a		;289c
	ld (hl),a			;289e
	inc hl			;289f
	inc de			;28a0
	djnz l289bh		;28a1
	ld de,(0cba2h)		;28a3
	ld b,006h		;28a7
l28a9h:
	ld a,(de)			;28a9
	or a			;28aa
	jr z,l28c5h		;28ab
	cp 00dh		;28ad
	jr z,l28c5h		;28af
	call sub_250bh		;28b1
	call sub_2529h		;28b4
	jr z,l28beh		;28b7
	call sub_2533h		;28b9
	jr nz,l28c5h		;28bc
l28beh:
	ld (hl),a			;28be
	inc de			;28bf
	inc hl			;28c0
	djnz l28a9h		;28c1
	jr l28cah		;28c3
l28c5h:
	ld (hl),020h		;28c5
	inc hl			;28c7
	djnz l28c5h		;28c8
l28cah:
	ld (0cba6h),hl		;28ca
	ld hl,0bf19h		;28cd
	set 4,(hl)		;28d0
	set 5,(hl)		;28d2
	ret			;28d4
l28d5h:
	ld hl,l28dbh		;28d5
	jp l25a1h		;28d8
l28dbh:
	ld h,d			;28db
	ld (hl),l			;28dc
	ld h,(hl)			;28dd
	ld h,(hl)			;28de
	ld h,l			;28df
	ld (hl),d			;28e0
	jr nz,$+113		;28e1
	halt			;28e3
	ld h,l			;28e4
	ld (hl),d			;28e5
	ld h,(hl)			;28e6
	ld l,h			;28e7
	ld l,a			;28e8
	ld (hl),a			;28e9
	ld hl,l0d21h		;28ea
	nop			;28ed
l28eeh:
	ld c,a			;28ee
	ld a,b			;28ef
	cp 0ffh		;28f0
	jp nz,l2643h		;28f2
	ld a,c			;28f5
	sub 001h		;28f6
	jp nz,l2983h		;28f8
	ld hl,(0cf04h)		;28fb
	ld a,(hl)			;28fe
	inc hl			;28ff
	or (hl)			;2900
	jp z,l2994h		;2901
	dec hl			;2904
	ld bc,l0000h		;2905
l2908h:
	ld e,(hl)			;2908
	inc hl			;2909
	ld d,(hl)			;290a
	ld a,d			;290b
	or e			;290c
	jr z,l294eh		;290d
	push bc			;290f
	push de			;2910
	push hl			;2911
	inc hl			;2912
	ld de,l0006h+2		;2913
	add hl,de			;2916
	ld de,0c013h		;2917
	ld b,006h		;291a
l291ch:
	ld a,(de)			;291c
	srl a		;291d
	cp (hl)			;291f
	jr nz,l2929h		;2920
	inc hl			;2922
	inc de			;2923
	djnz l291ch		;2924
	ld a,b			;2926
	jr l293dh		;2927
l2929h:
	ld c,b			;2929
	ld b,000h		;292a
	add hl,bc			;292c
	ld de,0c013h		;292d
	ld b,006h		;2930
l2932h:
	ld a,(de)			;2932
	srl a		;2933
	cp (hl)			;2935
	jr nz,l293dh		;2936
	inc hl			;2938
	inc de			;2939
	djnz l2932h		;293a
	ld a,b			;293c
l293dh:
	pop de			;293d
	pop hl			;293e
	pop bc			;293f
	or a			;2940
	jr nz,l2908h		;2941
	inc bc			;2943
	push bc			;2944
	push hl			;2945
	ex de,hl			;2946
	call sub_29fah		;2947
	pop hl			;294a
	pop bc			;294b
	jr l2908h		;294c
l294eh:
	ld a,b			;294e
	or c			;294f
	jp z,l2994h		;2950
	ret			;2953
l2954h:
	xor a			;2954
	ld hl,(0cba6h)		;2955
	ld (hl),a			;2958
	inc hl			;2959
	ld (hl),a			;295a
	inc hl			;295b
	ld (hl),a			;295c
	dec hl			;295d
	ld (0cba8h),hl		;295e
	ld (0cbaah),hl		;2961
	push hl			;2964
	call sub_283bh		;2965
	pop de			;2968
	ld (hl),e			;2969
	inc hl			;296a
	ld (hl),d			;296b
	ld hl,(0cf06h)		;296c
	inc hl			;296f
	ld (0cf06h),hl		;2970
	ld hl,l32c7h		;2973
	call l25a1h		;2976
l2979h:
	ld hl,0bf19h		;2979
	res 5,(hl)		;297c
	res 4,(hl)		;297e
	res 3,(hl)		;2980
	ret			;2982
l2983h:
	sub 001h		;2983
	jp l29afh		;2985
	ld hl,0bf19h		;2988
l298bh:
	ld hl,l32f1h		;298b
	call l25a1h		;298e
	jp l2979h		;2991
l2994h:
	ld hl,l299ah		;2994
	jp l25a1h		;2997
l299ah:
	ld l,(hl)			;299a
	ld l,a			;299b
	ld (hl),h			;299c
	jr nz,$+104		;299d
	ld l,a			;299f
	ld (hl),l			;29a0
	ld l,(hl)			;29a1
	ld h,h			;29a2
	jr nz,l2a12h		;29a3
	ld h,l			;29a5
	ld (hl),e			;29a6
	ld (hl),e			;29a7
	ld h,c			;29a8
	ld h,a			;29a9
	ld h,l			;29aa
	dec c			;29ab
	nop			;29ac
	nop			;29ad
	nop			;29ae
l29afh:
	sub 001h		;29af
	jp z,l2643h		;29b1
	sub 001h		;29b4
	jp z,l2643h		;29b6
	sub 001h		;29b9
	jp z,l2643h		;29bb
	sub 001h		;29be
	jp z,l2643h		;29c0
	sub 001h		;29c3
	jp nz,l2643h		;29c5
	jp l2643h		;29c8
l29cbh:
	ld b,l			;29cb
	ld c,(hl)			;29cc
	ld b,h			;29cd
	nop			;29ce
	nop			;29cf
	nop			;29d0
	nop			;29d1
l29d2h:
	cpl			;29d2
	ld b,l			;29d3
	ld e,b			;29d4
	nop			;29d5
	nop			;29d6
	nop			;29d7
	nop			;29d8
sub_29d9h:
	ld hl,(0cf04h)		;29d9
l29dch:
	ld e,(hl)			;29dc
	inc hl			;29dd
	ld d,(hl)			;29de
	ld a,d			;29df
	or e			;29e0
	jr z,l29f6h		;29e1
	push de			;29e3
	inc hl			;29e4
	push hl			;29e5
	call sub_0dc5h		;29e6
	ex de,hl			;29e9
	ld de,(0cba2h)		;29ea
	or a			;29ee
	sbc hl,de		;29ef
	pop de			;29f1
	pop hl			;29f2
	jr nz,l29dch		;29f3
	ret			;29f5
l29f6h:
	ld a,0ffh		;29f6
	or a			;29f8
	ret			;29f9
sub_29fah:
	push de			;29fa
	inc hl			;29fb
	push hl			;29fc
	call sub_0dc5h		;29fd
	ex de,hl			;2a00
	call sub_2f56h		;2a01
	ld a,020h		;2a04
	push hl			;2a06
	or a			;2a07
	ld de,0000ah		;2a08
	sbc hl,de		;2a0b
	pop hl			;2a0d
	call c,sub_25b0h		;2a0e
	push hl			;2a11
l2a12h:
	or a			;2a12
	ld de,l0064h		;2a13
	sbc hl,de		;2a16
	pop hl			;2a18
	call c,sub_25b0h		;2a19
	push hl			;2a1c
	or a			;2a1d
	ld de,l03e8h		;2a1e
	sbc hl,de		;2a21
	pop hl			;2a23
	call c,sub_25b0h		;2a24
	push hl			;2a27
	or a			;2a28
	ld de,02710h		;2a29
	sbc hl,de		;2a2c
	pop hl			;2a2e
	call c,sub_25b0h		;2a2f
	call sub_25b0h		;2a32
	pop hl			;2a35
	inc hl			;2a36
	inc hl			;2a37
	ld de,l0006h		;2a38
	add hl,de			;2a3b
	push hl			;2a3c
	dec hl			;2a3d
	dec hl			;2a3e
	ld a,(hl)			;2a3f
	call sub_2f3ah		;2a40
	dec hl			;2a43
	ld a,02fh		;2a44
	call sub_25b0h		;2a46
	ld a,(hl)			;2a49
	call sub_2f3ah		;2a4a
	dec hl			;2a4d
	ld a,020h		;2a4e
	call sub_25b0h		;2a50
	pop hl			;2a53
	ld b,006h		;2a54
	call l2597h		;2a56
	ld a,020h		;2a59
	call sub_25b0h		;2a5b
	ld a,03eh		;2a5e
	call sub_25b0h		;2a60
	ld a,020h		;2a63
	call sub_25b0h		;2a65
	ld b,006h		;2a68
	call l2597h		;2a6a
	ld a,020h		;2a6d
	call sub_25b0h		;2a6f
	call l25a1h		;2a72
	call l2b65h		;2a75
	pop hl			;2a78
	ret			;2a79
l2a7ah:
	ld hl,(0ccd5h)		;2a7a
	ld de,0ccd7h		;2a7d
	add hl,de			;2a80
	dec hl			;2a81
	dec hl			;2a82
	ld a,(hl)			;2a83
	cp 00dh		;2a84
	jr nz,l2a8ah		;2a86
	ld (hl),000h		;2a88
l2a8ah:
	inc hl			;2a8a
	ld (hl),000h		;2a8b
	ld hl,0ccdfh		;2a8d
	ld (0bef4h),hl		;2a90
	call sub_2a99h		;2a93
	jp l1c16h		;2a96
sub_2a99h:
	ld de,(0bef4h)		;2a99
	ld hl,(0cba6h)		;2a9d
	ld b,022h		;2aa0
l2aa2h:
	ld a,(de)			;2aa2
	or a			;2aa3
	jr z,l2ad7h		;2aa4
	ld (hl),a			;2aa6
	inc hl			;2aa7
	inc de			;2aa8
	push hl			;2aa9
	push bc			;2aaa
	ld bc,0bb74h		;2aab
	sbc hl,bc		;2aae
	pop bc			;2ab0
	pop hl			;2ab1
	jr nc,l2ab6h		;2ab2
	djnz l2aa2h		;2ab4
l2ab6h:
	ld hl,l2abfh		;2ab6
	call l25a1h		;2ab9
	jp l298bh		;2abc
l2abfh:
	ld (hl),h			;2abf
	ld l,a			;2ac0
	ld l,a			;2ac1
	jr nz,l2b30h		;2ac2
	ld l,a			;2ac4
	ld l,(hl)			;2ac5
	ld h,a			;2ac6
	dec c			;2ac7
	ld (hl),h			;2ac8
	ld (hl),d			;2ac9
	ld a,c			;2aca
	jr nz,$+99		;2acb
	ld h,a			;2acd
	ld h,c			;2ace
	ld l,c			;2acf
	ld l,(hl)			;2ad0
	dec c			;2ad1
	nop			;2ad2
	nop			;2ad3
	nop			;2ad4
	nop			;2ad5
	nop			;2ad6
l2ad7h:
	ld (hl),a			;2ad7
	inc hl			;2ad8
	ld (0cba6h),hl		;2ad9
	ld hl,0bf19h		;2adc
	res 5,(hl)		;2adf
	ret			;2ae1
l2ae2h:
	ld hl,(0ccd5h)		;2ae2
	ld de,0ccd7h		;2ae5
	add hl,de			;2ae8
	dec hl			;2ae9
	dec hl			;2aea
	ld a,(hl)			;2aeb
	cp 00dh		;2aec
	jr nz,l2af2h		;2aee
	ld (hl),000h		;2af0
l2af2h:
	inc hl			;2af2
	ld (hl),000h		;2af3
	ld hl,0ccdfh		;2af5
	ld (0bef4h),hl		;2af8
	call sub_2b08h		;2afb
	ld hl,(0cf06h)		;2afe
	dec hl			;2b01
	ld (0cbb7h),hl		;2b02
	jp l1c16h		;2b05
sub_2b08h:
	ld a,(hl)			;2b08
	cp 01ah		;2b09
	jp z,l2954h		;2b0b
	cp 02eh		;2b0e
	jr nz,l2b19h		;2b10
	inc hl			;2b12
	ld a,(hl)			;2b13
	or a			;2b14
	jp z,l2954h		;2b15
	dec hl			;2b18
l2b19h:
	push hl			;2b19
	ld de,l29cbh		;2b1a
	ex de,hl			;2b1d
	ld b,004h		;2b1e
	call l251ah		;2b20
	pop hl			;2b23
	jp z,l2954h		;2b24
	ld de,l29d2h		;2b27
	ex de,hl			;2b2a
	ld b,004h		;2b2b
	call l251ah		;2b2d
l2b30h:
	jp z,l2954h		;2b30
	ld de,(0bef4h)		;2b33
	ld hl,(0cba6h)		;2b37
	ld bc,0bb74h		;2b3a
l2b3dh:
	ld a,(de)			;2b3d
	ld (hl),a			;2b3e
	or a			;2b3f
	jr z,l2b57h		;2b40
	cp 01ah		;2b42
	jr nz,l2b4ch		;2b44
	ld (0cba6h),hl		;2b46
	jp l2954h		;2b49
l2b4ch:
	inc hl			;2b4c
	inc de			;2b4d
	push hl			;2b4e
	sbc hl,bc		;2b4f
	pop hl			;2b51
	jr c,l2b3dh		;2b52
	jp l2ab6h		;2b54
l2b57h:
	ld (hl),00dh		;2b57
	inc hl			;2b59
	ld (0cba6h),hl		;2b5a
	ld hl,0bf19h		;2b5d
	res 5,(hl)		;2b60
	set 3,(hl)		;2b62
	ret			;2b64
l2b65h:
	ld a,00dh		;2b65
	jp sub_25b0h		;2b67
sub_2b6ah:
	ld hl,0cefeh		;2b6a
	bit 7,(hl)		;2b6d
	ret z			;2b6f
	call sub_3d7fh		;2b70
	jr nz,l2b7ch		;2b73
	xor a			;2b75
	ld (0cefeh),a		;2b76
	jp sub_32a2h		;2b79
l2b7ch:
	ld hl,0c274h		;2b7c
	bit 7,(hl)		;2b7f
	ret nz			;2b81
	push iy		;2b82
	ld a,00ah		;2b84
	call sub_3dd6h		;2b86
	ld a,007h		;2b89
	add a,(iy-03fh)		;2b8b
	and 007h		;2b8e
	ld d,(iy+009h)		;2b90
	cp d			;2b93
	pop iy		;2b94
	ret z			;2b96
	ld de,0bf04h		;2b97
	call l0d43h		;2b9a
	ld hl,0cefeh		;2b9d
	ret c			;2ba0
	bit 0,(hl)		;2ba1
	jp z,l2ba9h		;2ba3
	set 1,(hl)		;2ba6
	ret			;2ba8
l2ba9h:
	bit 5,(hl)		;2ba9
	jp nz,l30b3h		;2bab
	bit 4,(hl)		;2bae
	jp nz,l31bfh		;2bb0
	bit 2,(hl)		;2bb3
	jp nz,l31ffh		;2bb5
	bit 6,(hl)		;2bb8
	jp nz,l333eh		;2bba
	bit 3,(hl)		;2bbd
	jp nz,l33e9h		;2bbf
l2bc2h:
	ld de,0befah		;2bc2
	call l0d43h		;2bc5
	ret nc			;2bc8
	call l0cc2h		;2bc9
	ld de,0bb77h		;2bcc
	ld hl,(0bef6h)		;2bcf
	inc hl			;2bd2
	ld (0bef6h),hl		;2bd3
	dec hl			;2bd6
	ld b,l			;2bd7
	add hl,de			;2bd8
	ld (hl),a			;2bd9
	inc b			;2bda
	jr z,l2be1h		;2bdb
	cp 00dh		;2bdd
	jr nz,l2bc2h		;2bdf
l2be1h:
	inc hl			;2be1
	ld (hl),000h		;2be2
	dec hl			;2be4
	ex de,hl			;2be5
	ld hl,0bf19h		;2be6
	set 0,(hl)		;2be9
	ld hl,l2ea3h		;2beb
	push hl			;2bee
	ld a,(0bf19h)		;2bef
	bit 5,a		;2bf2
	jp nz,l2fc1h		;2bf4
	bit 4,a		;2bf7
	jp nz,l2fd7h		;2bf9
	ld de,0bb77h		;2bfc
l2bffh:
	ld a,(de)			;2bff
	inc de			;2c00
	or a			;2c01
	jp z,l2ecbh		;2c02
	cp 00dh		;2c05
	ret z			;2c07
	cp 020h		;2c08
	jr z,l2bffh		;2c0a
	dec de			;2c0c
	ld (0bef6h),de		;2c0d
	ld hl,l3315h		;2c11
	ld b,003h		;2c14
	call l251ah		;2c16
	jp z,l2f95h		;2c19
	ld de,(0bef6h)		;2c1c
	ld hl,l2ddeh		;2c20
	ld b,002h		;2c23
	call l251ah		;2c25
	jp z,l2fa7h		;2c28
	ld de,(0bef6h)		;2c2b
	ld hl,l2de0h		;2c2f
	ld b,002h		;2c32
	call l251ah		;2c34
	jp z,l2f95h		;2c37
	ld de,(0bef6h)		;2c3a
	ld hl,02de2h		;2c3e
	ld b,002h		;2c41
	call l251ah		;2c43
	jp z,l2fa7h		;2c46
	ld de,(0bef6h)		;2c49
	ld hl,l2de4h		;2c4d
	ld b,002h		;2c50
	call l251ah		;2c52
	jp z,l2f95h		;2c55
	ld de,(0bef6h)		;2c58
	ld hl,02de6h		;2c5c
	ld b,001h		;2c5f
	call l251ah		;2c61
	jp z,l2f7bh		;2c64
	ld de,(0bef6h)		;2c67
	ld hl,l3324h		;2c6b
	ld b,004h		;2c6e
	call l251ah		;2c70
	jp z,l2fe9h		;2c73
	ld de,(0bef6h)		;2c76
	ld hl,02debh		;2c7a
	ld b,001h		;2c7d
	call l251ah		;2c7f
	jp z,l2fe9h		;2c82
	ld de,(0bef6h)		;2c85
	ld hl,l2dedh		;2c89
	ld b,001h		;2c8c
	call l251ah		;2c8e
	jp z,l2fe9h		;2c91
	ld de,(0bef6h)		;2c94
	ld hl,l3321h		;2c98
	ld b,003h		;2c9b
	call l251ah		;2c9d
	jp z,l306dh		;2ca0
	ld de,(0bef6h)		;2ca3
	ld hl,l2defh		;2ca7
	ld b,002h		;2caa
	call l251ah		;2cac
	jp z,l30a1h		;2caf
	ld de,(0bef6h)		;2cb2
	ld hl,l2df1h		;2cb6
	ld b,002h		;2cb9
	call l251ah		;2cbb
	jp z,l30a1h		;2cbe
	ld de,(0bef6h)		;2cc1
	ld hl,l2de7h		;2cc5
	ld b,002h		;2cc8
	call l251ah		;2cca
	jp z,l30a1h		;2ccd
	ld de,(0bef6h)		;2cd0
	ld hl,l2de9h		;2cd4
	ld b,002h		;2cd7
	call l251ah		;2cd9
	jp z,l306dh		;2cdc
	ld de,(0bef6h)		;2cdf
	ld hl,l2de7h		;2ce3
	ld b,001h		;2ce6
	call l251ah		;2ce8
	jp z,l307dh		;2ceb
	ld de,(0bef6h)		;2cee
	ld hl,l2f77h		;2cf2
	ld b,001h		;2cf5
	call l251ah		;2cf7
	jp z,l33d3h		;2cfa
	ld de,(0bef6h)		;2cfd
	ld hl,l2f79h		;2d01
	ld b,002h		;2d04
	call l251ah		;2d06
	jp z,03328h		;2d09
	ld de,(0bef6h)		;2d0c
	ld hl,l2df8h		;2d10
	ld b,002h		;2d13
	call l251ah		;2d15
	jp z,l31dah		;2d18
	ld de,(0bef6h)		;2d1b
	ld hl,l2df7h		;2d1f
	ld b,003h		;2d22
	call l251ah		;2d24
	jp z,l31dah		;2d27
	ld de,(0bef6h)		;2d2a
	ld hl,l2df3h		;2d2e
	ld b,001h		;2d31
	call l251ah		;2d33
	jp nz,l2d4fh		;2d36
	pop hl			;2d39
	ld hl,l2d67h		;2d3a
	call sub_2eebh		;2d3d
	xor a			;2d40
	call l2ef4h		;2d41
	ld hl,0cefeh		;2d44
	set 0,(hl)		;2d47
	ld hl,0bf19h		;2d49
	ld (hl),000h		;2d4c
	ret			;2d4e
l2d4fh:
	ld de,(0bef6h)		;2d4f
	ld hl,l2d61h		;2d53
	ld b,005h		;2d56
	call l251ah		;2d58
	jp z,l2fa7h		;2d5b
	jp l2ec5h		;2d5e
l2d61h:
	ld b,l			;2d61
	ld c,(hl)			;2d62
	ld d,h			;2d63
	ld b,l			;2d64
	ld d,d			;2d65
	dec c			;2d66
l2d67h:
	ld d,h			;2d67
	ld l,b			;2d68
	ld h,c			;2d69
	ld l,(hl)			;2d6a
	ld l,e			;2d6b
	jr nz,l2de7h		;2d6c
	ld l,a			;2d6e
	ld (hl),l			;2d6f
	jr nz,l2db5h		;2d70
	ld d,l			;2d72
	jr nz,l2db6h		;2d73
	ld b,a			;2d75
	ld c,(hl)			;2d76
	jr nz,l2db0h		;2d77
	inc sp			;2d79
	dec c			;2d7a
	nop			;2d7b
	nop			;2d7c
	nop			;2d7d
	nop			;2d7e
	nop			;2d7f
	nop			;2d80
	nop			;2d81
	nop			;2d82
	nop			;2d83
l2d84h:
	ld d,a			;2d84
	ld h,l			;2d85
	ld l,h			;2d86
	ld h,e			;2d87
	ld l,a			;2d88
	ld l,l			;2d89
	ld h,l			;2d8a
	jr nz,l2e01h		;2d8b
	ld l,a			;2d8d
	jr nz,l2d90h		;2d8e
l2d90h:
	daa			;2d90
	ld (hl),e			;2d91
	jr nz,l2e01h		;2d92
	ld h,l			;2d94
	ld (hl),e			;2d95
	ld (hl),e			;2d96
	ld h,c			;2d97
	ld h,a			;2d98
	ld h,l			;2d99
	jr nz,l2dfeh		;2d9a
l2d9ch:
	ld l,a			;2d9c
	ld h,c			;2d9d
	ld (hl),d			;2d9e
	ld h,h			;2d9f
	dec c			;2da0
	jr nz,l2dc3h		;2da1
	jr nz,l2dc5h		;2da3
	jr nz,l2dc7h		;2da5
	jr nz,l2dc9h		;2da7
	jr nz,l2dcbh		;2da9
	jr nz,l2dadh		;2dab
l2dadh:
	ld hl,(l4d96h)		;2dad
l2db0h:
	ld sp,hl			;2db0
	or b			;2db1
	jr z,l2d9ch		;2db2
	rst 18h			;2db4
l2db5h:
	or e			;2db5
l2db6h:
	rlca			;2db6
	call z,080bdh		;2db7
l2dbah:
	jr nz,l2e12h		;2dba
	ld h,l			;2dbc
	ld (hl),d			;2dbd
	jr nz,l2df1h		;2dbe
	ld l,031h		;2dc0
	scf			;2dc2
l2dc3h:
	dec c			;2dc3
	nop			;2dc4
l2dc5h:
	dec c			;2dc5
	ld e,c			;2dc6
l2dc7h:
	ld l,a			;2dc7
	ld (hl),l			;2dc8
l2dc9h:
	jr nz,$+106		;2dc9
l2dcbh:
	ld h,c			;2dcb
	halt			;2dcc
	ld h,l			;2dcd
	jr nz,$+111		;2dce
	ld h,c			;2dd0
	ld l,c			;2dd1
	ld l,h			;2dd2
	jr nz,l2e4ch		;2dd3
	ld h,c			;2dd5
	ld l,c			;2dd6
	ld (hl),h			;2dd7
	ld l,c			;2dd8
	ld l,(hl)			;2dd9
	ld h,a			;2dda
	ld l,00dh		;2ddb
	nop			;2ddd
l2ddeh:
	ld d,a			;2dde
	dec c			;2ddf
l2de0h:
	ld d,a			;2de0
	jr nz,$+85		;2de1
	dec c			;2de3
l2de4h:
	ld d,e			;2de4
	jr nz,l2e3ah		;2de5
l2de7h:
	ld d,d			;2de7
	dec c			;2de8
l2de9h:
	ld d,d			;2de9
	jr nz,$+70		;2dea
	dec c			;2dec
l2dedh:
	ld c,e			;2ded
	dec c			;2dee
l2defh:
	ld b,(hl)			;2def
	dec c			;2df0
l2df1h:
	ld c,h			;2df1
	dec c			;2df2
l2df3h:
	ld b,d			;2df3
	ld e,c			;2df4
	ld b,l			;2df5
	dec c			;2df6
l2df7h:
	ld c,h			;2df7
l2df8h:
	ld c,l			;2df8
	dec c			;2df9
l2dfah:
	dec c			;2dfa
	ld b,e			;2dfb
	ld c,l			;2dfc
	ld b,h			;2dfd
l2dfeh:
	jr z,l2e46h		;2dfe
	cpl			;2e00
l2e01h:
	ld c,e			;2e01
	cpl			;2e02
	ld c,l			;2e03
	cpl			;2e04
	ld d,d			;2e05
	cpl			;2e06
	ld d,a			;2e07
	cpl			;2e08
	ld b,d			;2e09
	cpl			;2e0a
	ld c,b			;2e0b
	cpl			;2e0c
	ccf			;2e0d
	add hl,hl			;2e0e
	ld a,00dh		;2e0f
	nop			;2e11
l2e12h:
	dec c			;2e12
	ld c,l			;2e13
	ld h,l			;2e14
	ld (hl),e			;2e15
	ld (hl),e			;2e16
	ld h,c			;2e17
	ld h,a			;2e18
	ld h,l			;2e19
	ld a,(l000dh)		;2e1a
l2e1dh:
	dec c			;2e1d
	ld d,e			;2e1e
	ld (hl),l			;2e1f
	ld h,d			;2e20
	ld l,d			;2e21
	ld h,l			;2e22
	ld h,e			;2e23
	ld (hl),h			;2e24
	ld a,(l000dh)		;2e25
l2e28h:
	ld hl,(0cf06h)		;2e28
	ld (0cbb7h),hl		;2e2b
	ld hl,l2d84h		;2e2e
	call sub_2eebh		;2e31
	ld hl,0c013h		;2e34
	ld b,006h		;2e37
l2e39h:
	ld a,(hl)			;2e39
l2e3ah:
	srl a		;2e3a
	cp 020h		;2e3c
	jr z,l2e46h		;2e3e
	call l2ef4h		;2e40
	inc hl			;2e43
	djnz l2e39h		;2e44
l2e46h:
	ld hl,l2d90h		;2e46
	call sub_2eebh		;2e49
l2e4ch:
	ld de,0cb8bh		;2e4c
	ld b,00dh		;2e4f
	ld hl,l2dadh		;2e51
	call 047f4h		;2e54
	ld hl,0cb8bh		;2e57
	call sub_2eebh		;2e5a
	ld hl,l2dbah		;2e5d
	call sub_2eebh		;2e60
	push iy		;2e63
	ld a,00ah		;2e65
	call sub_3dd6h		;2e67
	push iy		;2e6a
	pop hl			;2e6c
	ld de,0ff81h		;2e6d
	add hl,de			;2e70
	pop iy		;2e71
	ld (0cbb0h),hl		;2e73
	ld hl,(0cf04h)		;2e76
l2e79h:
	ld e,(hl)			;2e79
	inc hl			;2e7a
	ld d,(hl)			;2e7b
	ld a,d			;2e7c
	or e			;2e7d
	jr z,l2ea3h		;2e7e
	push de			;2e80
	push hl			;2e81
	inc hl			;2e82
	ld de,l000eh		;2e83
	add hl,de			;2e86
	ld de,(0cbb0h)		;2e87
	ld b,006h		;2e8b
l2e8dh:
	ld a,(de)			;2e8d
	srl a		;2e8e
	cp (hl)			;2e90
	jr nz,l2e98h		;2e91
	inc hl			;2e93
	inc de			;2e94
	djnz l2e8dh		;2e95
	ld a,b			;2e97
l2e98h:
	pop de			;2e98
	pop hl			;2e99
	or a			;2e9a
	jr nz,l2e79h		;2e9b
	ld hl,l2dc5h		;2e9d
	call sub_2eebh		;2ea0
l2ea3h:
	ld hl,l0000h		;2ea3
	ld (0bef6h),hl		;2ea6
	ld hl,0bf19h		;2ea9
	res 0,(hl)		;2eac
	ld a,(hl)			;2eae
	ld hl,l2dfah		;2eaf
	bit 5,a		;2eb2
	jr z,l2ebbh		;2eb4
	ld hl,l2e1dh		;2eb6
	jr l2ebeh		;2eb9
l2ebbh:
	bit 4,a		;2ebb
	ret nz			;2ebd
l2ebeh:
	call sub_2ee2h		;2ebe
	xor a			;2ec1
	jp l2ef4h		;2ec2
l2ec5h:
	ld hl,l2ed2h		;2ec5
	jp sub_2eebh		;2ec8
l2ecbh:
	ld hl,l2ed1h		;2ecb
	jp sub_2eebh		;2ece
l2ed1h:
	dec c			;2ed1
l2ed2h:
	ld e,e			;2ed2
	ld b,l			;2ed3
	ld d,d			;2ed4
	ld d,d			;2ed5
	ld c,a			;2ed6
	ld d,d			;2ed7
	ld e,l			;2ed8
	dec c			;2ed9
	nop			;2eda
	nop			;2edb
	nop			;2edc
	ld a,00dh		;2edd
	jp l2ef4h		;2edf
sub_2ee2h:
	ld a,(hl)			;2ee2
	or a			;2ee3
	inc hl			;2ee4
	ret z			;2ee5
	call l2ef4h		;2ee6
	jr sub_2ee2h		;2ee9
sub_2eebh:
	call sub_2ee2h		;2eeb
	ld a,(0c025h)		;2eee
	cp 00dh		;2ef1
	ret z			;2ef3
l2ef4h:
	push bc			;2ef4
	push de			;2ef5
	push hl			;2ef6
	ld de,0bf04h		;2ef7
	call l0c7fh		;2efa
	pop hl			;2efd
	pop de			;2efe
	pop bc			;2eff
	ret			;2f00
l2f01h:
	ld a,(hl)			;2f01
	call l2ef4h		;2f02
	inc hl			;2f05
	djnz l2f01h		;2f06
	ret			;2f08
sub_2f09h:
	push de			;2f09
	ld de,l0006h		;2f0a
	add hl,de			;2f0d
	push hl			;2f0e
	dec hl			;2f0f
	call sub_2f3ah		;2f10
	dec hl			;2f13
	ld a,02fh		;2f14
	call l2ef4h		;2f16
	call sub_2f3ah		;2f19
	dec hl			;2f1c
	ld a,02fh		;2f1d
	call l2ef4h		;2f1f
	call sub_2f3ah		;2f22
	dec hl			;2f25
	ld a,020h		;2f26
	call l2ef4h		;2f28
	call sub_2f3ah		;2f2b
	dec hl			;2f2e
	ld a,03ah		;2f2f
	call l2ef4h		;2f31
	call sub_2f3ah		;2f34
	pop hl			;2f37
	pop de			;2f38
	ret			;2f39
sub_2f3ah:
	ld a,(hl)			;2f3a
	push af			;2f3b
	rra			;2f3c
	rra			;2f3d
	rra			;2f3e
	rra			;2f3f
	call sub_2f44h		;2f40
	pop af			;2f43
sub_2f44h:
	and 00fh		;2f44
	cp 00ah		;2f46
	jr nc,l2f4eh		;2f48
	add a,030h		;2f4a
	jr l2f50h		;2f4c
l2f4eh:
	add a,037h		;2f4e
l2f50h:
	jp sub_25b0h		;2f50
	ld l,a			;2f53
	ld h,000h		;2f54
sub_2f56h:
	push bc			;2f56
	push de			;2f57
	push hl			;2f58
	ld bc,0fff6h		;2f59
	ld de,0ffffh		;2f5c
l2f5fh:
	add hl,bc			;2f5f
	inc de			;2f60
	jr c,l2f5fh		;2f61
	ld bc,0000ah		;2f63
	add hl,bc			;2f66
	ex de,hl			;2f67
	ld a,h			;2f68
	or l			;2f69
	call nz,sub_2f56h		;2f6a
	ld a,e			;2f6d
	add a,030h		;2f6e
	call sub_25b0h		;2f70
	pop hl			;2f73
	pop de			;2f74
	pop bc			;2f75
	ret			;2f76
l2f77h:
	ld c,b			;2f77
	dec c			;2f78
l2f79h:
	ccf			;2f79
	dec c			;2f7a
l2f7bh:
	ld a,(de)			;2f7b
	inc de			;2f7c
	call sub_250bh		;2f7d
	cp 041h		;2f80
	jp c,l2ecbh		;2f82
	cp 05bh		;2f85
	jp nc,l2ecbh		;2f87
	ld a,(de)			;2f8a
	inc de			;2f8b
	cp 00dh		;2f8c
	jr z,l2fa7h		;2f8e
	cp 020h		;2f90
	jp nz,l2ecbh		;2f92
l2f95h:
	ld a,(de)			;2f95
	inc de			;2f96
	or a			;2f97
	jp z,l2ecbh		;2f98
	cp 00dh		;2f9b
	jr z,l2fa7h		;2f9d
	cp 020h		;2f9f
	jr z,l2f95h		;2fa1
	dec de			;2fa3
	ex de,hl			;2fa4
	jr l2faah		;2fa5
l2fa7h:
	ld hl,l27eah		;2fa7
l2faah:
	ld (0cba2h),hl		;2faa
	push iy		;2fad
	ld a,00ah		;2faf
	call sub_3dd6h		;2fb1
	push iy		;2fb4
	pop hl			;2fb6
	ld de,0ff81h		;2fb7
	add hl,de			;2fba
	pop iy		;2fbb
	ex de,hl			;2fbd
	jp l2864h		;2fbe
l2fc1h:
	ex de,hl			;2fc1
	ld (hl),000h		;2fc2
	ld hl,0bb77h		;2fc4
	ld (0bef4h),hl		;2fc7
	call sub_2a99h		;2fca
	ld hl,l2e12h		;2fcd
	call sub_2ee2h		;2fd0
	xor a			;2fd3
	jp l2ef4h		;2fd4
l2fd7h:
	ex de,hl			;2fd7
	ld (hl),000h		;2fd8
	ld hl,0bb77h		;2fda
	ld (0bef4h),hl		;2fdd
	jp sub_2b08h		;2fe0
l2fe3h:
	dec c			;2fe3
	nop			;2fe4
	nop			;2fe5
	nop			;2fe6
	nop			;2fe7
	nop			;2fe8
l2fe9h:
	ld a,(de)			;2fe9
	inc de			;2fea
	or a			;2feb
	jp z,l2ecbh		;2fec
	cp 00dh		;2fef
	jp z,l2ec5h		;2ff1
	cp 020h		;2ff4
	jr z,l2fe9h		;2ff6
	dec de			;2ff8
	call sub_24c4h		;2ff9
	jp c,l2ec5h		;2ffc
	ld (0cba2h),hl		;2fff
	ld hl,0c041h		;3002
	bit 0,(hl)		;3005
	jr nz,l3058h		;3007
	push iy		;3009
	ld a,00ah		;300b
	call sub_3dd6h		;300d
	push iy		;3010
	pop hl			;3012
	ld de,0ff81h		;3013
	add hl,de			;3016
	pop iy		;3017
	ld (0cbb0h),hl		;3019
	call sub_29d9h		;301c
	jp nz,l2994h		;301f
	ex de,hl			;3022
	dec hl			;3023
	dec hl			;3024
	call sub_3267h		;3025
	jr nz,l3058h		;3028
	call l274ch		;302a
	ld hl,(0cf04h)		;302d
	ld a,(hl)			;3030
	inc hl			;3031
	or (hl)			;3032
	ret z			;3033
	dec hl			;3034
l3035h:
	push hl			;3035
	pop bc			;3036
	ld e,(hl)			;3037
	inc hl			;3038
	ld d,(hl)			;3039
	ex de,hl			;303a
	ld a,(hl)			;303b
	inc hl			;303c
	or (hl)			;303d
	dec hl			;303e
	jr nz,l3035h		;303f
	ld h,b			;3041
	ld l,c			;3042
	inc hl			;3043
	inc hl			;3044
	call sub_0dc5h		;3045
	push de			;3048
	ld hl,(0cbb7h)		;3049
	or a			;304c
	sbc hl,de		;304d
	pop hl			;304f
	jr z,l3053h		;3050
	ret nc			;3052
l3053h:
	inc hl			;3053
	ld (0cf06h),hl		;3054
	ret			;3057
l3058h:
	ld hl,l305eh		;3058
	jp sub_2eebh		;305b
l305eh:
	ld l,(hl)			;305e
	ld l,a			;305f
	ld (hl),h			;3060
	jr nz,$+103		;3061
	ld (hl),d			;3063
	ld h,c			;3064
	ld (hl),e			;3065
	ld h,l			;3066
	ld h,h			;3067
	dec c			;3068
	nop			;3069
	nop			;306a
	nop			;306b
	nop			;306c
l306dh:
	ld a,(de)			;306d
	inc de			;306e
	or a			;306f
	jp z,l2ecbh		;3070
	cp 00dh		;3073
	jr z,l30a1h		;3075
	cp 020h		;3077
	jp z,l306dh		;3079
	dec de			;307c
l307dh:
	call sub_24c4h		;307d
	jp c,l2ec5h		;3080
	ld (0cba2h),hl		;3083
	ld hl,0c041h		;3086
	bit 1,(hl)		;3089
	jp z,l310fh		;308b
l308eh:
	ld hl,l3094h		;308e
	jp sub_2eebh		;3091
l3094h:
	ld l,(hl)			;3094
	ld l,a			;3095
	ld (hl),h			;3096
	jr nz,$+116		;3097
	ld h,l			;3099
	ld h,c			;309a
	ld h,h			;309b
	dec c			;309c
	nop			;309d
	nop			;309e
	nop			;309f
	nop			;30a0
l30a1h:
	pop hl			;30a1
	ld hl,(0cf04h)		;30a2
	ld a,(hl)			;30a5
	inc hl			;30a6
	or (hl)			;30a7
	jp z,l3104h		;30a8
	call l2b65h		;30ab
	ld a,00ah		;30ae
	ld (0cbach),a		;30b0
l30b3h:
	ld hl,0bf19h		;30b3
	set 0,(hl)		;30b6
	ld de,(0cf04h)		;30b8
	ld hl,(0cba8h)		;30bc
	ld a,(0cbach)		;30bf
	or a			;30c2
	jp z,l3104h		;30c3
	push de			;30c6
	sbc hl,de		;30c7
	pop hl			;30c9
	jr z,l30f8h		;30ca
l30cch:
	ld e,(hl)			;30cc
	inc hl			;30cd
	ld d,(hl)			;30ce
	ld a,d			;30cf
	or e			;30d0
	jp z,l3104h		;30d1
	dec hl			;30d4
	push de			;30d5
	push hl			;30d6
	or a			;30d7
	ld hl,(0cba8h)		;30d8
	sbc hl,de		;30db
	pop de			;30dd
	pop hl			;30de
	jr nz,l30cch		;30df
	ex de,hl			;30e1
	ld (0cba8h),hl		;30e2
	inc hl			;30e5
	call sub_29fah		;30e6
	ld hl,0cbach		;30e9
	dec (hl)			;30ec
l30edh:
	ld hl,0bf19h		;30ed
	res 0,(hl)		;30f0
	ld hl,0cefeh		;30f2
	set 5,(hl)		;30f5
	ret			;30f7
l30f8h:
	call sub_283bh		;30f8
	ld (0cba8h),hl		;30fb
	xor a			;30fe
	ld (0cbach),a		;30ff
	jr l30edh		;3102
l3104h:
	call l267ch		;3104
	ld hl,0cefeh		;3107
	res 5,(hl)		;310a
	jp l2ea3h		;310c
l310fh:
	push iy		;310f
	ld a,00ah		;3111
	call sub_3dd6h		;3113
	push iy		;3116
	pop hl			;3118
	ld de,0ff81h		;3119
	add hl,de			;311c
	pop iy		;311d
	ld (0cbb0h),hl		;311f
	call sub_29d9h		;3122
	jp nz,l2994h		;3125
	ex de,hl			;3128
	inc hl			;3129
	inc hl			;312a
	push hl			;312b
	ld de,l0006h		;312c
l312fh:
	add hl,de			;312f
	ld de,(0cbb0h)		;3130
	ld b,006h		;3134
l3136h:
	ld a,(de)			;3136
	srl a		;3137
	cp (hl)			;3139
	jr nz,l3143h		;313a
	inc hl			;313c
	inc de			;313d
	djnz l3136h		;313e
	ld a,b			;3140
	jr l316bh		;3141
l3143h:
	ld c,b			;3143
	ld b,000h		;3144
	add hl,bc			;3146
	push hl			;3147
	ld de,l27eah		;3148
	ld b,006h		;314b
l314dh:
	ld a,(de)			;314d
	cp (hl)			;314e
	jr nz,l3155h		;314f
	inc hl			;3151
	inc de			;3152
	djnz l314dh		;3153
l3155h:
	pop hl			;3155
	ld a,b			;3156
	or a			;3157
	jr z,l316bh		;3158
	ld de,(0cbb0h)		;315a
	ld b,006h		;315e
l3160h:
	ld a,(de)			;3160
	srl a		;3161
	cp (hl)			;3163
	jr nz,l316bh		;3164
	inc hl			;3166
	inc de			;3167
	djnz l3160h		;3168
	ld a,b			;316a
l316bh:
	pop hl			;316b
	or a			;316c
	jp nz,l308eh		;316d
	push hl			;3170
	ld hl,l27f2h		;3171
	call sub_2eebh		;3174
	pop hl			;3177
	call sub_2f09h		;3178
	call l2b65h		;317b
	push hl			;317e
	ld hl,l27fch		;317f
	call sub_2eebh		;3182
	pop hl			;3185
	ld b,006h		;3186
	call l2f01h		;3188
	call l2b65h		;318b
	push hl			;318e
	ld hl,l2806h		;318f
	call sub_2eebh		;3192
	pop hl			;3195
	ld b,006h		;3196
	call l2f01h		;3198
	call l2b65h		;319b
	push hl			;319e
	ld hl,l2810h		;319f
	call sub_2eebh		;31a2
	pop hl			;31a5
	call sub_2eebh		;31a6
	call l2b65h		;31a9
	call l2b65h		;31ac
	nop			;31af
	ld (0cbaeh),hl		;31b0
	pop hl			;31b3
	ld hl,0bf19h		;31b4
	res 0,(hl)		;31b7
	ld hl,0cefeh		;31b9
	set 4,(hl)		;31bc
	ret			;31be
l31bfh:
	ld hl,(0cbaeh)		;31bf
	ld b,032h		;31c2
l31c4h:
	ld a,(hl)			;31c4
	or a			;31c5
	jr z,l31d2h		;31c6
	call l2ef4h		;31c8
	inc hl			;31cb
	djnz l31c4h		;31cc
	ld (0cbaeh),hl		;31ce
	ret			;31d1
l31d2h:
	ld hl,0cefeh		;31d2
	res 4,(hl)		;31d5
	jp l2ea3h		;31d7
l31dah:
	pop hl			;31da
	ld hl,(0cf04h)		;31db
	ld a,(hl)			;31de
	inc hl			;31df
	or (hl)			;31e0
	jp z,l325fh		;31e1
	push iy		;31e4
	ld a,00ah		;31e6
	call sub_3dd6h		;31e8
	push iy		;31eb
	pop hl			;31ed
	ld de,0ff81h		;31ee
	add hl,de			;31f1
	pop iy		;31f2
	ld (0cbb0h),hl		;31f4
	call l2b65h		;31f7
	ld a,00ah		;31fa
	ld (0cbadh),a		;31fc
l31ffh:
	ld hl,0bf19h		;31ff
	set 0,(hl)		;3202
	ld de,(0cf04h)		;3204
	ld hl,(0cbaah)		;3208
	ld a,(0cbadh)		;320b
	or a			;320e
	jp z,l325fh		;320f
	push de			;3212
	sbc hl,de		;3213
	pop hl			;3215
	jr z,l3249h		;3216
l3218h:
	ld e,(hl)			;3218
	inc hl			;3219
	ld d,(hl)			;321a
	ld a,d			;321b
	or e			;321c
	jp z,l325ch		;321d
	dec hl			;3220
	push de			;3221
	push hl			;3222
	or a			;3223
	ld hl,(0cbaah)		;3224
	sbc hl,de		;3227
l3229h:
	pop de			;3229
	pop hl			;322a
	jr nz,l3218h		;322b
	ex de,hl			;322d
	ld (0cbaah),hl		;322e
l3231h:
	call sub_3267h		;3231
	jr nz,l323eh		;3234
	ex de,hl			;3236
	call sub_29fah		;3237
	ld hl,0cbadh		;323a
	dec (hl)			;323d
l323eh:
	ld hl,0bf19h		;323e
	res 0,(hl)		;3241
	ld hl,0cefeh		;3243
	set 2,(hl)		;3246
	ret			;3248
l3249h:
	ld a,(0cbadh)		;3249
	cp 00ah		;324c
	jr z,l325ch		;324e
	call sub_283bh		;3250
	ld (0cbaah),hl		;3253
l3256h:
	xor a			;3256
	ld (0cbadh),a		;3257
	jr l323eh		;325a
l325ch:
	call l2994h		;325c
l325fh:
	ld hl,0cefeh		;325f
	res 2,(hl)		;3262
	jp l2ea3h		;3264
sub_3267h:
	inc hl			;3267
	push de			;3268
	push hl			;3269
	inc hl			;326a
	ld de,l0006h+2		;326b
	add hl,de			;326e
	ld de,(0cbb0h)		;326f
	ld b,006h		;3273
l3275h:
	ld a,(de)			;3275
	srl a		;3276
	cp (hl)			;3278
	jr nz,l3282h		;3279
	inc hl			;327b
	inc de			;327c
	djnz l3275h		;327d
	ld a,b			;327f
	jr l3297h		;3280
l3282h:
	ld c,b			;3282
	ld b,000h		;3283
	add hl,bc			;3285
	ld de,(0cbb0h)		;3286
	ld b,006h		;328a
l328ch:
	ld a,(de)			;328c
	srl a		;328d
	cp (hl)			;328f
	jr nz,l3297h		;3290
	inc hl			;3292
	inc de			;3293
	djnz l328ch		;3294
	ld a,b			;3296
l3297h:
	pop de			;3297
	pop hl			;3298
	or a			;3299
	ret			;329a
	ld hl,l299ah		;329b
	call sub_2eebh		;329e
	ret			;32a1
sub_32a2h:
	ld a,(0c273h)		;32a2
	bit 2,a		;32a5
	call z,sub_12c1h		;32a7
	ld a,(0bf18h)		;32aa
	bit 2,a		;32ad
	call z,sub_12e9h		;32af
	ld hl,l0000h		;32b2
	ld (0ccd5h),hl		;32b5
	ld de,0bef4h		;32b8
	ld hl,0561ch		;32bb
	ld bc,l0018h+2		;32be
	ldir		;32c1
	ld hl,0c041h		;32c3
	ret			;32c6
l32c7h:
	ld d,h			;32c7
	ld l,b			;32c8
	ld h,c			;32c9
	ld l,(hl)			;32ca
	ld l,e			;32cb
	ld (hl),e			;32cc
	jr nz,$+104		;32cd
	ld l,a			;32cf
	ld (hl),d			;32d0
	jr nz,l334ch		;32d1
	ld l,a			;32d3
	ld (hl),l			;32d4
	ld (hl),d			;32d5
	jr nz,$+111		;32d6
	ld h,l			;32d8
	ld (hl),e			;32d9
	ld (hl),e			;32da
	ld h,c			;32db
	ld h,a			;32dc
	ld h,l			;32dd
	dec c			;32de
	nop			;32df
	nop			;32e0
	nop			;32e1
	nop			;32e2
	nop			;32e3
	nop			;32e4
	nop			;32e5
	nop			;32e6
	nop			;32e7
	nop			;32e8
	nop			;32e9
	nop			;32ea
	nop			;32eb
	nop			;32ec
	nop			;32ed
	nop			;32ee
	nop			;32ef
	nop			;32f0
l32f1h:
	ld b,e			;32f1
	ld h,c			;32f2
	ld l,(hl)			;32f3
	ld h,e			;32f4
	ld h,l			;32f5
	ld l,h			;32f6
	ld h,l			;32f7
	ld h,h			;32f8
	jr nz,l3374h		;32f9
	ld l,a			;32fb
	ld (hl),l			;32fc
	ld (hl),d			;32fd
	jr nz,$+111		;32fe
	ld h,l			;3300
	ld (hl),e			;3301
	ld (hl),e			;3302
	ld h,c			;3303
	ld h,a			;3304
	ld h,l			;3305
	dec c			;3306
	nop			;3307
	nop			;3308
	nop			;3309
l330ah:
	nop			;330a
	nop			;330b
	nop			;330c
	nop			;330d
	nop			;330e
	nop			;330f
	nop			;3310
	nop			;3311
	nop			;3312
	nop			;3313
	nop			;3314
l3315h:
	ld b,l			;3315
	ld c,(hl)			;3316
	ld d,h			;3317
	dec c			;3318
	nop			;3319
	nop			;331a
	nop			;331b
	nop			;331c
	ld b,e			;331d
	ld b,c			;331e
	ld c,(hl)			;331f
	dec c			;3320
l3321h:
	ld c,l			;3321
	ld b,d			;3322
	ld b,(hl)			;3323
l3324h:
	ld c,l			;3324
	ld b,d			;3325
	ld b,l			;3326
	jr nz,l330ah		;3327
	ld hl,0bf19h		;3329
	res 0,(hl)		;332c
	ld hl,(l59bah)		;332e
	call sub_2eebh		;3331
	ld hl,0cefeh		;3334
	set 6,(hl)		;3337
	xor a			;3339
	ld (0bef8h),a		;333a
	ret			;333d
l333eh:
	ld hl,0bef8h		;333e
	ld a,(hl)			;3341
	inc (hl)			;3342
	or a			;3343
	jr nz,l334ch		;3344
	ld hl,(l59bch)		;3346
	jp sub_2eebh		;3349
l334ch:
	cp 001h		;334c
	jr nz,l3356h		;334e
	ld hl,(l59beh)		;3350
	jp sub_2eebh		;3353
l3356h:
	cp 002h		;3356
	jr nz,l3360h		;3358
	ld hl,(l59c0h)		;335a
	jp sub_2eebh		;335d
l3360h:
	cp 003h		;3360
	jr nz,l336ah		;3362
	ld hl,(l59c2h)		;3364
	jp sub_2eebh		;3367
l336ah:
	cp 004h		;336a
	jr nz,l3374h		;336c
	ld hl,(l59c4h)		;336e
	jp sub_2eebh		;3371
l3374h:
	cp 005h		;3374
	jr nz,l337eh		;3376
	ld hl,(l59c6h)		;3378
	jp sub_2eebh		;337b
l337eh:
	cp 006h		;337e
	jr nz,l3388h		;3380
	ld hl,(l59c8h)		;3382
	jp sub_2eebh		;3385
l3388h:
	cp 007h		;3388
	jr nz,l3392h		;338a
	ld hl,(l59c8h+2)		;338c
	jp sub_2eebh		;338f
l3392h:
	cp 008h		;3392
	jr nz,l339ch		;3394
	ld hl,(l59cch)		;3396
	jp sub_2eebh		;3399
l339ch:
	cp 009h		;339c
	jr nz,l33a6h		;339e
	ld hl,(l59ceh)		;33a0
	jp sub_2eebh		;33a3
l33a6h:
	cp 00ah		;33a6
	jr nz,l33b0h		;33a8
	ld hl,(l59d0h)		;33aa
	jp sub_2eebh		;33ad
l33b0h:
	cp 00bh		;33b0
	jr nz,l33bah		;33b2
	ld hl,(l59d2h)		;33b4
	jp sub_2eebh		;33b7
l33bah:
	cp 00ch		;33ba
	jr nz,l33c4h		;33bc
	ld hl,(l59d4h)		;33be
	jp sub_2eebh		;33c1
l33c4h:
	cp 00dh		;33c4
	jr nz,l33d0h		;33c6
	ld hl,0cefeh		;33c8
	res 6,(hl)		;33cb
	jp l2ea3h		;33cd
l33d0h:
	ret			;33d0
	nop			;33d1
	nop			;33d2
l33d3h:
	pop hl			;33d3
	ld hl,0bf19h		;33d4
	res 0,(hl)		;33d7
	ld hl,(l59deh)		;33d9
	call sub_2eebh		;33dc
	ld hl,0cefeh		;33df
	set 3,(hl)		;33e2
	xor a			;33e4
	ld (0bef8h),a		;33e5
	ret			;33e8
l33e9h:
	ld hl,0bef8h		;33e9
	ld a,(hl)			;33ec
	inc (hl)			;33ed
	or a			;33ee
	jr nz,l33f7h		;33ef
	ld hl,(l59e0h)		;33f1
	jp sub_2eebh		;33f4
l33f7h:
	cp 001h		;33f7
	jr nz,l3401h		;33f9
	ld hl,(l59e2h)		;33fb
	jp sub_2eebh		;33fe
l3401h:
	cp 002h		;3401
	jr nz,l340bh		;3403
	ld hl,(l59e4h)		;3405
	jp sub_2eebh		;3408
l340bh:
	cp 003h		;340b
	jr nz,l3415h		;340d
	ld hl,(l59e6h)		;340f
	jp sub_2eebh		;3412
l3415h:
	cp 004h		;3415
	jr nz,l341fh		;3417
	ld hl,(l59e8h)		;3419
	jp sub_2eebh		;341c
l341fh:
	cp 005h		;341f
	jr nz,l3429h		;3421
	ld hl,(l59eah)		;3423
	jp sub_2eebh		;3426
l3429h:
	cp 006h		;3429
	jr nz,l3433h		;342b
	ld hl,(l59ech)		;342d
	jp sub_2eebh		;3430
l3433h:
	cp 007h		;3433
	jr nz,l343dh		;3435
	ld hl,(l59ech+2)		;3437
	jp sub_2eebh		;343a
l343dh:
	cp 008h		;343d
	jr nz,l3447h		;343f
	ld hl,(l59f0h)		;3441
	jp sub_2eebh		;3444
l3447h:
	cp 009h		;3447
	jr nz,l3451h		;3449
	ld hl,(l59f2h)		;344b
	jp sub_2eebh		;344e
l3451h:
	cp 00ah		;3451
	jr nz,l345bh		;3453
	ld hl,(l59f4h)		;3455
	jp sub_2eebh		;3458
l345bh:
	cp 00bh		;345b
	jr nz,l3465h		;345d
	ld hl,(l59f6h)		;345f
	jp sub_2eebh		;3462
l3465h:
	cp 00ch		;3465
	jr nz,l346fh		;3467
	ld hl,(l59f8h)		;3469
	jp sub_2eebh		;346c
l346fh:
	cp 00dh		;346f
	jr nz,l347bh		;3471
	ld hl,0cefeh		;3473
	res 3,(hl)		;3476
	jp l2ea3h		;3478
l347bh:
	ret			;347b
	nop			;347c
	nop			;347d
	ld bc,l3e11h		;347e
	cp a			;3481
	call l0d43h		;3482
	ret nc			;3485
	di			;3486
	ld hl,(0bf40h)		;3487
	ld a,(hl)			;348a
	ex de,hl			;348b
	inc de			;348c
	ld hl,(0bf42h)		;348d
	and a			;3490
	sbc hl,de		;3491
	jr nz,l3499h		;3493
	ld de,(0bf44h)		;3495
l3499h:
	ld (0bf40h),de		;3499
	ld l,a			;349d
	push hl			;349e
	ld hl,(0bf40h)		;349f
	ld a,(hl)			;34a2
	ex de,hl			;34a3
	inc de			;34a4
	ld hl,(0bf42h)		;34a5
	and a			;34a8
	sbc hl,de		;34a9
	jr nz,l34b1h		;34ab
	ld de,(0bf44h)		;34ad
l34b1h:
	ld (0bf40h),de		;34b1
	ei			;34b5
	pop hl			;34b6
	ld h,a			;34b7
	push hl			;34b8
	pop bc			;34b9
	push bc			;34ba
	ld hl,0ca0dh		;34bb
	ld de,0bf20h		;34be
l34c1h:
	push bc			;34c1
	push hl			;34c2
	call l0cc2h		;34c3
	pop hl			;34c6
	pop bc			;34c7
	ld (hl),a			;34c8
	inc hl			;34c9
	dec bc			;34ca
	ld a,b			;34cb
	or c			;34cc
	jr nz,l34c1h		;34cd
	pop hl			;34cf
	dec hl			;34d0
	ld (0cb84h),hl		;34d1
	ld bc,0fff1h		;34d4
	add hl,bc			;34d7
	ret nc			;34d8
	ld hl,0ca0dh		;34d9
	push hl			;34dc
	call sub_0bb3h		;34dd
	pop hl			;34e0
	call sub_34f3h		;34e1
	ld a,(0c001h)		;34e4
	and a			;34e7
	jr nz,l34f0h		;34e8
	ld hl,0bfd4h		;34ea
	call l084eh		;34ed
l34f0h:
	jp 0347fh		;34f0
sub_34f3h:
	call sub_3fffh		;34f3
	jp nz,l3656h		;34f6
	call sub_3e88h		;34f9
	jp z,l3656h		;34fc
	ld hl,0ca13h		;34ff
	push hl			;3502
	ld a,(hl)			;3503
	ld b,a			;3504
	ld hl,0ca1ah		;3505
	xor (hl)			;3508
	ld hl,0c271h		;3509
	res 5,(hl)		;350c
	bit 7,a		;350e
	jr z,l3523h		;3510
	ld a,(0c042h)		;3512
	and 001h		;3515
	jr z,l3523h		;3517
	set 5,(hl)		;3519
	res 4,(hl)		;351b
	bit 7,b		;351d
	jr z,l3523h		;351f
	set 4,(hl)		;3521
l3523h:
	pop hl			;3523
	ld de,0c019h		;3524
	call sub_3fd5h		;3527
	jr nz,l3549h		;352a
	ld a,(0bf19h)		;352c
	set 7,a		;352f
	ld (0bf19h),a		;3531
	push iy		;3534
	ld a,00ah		;3536
	call sub_3686h		;3538
	pop hl			;353b
	jr nz,l355fh		;353c
	ld a,(0bf19h)		;353e
	res 7,a		;3541
	ld (0bf19h),a		;3543
	jp l36cdh		;3546
l3549h:
	ld de,0c009h		;3549
	call sub_3fd5h		;354c
	jp nz,l3656h		;354f
	push iy		;3552
	call sub_36a9h		;3554
	jr nz,l355dh		;3557
	pop hl			;3559
	jp l36cdh		;355a
l355dh:
	pop iy		;355d
l355fh:
	ld hl,(0cb86h)		;355f
	inc hl			;3562
	ld a,(hl)			;3563
	and 0efh		;3564
	cp 02fh		;3566
	jr nz,l35c2h		;3568
	push hl			;356a
	push de			;356b
	ld hl,(0cef1h)		;356c
	inc hl			;356f
	ld (0cef1h),hl		;3570
	ld de,0ca1ah		;3573
	ld hl,l3683h		;3576
	call sub_3fd5h		;3579
	pop de			;357c
	pop hl			;357d
	jr z,l3588h		;357e
	ld a,(0c273h)		;3580
	and 001h		;3583
	jp nz,l3613h		;3585
l3588h:
	ld a,(0bf19h)		;3588
	bit 7,a		;358b
	res 7,a		;358d
	ld (0bf19h),a		;358f
	ld a,00ah		;3592
	jr nz,l359eh		;3594
	ld a,(0cbc6h)		;3596
	cp 00ah		;3599
	jr nz,l359eh		;359b
	xor a			;359d
l359eh:
	push hl			;359e
	call sub_3dd6h		;359f
	pop hl			;35a2
	pop de			;35a3
	push de			;35a4
	push hl			;35a5
	call sub_35b4h		;35a6
	pop hl			;35a9
	pop de			;35aa
	ld (hl),000h		;35ab
	jp l4405h		;35ad
l35b0h:
	ld (hl),063h		;35b0
	jr l35b6h		;35b2
sub_35b4h:
	ld (hl),01fh		;35b4
l35b6h:
	call sub_3b06h		;35b6
	jp z,l3656h		;35b9
	call sub_4810h		;35bc
	jp l3656h		;35bf
l35c2h:
	cp 043h		;35c2
	jr nz,l35d3h		;35c4
	ld a,(0c271h)		;35c6
	and 020h		;35c9
	jr z,sub_35b4h		;35cb
	bit 4,(hl)		;35cd
	jr z,l35b0h		;35cf
	jr sub_35b4h		;35d1
l35d3h:
	cp 003h		;35d3
	jr nz,l35e9h		;35d5
	call sub_4f08h		;35d7
	jr z,l3656h		;35da
	bit 4,(hl)		;35dc
	jr z,l3656h		;35de
	ld a,(0c271h)		;35e0
	and 020h		;35e3
	jr z,l3656h		;35e5
	jr sub_35b4h		;35e7
l35e9h:
	cp 063h		;35e9
	jr z,l3656h		;35eb
	cp 00fh		;35ed
	jr z,l3656h		;35ef
	cp 087h		;35f1
	jr z,l3656h		;35f3
	bit 4,(hl)		;35f5
	jr z,l3656h		;35f7
	call sub_4f08h		;35f9
	jr z,l3656h		;35fc
	push bc			;35fe
	ld a,(0ca13h)		;35ff
	ld b,a			;3602
	ld a,(0ca1ah)		;3603
	xor b			;3606
	and 080h		;3607
	ld a,b			;3609
	pop bc			;360a
	jr z,l3656h		;360b
	bit 7,a		;360d
	jr nz,sub_35b4h		;360f
	jr l3656h		;3611
l3613h:
	ld a,(0bf19h)		;3613
	bit 7,a		;3616
	ld a,000h		;3618
	jr z,l3626h		;361a
	ld a,(0c041h)		;361c
	bit 7,a		;361f
	jp z,l3588h		;3621
	ld a,00ah		;3624
l3626h:
	push af			;3626
	push hl			;3627
	call sub_3dd6h		;3628
	pop hl			;362b
	pop bc			;362c
	ld a,(iy+007h)		;362d
	and a			;3630
	jr z,l3646h		;3631
	ld a,b			;3633
	inc a			;3634
	ld c,00ah		;3635
	push af			;3637
	ld a,(0c024h)		;3638
	and a			;363b
	jr z,l363fh		;363c
	ld c,a			;363e
l363fh:
	pop af			;363f
	cp c			;3640
	jr c,l3626h		;3641
	jp l3588h		;3643
l3646h:
	ld a,(hl)			;3646
	and 010h		;3647
	or 063h		;3649
	ld (hl),a			;364b
	dec hl			;364c
	ld a,(0cba4h)		;364d
	call sub_3c72h		;3650
	call sub_365dh		;3653
l3656h:
	ld hl,l0000h		;3656
	ld (0cb84h),hl		;3659
	ret			;365c
sub_365dh:
	ld a,(0bf19h)		;365d
	bit 7,a		;3660
	res 7,a		;3662
	ld (0bf19h),a		;3664
	ret z			;3667
	ld hl,0cefeh		;3668
	ld (hl),080h		;366b
	xor a			;366d
	ld (0bf19h),a		;366e
	call sub_283bh		;3671
	ld (0cba8h),hl		;3674
	ld (0cbaah),hl		;3677
	jp l2e28h		;367a
	ld b,b			;367d
	ld b,b			;367e
	ld b,b			;367f
	ld b,b			;3680
	ld b,b			;3681
	ld b,b			;3682
l3683h:
	ld h,b			;3683
	ret			;3684
	xor a			;3685
sub_3686h:
	push af			;3686
	call sub_3dd6h		;3687
	ld a,(iy+007h)		;368a
	and a			;368d
	jr z,l36a0h		;368e
	push iy		;3690
	pop hl			;3692
	ld bc,0ff87h		;3693
	add hl,bc			;3696
	ld de,0ca1ah		;3697
	call sub_3fd5h		;369a
	pop bc			;369d
	ret z			;369e
	push bc			;369f
l36a0h:
	pop af			;36a0
	inc a			;36a1
	cp 00bh		;36a2
	jr c,sub_3686h		;36a4
	or 0ffh		;36a6
	ret			;36a8
sub_36a9h:
	xor a			;36a9
l36aah:
	push af			;36aa
	call sub_3dd6h		;36ab
	ld a,(iy+007h)		;36ae
	and a			;36b1
	jr z,l36c4h		;36b2
	push iy		;36b4
	pop hl			;36b6
	ld bc,0ff87h		;36b7
	add hl,bc			;36ba
	ld de,0ca1ah		;36bb
	call sub_3fd5h		;36be
	pop bc			;36c1
	ret z			;36c2
	push bc			;36c3
l36c4h:
	pop af			;36c4
	inc a			;36c5
	cp 00ah		;36c6
	jr c,l36aah		;36c8
	or 0ffh		;36ca
	ret			;36cc
l36cdh:
	ld hl,0ff87h		;36cd
	push iy		;36d0
	pop de			;36d2
	add hl,de			;36d3
	ld de,0ca1ah		;36d4
	call sub_3fd5h		;36d7
	jr z,l36f2h		;36da
	ld hl,(0cb86h)		;36dc
	inc hl			;36df
	ld a,(hl)			;36e0
	and 0efh		;36e1
	cp 02fh		;36e3
	jp nz,l35c2h		;36e5
	push hl			;36e8
	call sub_35b4h		;36e9
	pop hl			;36ec
	ld (hl),000h		;36ed
	jp l4405h		;36ef
l36f2h:
	ld hl,(0cb86h)		;36f2
	inc hl			;36f5
	ld a,(hl)			;36f6
	push af			;36f7
	call sub_37a5h		;36f8
	ld a,00ch		;36fb
	cp e			;36fd
	jr nz,l3710h		;36fe
	push hl			;3700
	ld hl,(0ceefh)		;3701
	inc hl			;3704
	ld (0ceefh),hl		;3705
	pop hl			;3708
	push de			;3709
	call sub_44ech		;370a
	pop de			;370d
	jr l3778h		;370e
l3710h:
	ld a,008h		;3710
	cp e			;3712
	jr nz,l3747h		;3713
	push bc			;3715
	push de			;3716
	push hl			;3717
	ld hl,(0cef1h)		;3718
	inc hl			;371b
	ld (0cef1h),hl		;371c
	call sub_4f08h		;371f
	ld hl,0c271h		;3722
	jr z,l372fh		;3725
	set 0,(iy+02eh)		;3727
	bit 5,(hl)		;372b
	jr nz,l3733h		;372d
l372fh:
	res 0,(iy+02eh)		;372f
l3733h:
	ld hl,(0cb86h)		;3733
	ld de,0ca0dh		;3736
	call sub_3f06h		;3739
	call sub_3d2dh		;373c
	call sub_3d6bh		;373f
	pop hl			;3742
	pop de			;3743
	pop bc			;3744
	jr l3778h		;3745
l3747h:
	ld a,00ah		;3747
	cp e			;3749
	jr nz,l3760h		;374a
	ld a,(iy+007h)		;374c
	cp 001h		;374f
	jr nz,l3778h		;3751
	push bc			;3753
	push de			;3754
	push hl			;3755
	call sub_3b42h		;3756
	pop hl			;3759
	pop de			;375a
	pop bc			;375b
	jr c,l3778h		;375c
	pop af			;375e
	ret			;375f
l3760h:
	ld a,080h		;3760
	cp e			;3762
	jr nz,l3778h		;3763
	call sub_3b2dh		;3765
	jr z,l3778h		;3768
	pop af			;376a
	bit 4,a		;376b
	ret z			;376d
	xor a			;376e
	ld hl,0c271h		;376f
	set 4,(hl)		;3772
	ld e,a			;3774
	jp l37ech		;3775
l3778h:
	pop af			;3778
	ld d,a			;3779
	push af			;377a
	push hl			;377b
	push de			;377c
	ld a,007h		;377d
	cp e			;377f
	jr c,l378dh		;3780
	ld a,(iy+007h)		;3782
	cp 004h		;3785
	jr c,l378dh		;3787
	ld a,d			;3789
	call sub_38bah		;378a
l378dh:
	pop de			;378d
	call l37ech		;378e
	pop hl			;3791
	pop af			;3792
	bit 0,a		;3793
	ret nz			;3795
	call sub_39c1h		;3796
	push de			;3799
	ld e,021h		;379a
	call 00561h		;379c
	pop de			;379f
	ld a,(0bfdfh)		;37a0
	ld (hl),a			;37a3
	ret			;37a4
sub_37a5h:
	ld b,a			;37a5
	and 003h		;37a6
	cp 003h		;37a8
	ld a,b			;37aa
	jr z,l37bdh		;37ab
	rra			;37ad
	ld a,b			;37ae
	jr c,l37b9h		;37af
	ld e,000h		;37b1
	call sub_3b2dh		;37b3
	jr nz,l37d8h		;37b6
	ret			;37b8
l37b9h:
	ld c,00fh		;37b9
	jr l37bfh		;37bb
l37bdh:
	ld c,0efh		;37bd
l37bfh:
	and c			;37bf
	ld c,a			;37c0
	ld hl,l3b1ah		;37c1
	call sub_3b0fh		;37c4
	ld e,a			;37c7
	cp 004h		;37c8
	jr nz,l37d5h		;37ca
	push hl			;37cc
	ld hl,(0ceedh)		;37cd
	inc hl			;37d0
	ld (0ceedh),hl		;37d1
	pop hl			;37d4
l37d5h:
	cp 008h		;37d5
	ret nc			;37d7
l37d8h:
	call sub_3b2dh		;37d8
	jr z,l37eah		;37db
	bit 4,b		;37dd
	jr z,l37eah		;37df
	call sub_3b3ch		;37e1
	ret z			;37e4
	set 7,(iy+008h)		;37e5
	ret			;37e9
l37eah:
	inc e			;37ea
	ret			;37eb
l37ech:
	ld a,e			;37ec
	cp 008h		;37ed
	jp nc,l3af1h		;37ef
	ld a,(iy+007h)		;37f2
	ld b,a			;37f5
	and a			;37f6
	rla			;37f7
	rla			;37f8
	rla			;37f9
	add a,e			;37fa
	ld l,a			;37fb
	ld h,000h		;37fc
	sla l		;37fe
	rl h		;3800
	ld de,l05b9h		;3802
	add hl,de			;3805
	call sub_3b2dh		;3806
	jr z,l3811h		;3809
	call sub_3b3ch		;380b
	jr z,l3811h		;380e
	inc hl			;3810
l3811h:
	ld a,(hl)			;3811
l3812h:
	push af			;3812
	and 00fh		;3813
	ld (iy+007h),a		;3815
	ld c,001h		;3818
	jr nz,l382fh		;381a
	ld a,b			;381c
	and a			;381d
	jr z,l384dh		;381e
	cp c			;3820
	ld a,000h		;3821
	jr nz,l382ah		;3823
	call sub_442fh		;3825
	ld a,003h		;3828
l382ah:
	call sub_3bach		;382a
	jr l384dh		;382d
l382fh:
	cp 004h		;382f
	jr nz,l384dh		;3831
	ld a,c			;3833
	cp b			;3834
	jr nz,l383ch		;3835
	call sub_3cb4h		;3837
	jr l384dh		;383a
l383ch:
	ld a,b			;383c
	and a			;383d
	jr z,l384ah		;383e
	ld a,003h		;3840
	cp b			;3842
	jr c,l384dh		;3843
	call sub_3d6bh		;3845
	jr l384dh		;3848
l384ah:
	call sub_3c72h		;384a
l384dh:
	pop af			;384d
	rra			;384e
	rra			;384f
	rra			;3850
	rra			;3851
	and 00fh		;3852
	ld l,a			;3854
	ld h,000h		;3855
	ld de,l07b9h		;3857
	add hl,de			;385a
	ld a,(hl)			;385b
	bit 7,a		;385c
	jr nz,l3869h		;385e
	and a			;3860
	ret z			;3861
l3862h:
	or (iy+006h)		;3862
	ld (iy+006h),a		;3865
	ret			;3868
l3869h:
	cp 081h		;3869
	jr nz,l3872h		;386b
	ld (iy-03bh),000h		;386d
	ret			;3871
l3872h:
	cp 088h		;3872
	jr z,l387ah		;3874
	cp 0a0h		;3876
	jr nz,l3886h		;3878
l387ah:
	and 07fh		;387a
	push af			;387c
	or (iy+008h)		;387d
	ld (iy+008h),a		;3880
	pop af			;3883
	jr l3862h		;3884
l3886h:
	ld b,a			;3886
	call sub_3b2dh		;3887
	jr z,l38b3h		;388a
	ld a,b			;388c
	cp 082h		;388d
	jr nz,l3895h		;388f
	ld a,081h		;3891
	jr l389bh		;3893
l3895h:
	cp 083h		;3895
	jr nz,l38b0h		;3897
	ld a,084h		;3899
l389bh:
	push af			;389b
	or (iy+008h)		;389c
	ld (iy+008h),a		;389f
	push de			;38a2
	push hl			;38a3
	ld e,021h		;38a4
	call 00561h		;38a6
	ld (hl),000h		;38a9
	pop hl			;38ab
	pop de			;38ac
	pop af			;38ad
	jr l3862h		;38ae
l38b0h:
	cp 080h		;38b0
	ret nz			;38b2
l38b3h:
	ld a,(iy-03fh)		;38b3
	ld (iy-03ch),a		;38b6
	ret			;38b9
sub_38bah:
	push af			;38ba
	rlca			;38bb
	rlca			;38bc
	rlca			;38bd
	add a,(iy-03eh)		;38be
	and 007h		;38c1
	ld c,a			;38c3
	ld b,(iy-03fh)		;38c4
	sub b			;38c7
	and 007h		;38c8
	ld e,a			;38ca
	ld a,(iy+009h)		;38cb
	ld d,a			;38ce
	jr z,l3929h		;38cf
	sub b			;38d1
	and 007h		;38d2
	sub e			;38d4
	jp c,l3980h		;38d5
	push bc			;38d8
	push de			;38d9
l38dah:
	push bc			;38da
	push de			;38db
	ld c,b			;38dc
	sla c		;38dd
	sla c		;38df
	sla c		;38e1
	ld b,000h		;38e3
	ld hl,0ffc6h		;38e5
	add hl,bc			;38e8
	push iy		;38e9
	pop bc			;38eb
	add hl,bc			;38ec
	call sub_0dc5h		;38ed
	inc hl			;38f0
	inc hl			;38f1
	call l0dcbh		;38f2
	call sub_0db9h		;38f5
	push bc			;38f8
	pop hl			;38f9
	push hl			;38fa
	and a			;38fb
	sbc hl,de		;38fc
	pop hl			;38fe
	jr nz,l3909h		;38ff
	pop de			;3901
	pop bc			;3902
	pop bc			;3903
	pop bc			;3904
	pop bc			;3905
	jp l3980h		;3906
l3909h:
	call l1ec9h		;3909
	call sub_1ee7h		;390c
	ld (ix+003h),000h		;390f
	pop de			;3913
	pop bc			;3914
	ld a,b			;3915
	inc a			;3916
	and 007h		;3917
	ld b,a			;3919
	dec e			;391a
	jr nz,l38dah		;391b
	pop de			;391d
	pop bc			;391e
	push de			;391f
	ld e,01dh		;3920
	call 00561h		;3922
	pop de			;3925
	call l084eh		;3926
l3929h:
	ld a,c			;3929
	ld (iy-03fh),a		;392a
	cp (iy-03ch)		;392d
	jr z,l3934h		;3930
	jr l3968h		;3932
l3934h:
	call sub_3b2dh		;3934
	call nz,sub_39a1h		;3937
	ld a,(0c047h)		;393a
	and 040h		;393d
	jr z,l3965h		;393f
	res 6,(iy+02eh)		;3941
	ld a,(iy+007h)		;3945
	cp 004h		;3948
	jr c,l3965h		;394a
	ld (iy+007h),003h		;394c
	ld e,01dh		;3950
	call 00561h		;3952
	ld (hl),000h		;3955
	ld a,(iy+006h)		;3957
	and 080h		;395a
	ld (iy+006h),a		;395c
	res 7,(iy+008h)		;395f
	pop af			;3963
	ret			;3964
l3965h:
	call 04c82h		;3965
l3968h:
	ld (iy-03bh),000h		;3968
	pop af			;396c
	push af			;396d
	and 007h		;396e
	cp 005h		;3970
	jr nz,l397eh		;3972
	ld e,01dh		;3974
	call 00561h		;3976
	ld a,(hl)			;3979
	and a			;397a
	call l084eh		;397b
l397eh:
	pop af			;397e
	ret			;397f
l3980h:
	ld a,(iy+007h)		;3980
	cp 004h		;3983
	jr c,l39bfh		;3985
	pop af			;3987
	ld (iy+029h),a		;3988
	ld a,010h		;398b
	sla d		;398d
	or d			;398f
	ld d,a			;3990
	call sub_3d62h		;3991
	or d			;3994
	ld (iy+02ah),a		;3995
	ld (iy+02bh),008h		;3998
	ld (iy+007h),002h		;399c
	ret			;39a0
sub_39a1h:
	ld hl,l39afh		;39a1
	ld e,(iy+007h)		;39a4
	ld d,000h		;39a7
	add hl,de			;39a9
	ld a,(hl)			;39aa
	ld (iy+007h),a		;39ab
	ret			;39ae
l39afh:
	nop			;39af
	ld bc,l0302h		;39b0
	inc b			;39b3
	dec b			;39b4
	inc b			;39b5
	rlca			;39b6
	ex af,af'			;39b7
	add hl,bc			;39b8
	rlca			;39b9
	ex af,af'			;39ba
	add hl,bc			;39bb
	dec c			;39bc
	ld c,00fh		;39bd
l39bfh:
	pop af			;39bf
	ret			;39c0
sub_39c1h:
	push af			;39c1
	ld hl,(0cb86h)		;39c2
	inc hl			;39c5
	push hl			;39c6
	ld hl,(0cef3h)		;39c7
	inc hl			;39ca
	ld (0cef3h),hl		;39cb
	pop hl			;39ce
	bit 2,(iy+006h)		;39cf
	jr nz,l39dch		;39d3
	ld a,(iy+007h)		;39d5
	cp 004h		;39d8
	jr nc,l39deh		;39da
l39dch:
	pop af			;39dc
	ret			;39dd
l39deh:
	pop af			;39de
	push af			;39df
	rra			;39e0
	and 007h		;39e1
	cp (iy-03dh)		;39e3
	jr z,l3a08h		;39e6
	call sub_3b2dh		;39e8
	jr nz,l3a01h		;39eb
	bit 1,(iy+006h)		;39ed
	jp nz,l39fdh		;39f1
	push hl			;39f4
	ld hl,(0cee7h)		;39f5
	inc hl			;39f8
	ld (0cee7h),hl		;39f9
	pop hl			;39fc
l39fdh:
	set 1,(iy+006h)		;39fd
l3a01h:
	ld e,005h		;3a01
	call l3af1h		;3a03
	pop af			;3a06
	ret			;3a07
l3a08h:
	push hl			;3a08
	call sub_4c96h		;3a09
	pop hl			;3a0c
	inc hl			;3a0d
	inc hl			;3a0e
	push hl			;3a0f
	call sub_3b9eh		;3a10
	ex (sp),hl			;3a13
	push hl			;3a14
	ld de,0bf34h		;3a15
	ld hl,0c275h		;3a18
	set 0,(hl)		;3a1b
	call sub_0d39h		;3a1d
	pop hl			;3a20
	pop bc			;3a21
	ld a,(0bf15h)		;3a22
	push af			;3a25
	ld a,(0c046h)		;3a26
	and 004h		;3a29
	jr z,l3a50h		;3a2b
	ld a,(0cefeh)		;3a2d
	bit 7,a		;3a30
	jr z,l3a42h		;3a32
	ld a,(iy+02dh)		;3a34
	cp 00ah		;3a37
	jr nz,l3a42h		;3a39
	ld a,(0cbc7h)		;3a3b
	cp 00ah		;3a3e
	jr nz,l3a50h		;3a40
l3a42h:
	push hl			;3a42
	ld hl,0bf17h		;3a43
	set 5,(hl)		;3a46
	pop hl			;3a48
	call sub_3b72h		;3a49
	jr nc,l3a50h		;3a4c
	jr l3ab4h		;3a4e
l3a50h:
	dec bc			;3a50
	bit 7,b		;3a51
	jr z,l3a59h		;3a53
	pop af			;3a55
	jp l3adch		;3a56
l3a59h:
	ld a,(hl)			;3a59
	inc hl			;3a5a
	push bc			;3a5b
	push hl			;3a5c
	push af			;3a5d
	call sub_3d7fh		;3a5e
	pop bc			;3a61
	ld a,b			;3a62
	jr z,l3a6fh		;3a63
	ld a,(0c045h)		;3a65
	and 004h		;3a68
	ld a,b			;3a6a
	jr nz,l3a6fh		;3a6b
	and 07fh		;3a6d
l3a6fh:
	push af			;3a6f
	ld a,(0cefeh)		;3a70
	bit 7,a		;3a73
	jr z,l3aach		;3a75
	ld a,(iy+02dh)		;3a77
	cp 00ah		;3a7a
	jr nz,l3aach		;3a7c
	pop af			;3a7e
	push af			;3a7f
	ld hl,(0befah)		;3a80
	ld (hl),a			;3a83
	ex de,hl			;3a84
	inc de			;3a85
	ld hl,(0befeh)		;3a86
	and a			;3a89
	sbc hl,de		;3a8a
	jr nz,l3a92h		;3a8c
	ld de,(0bf00h)		;3a8e
l3a92h:
	ld hl,(0befch)		;3a92
	and a			;3a95
l3a96h:
	sbc hl,de		;3a96
	scf			;3a98
	jr z,l3aa0h		;3a99
	ld (0befah),de		;3a9b
	and a			;3a9f
l3aa0h:
	ld a,(0cbc7h)		;3aa0
	cp 00ah		;3aa3
	jr z,l3aach		;3aa5
	pop af			;3aa7
	pop hl			;3aa8
	pop bc			;3aa9
	jr l3a50h		;3aaa
l3aach:
	pop af			;3aac
	call l42feh		;3aad
	pop hl			;3ab0
	pop bc			;3ab1
	jr nc,l3a50h		;3ab2
l3ab4h:
	pop af			;3ab4
	ld (0bf15h),a		;3ab5
	call sub_0d56h		;3ab8
	call sub_3ac0h		;3abb
	jr l3ae5h		;3abe
sub_3ac0h:
	ld e,002h		;3ac0
	call l3af1h		;3ac2
	res 0,(iy+006h)		;3ac5
	bit 0,(iy+008h)		;3ac9
	ret z			;3acd
	res 0,(iy+008h)		;3ace
	set 2,(iy+008h)		;3ad2
	ret			;3ad6
	ld e,003h		;3ad7
	call l3af1h		;3ad9
l3adch:
	ld a,(iy-03dh)		;3adc
	inc a			;3adf
	and 007h		;3ae0
	ld (iy-03dh),a		;3ae2
l3ae5h:
	ld hl,0c275h		;3ae5
	res 0,(hl)		;3ae8
	ld hl,0bf17h		;3aea
	res 5,(hl)		;3aed
	pop af			;3aef
	ret			;3af0
l3af1h:
	and a			;3af1
	ld a,(iy+007h)		;3af2
	ld b,a			;3af5
	rla			;3af6
	rla			;3af7
	rla			;3af8
	rla			;3af9
	add a,e			;3afa
	ld e,a			;3afb
	ld d,000h		;3afc
	ld hl,l06b9h		;3afe
	add hl,de			;3b01
	ld a,(hl)			;3b02
	jp l3812h		;3b03
sub_3b06h:
	ld de,0ca0dh		;3b06
	ld hl,(0cb86h)		;3b09
	jp sub_3f06h		;3b0c
sub_3b0fh:
	ld a,(hl)			;3b0f
	inc hl			;3b10
	cp 0ffh		;3b11
	ret z			;3b13
	cp c			;3b14
	ld a,(hl)			;3b15
	inc hl			;3b16
	jr nz,sub_3b0fh		;3b17
	ret			;3b19
l3b1ah:
	ld bc,sub_0502h		;3b1a
	ld b,009h		;3b1d
	inc b			;3b1f
	inc bc			;3b20
	add a,b			;3b21
	rrca			;3b22
	dec bc			;3b23
	cpl			;3b24
	ex af,af'			;3b25
	ld b,e			;3b26
	add hl,bc			;3b27
	ld h,e			;3b28
	ld a,(bc)			;3b29
	add a,a			;3b2a
	inc c			;3b2b
	rst 38h			;3b2c
sub_3b2dh:
	ld a,(iy+007h)		;3b2d
	cp 002h		;3b30
	jr nc,l3b37h		;3b32
	jp sub_4f08h		;3b34
l3b37h:
	bit 0,(iy+02eh)		;3b37
	ret			;3b3b
sub_3b3ch:
	ld a,(0c271h)		;3b3c
	bit 4,a		;3b3f
	ret			;3b41
sub_3b42h:
	ld hl,(0cb86h)		;3b42
	ld de,0ca0dh		;3b45
	call sub_3f06h		;3b48
	push iy		;3b4b
	pop hl			;3b4d
	ld de,0ff87h		;3b4e
	add hl,de			;3b51
	ex de,hl			;3b52
	ld hl,0ca1ah		;3b53
	ld bc,l0006h+1		;3b56
l3b59h:
	inc de			;3b59
	ld a,(de)			;3b5a
	and a			;3b5b
	jr z,l3b6ah		;3b5c
	add hl,bc			;3b5e
	ex de,hl			;3b5f
	add hl,bc			;3b60
	dec hl			;3b61
	ex de,hl			;3b62
	call sub_3fd5h		;3b63
	jr z,l3b59h		;3b66
	jr l3b70h		;3b68
l3b6ah:
	bit 0,(hl)		;3b6a
	jr z,l3b70h		;3b6c
	scf			;3b6e
	ret			;3b6f
l3b70h:
	and a			;3b70
	ret			;3b71
sub_3b72h:
	push bc			;3b72
	push de			;3b73
	push hl			;3b74
	push de			;3b75
	ld de,0cb8ch		;3b76
	push de			;3b79
	ld a,0ffh		;3b7a
	ld (de),a			;3b7c
	inc de			;3b7d
	ld hl,l0003h		;3b7e
	add hl,bc			;3b81
	ld a,0f0h		;3b82
	or h			;3b84
	ld h,a			;3b85
	ex de,hl			;3b86
	ld (hl),d			;3b87
	inc hl			;3b88
	ld (hl),e			;3b89
	inc hl			;3b8a
	ld bc,(0cb86h)		;3b8b
	inc bc			;3b8f
	inc bc			;3b90
	ld a,(bc)			;3b91
	ld (hl),a			;3b92
	pop hl			;3b93
	pop de			;3b94
	ld b,004h		;3b95
	call l0d67h		;3b97
	pop hl			;3b9a
	pop de			;3b9b
	pop bc			;3b9c
	ret			;3b9d
sub_3b9eh:
	ld de,0ca0dh		;3b9e
	and a			;3ba1
	sbc hl,de		;3ba2
	ex de,hl			;3ba4
	ld hl,(0cb84h)		;3ba5
	and a			;3ba8
	sbc hl,de		;3ba9
	ret			;3bab
sub_3bach:
	push af			;3bac
	pop bc			;3bad
	bit 2,(iy+02eh)		;3bae
	jr z,l3bd9h		;3bb2
	ld (iy+007h),001h		;3bb4
	ld (iy-03bh),000h		;3bb8
	call sub_3d16h		;3bbc
	ld a,(iy+009h)		;3bbf
	sub (iy-03eh)		;3bc2
	rrca			;3bc5
	rrca			;3bc6
	rrca			;3bc7
	and 0e0h		;3bc8
	call sub_38bah		;3bca
	call sub_443eh		;3bcd
	ld e,01dh		;3bd0
	call 00561h		;3bd2
	call l084eh		;3bd5
	ret			;3bd8
l3bd9h:
	ld a,b			;3bd9
	cp 002h		;3bda
	push af			;3bdc
	jr nz,l3beah		;3bdd
	call sub_3d7fh		;3bdf
	ld hl,l3c59h		;3be2
	call nz,l43c0h		;3be5
	jr l3beah		;3be8
l3beah:
	ld a,(iy+02dh)		;3bea
	cp 00ah		;3bed
	jr nz,l3bf8h		;3bef
	ld a,(0cefeh)		;3bf1
	bit 7,a		;3bf4
	jr nz,l3bffh		;3bf6
l3bf8h:
	ld a,(0c044h)		;3bf8
	bit 5,a		;3bfb
	jr z,l3c3fh		;3bfd
l3bffh:
	call sub_4447h		;3bff
	ld a,(iy+02dh)		;3c02
	cp 00ah		;3c05
	jr nz,l3c1dh		;3c07
	xor a			;3c09
	ld (0cefeh),a		;3c0a
	push hl			;3c0d
	call sub_32a2h		;3c0e
	nop			;3c11
	nop			;3c12
	nop			;3c13
	nop			;3c14
	nop			;3c15
	xor a			;3c16
	pop hl			;3c17
	ld (0bf19h),a		;3c18
	jr l3c3dh		;3c1b
l3c1dh:
	ld a,(0c273h)		;3c1d
	bit 7,a		;3c20
	jr nz,l3c3dh		;3c22
	ld hl,0cbc7h		;3c24
	push hl			;3c27
	ld a,(hl)			;3c28
	push af			;3c29
	ld a,(iy+02dh)		;3c2a
	ld (hl),a			;3c2d
	push iy		;3c2e
	ld a,(0c046h)		;3c30
	and 008h		;3c33
	call z,sub_1ae7h		;3c35
	pop iy		;3c38
	pop af			;3c3a
	pop hl			;3c3b
	ld (hl),a			;3c3c
l3c3dh:
	jr l3c47h		;3c3d
l3c3fh:
	call sub_3d7fh		;3c3f
	jr z,l3c47h		;3c42
	call sub_4447h		;3c44
l3c47h:
	call 04c82h		;3c47
	call l38b3h		;3c4a
	ld (iy-03ch),a		;3c4d
	pop af			;3c50
	cp 001h		;3c51
	ret z			;3c53
	xor a			;3c54
	ld (iy+007h),a		;3c55
	ret			;3c58
l3c59h:
	ld hl,(02a2ah)		;3c59
	jr nz,l3cd0h		;3c5c
	ld h,l			;3c5e
	ld (hl),h			;3c5f
	ld (hl),d			;3c60
	ld a,c			;3c61
	jr nz,$+101		;3c62
	ld l,a			;3c64
	ld (hl),l			;3c65
	ld l,(hl)			;3c66
	ld (hl),h			;3c67
	jr nz,$+103		;3c68
	ld a,b			;3c6a
	ld h,e			;3c6b
	ld h,l			;3c6c
	ld h,l			;3c6d
	ld h,h			;3c6e
	ld h,l			;3c6f
	ld h,h			;3c70
	adc a,l			;3c71
sub_3c72h:
	ld de,0ca0dh		;3c72
	call sub_3f06h		;3c75
	call sub_4810h		;3c78
	call sub_3d2dh		;3c7b
	ld (iy+007h),004h		;3c7e
	ld a,(0c042h)		;3c82
	bit 7,a		;3c85
	jr z,sub_3cb4h		;3c87
	ld a,(0bf19h)		;3c89
	bit 7,a		;3c8c
	jr nz,sub_3cb4h		;3c8e
	ld a,(iy-03ch)		;3c90
	cp (iy+009h)		;3c93
	jr nz,sub_3cb4h		;3c96
	ld hl,l0000h		;3c98
	ld (0cb84h),hl		;3c9b
	ld hl,0bf17h		;3c9e
	set 7,(hl)		;3ca1
	call sub_3cfah		;3ca3
	ld hl,0bf17h		;3ca6
	set 6,(hl)		;3ca9
	push hl			;3cab
	call l1122h		;3cac
	pop hl			;3caf
	res 7,(hl)		;3cb0
	res 6,(hl)		;3cb2
sub_3cb4h:
	call sub_3d6bh		;3cb4
	ld a,(0bf19h)		;3cb7
	bit 7,a		;3cba
	jr nz,l3ccah		;3cbc
	ld a,(0c046h)		;3cbe
	and 008h		;3cc1
	ld hl,0c273h		;3cc3
	jr nz,l3ccah		;3cc6
	res 7,(hl)		;3cc8
l3ccah:
	call sub_4f08h		;3cca
	ld hl,0c271h		;3ccd
l3cd0h:
	jr z,l3cdah		;3cd0
	set 0,(iy+02eh)		;3cd2
	bit 5,(hl)		;3cd6
	jr nz,l3cdeh		;3cd8
l3cdah:
	res 0,(iy+02eh)		;3cda
l3cdeh:
	call sub_3d01h		;3cde
	call sub_3d7fh		;3ce1
	call nz,sub_445dh		;3ce4
	call sub_3d16h		;3ce7
	ld a,(0bfeah)		;3cea
	ld e,027h		;3ced
	call 00561h		;3cef
	ld (hl),a			;3cf2
	call l0b23h		;3cf3
	call sub_4c96h		;3cf6
	ret			;3cf9
sub_3cfah:
	ld hl,0c0cbh		;3cfa
	call sub_43d1h		;3cfd
	ret			;3d00
sub_3d01h:
	ld a,(0c046h)		;3d01
	and 008h		;3d04
	ret nz			;3d06
sub_3d07h:
	ld a,(0c042h)		;3d07
	and 040h		;3d0a
	ld b,a			;3d0c
	ld hl,0c273h		;3d0d
	ld a,0bfh		;3d10
	and (hl)			;3d12
	or b			;3d13
	ld (hl),a			;3d14
	ret			;3d15
sub_3d16h:
	ld a,(0c01bh)		;3d16
	ld c,a			;3d19
	ld a,(iy+01ch)		;3d1a
	ld b,a			;3d1d
	inc b			;3d1e
	xor a			;3d1f
l3d20h:
	add a,c			;3d20
	djnz l3d20h		;3d21
	ld e,01fh		;3d23
	call 00561h		;3d25
	ld (hl),a			;3d28
	call l0b23h		;3d29
	ret			;3d2c
sub_3d2dh:
	ld hl,0ca0dh		;3d2d
	ld de,0ff81h		;3d30
	push iy		;3d33
	pop hl			;3d35
	add hl,de			;3d36
	ex de,hl			;3d37
	ld hl,0ca0dh		;3d38
	ld bc,l0006h+1		;3d3b
	ldir		;3d3e
	push iy		;3d40
	pop hl			;3d42
	ld de,0ff88h		;3d43
	add hl,de			;3d46
	ex de,hl			;3d47
	ld hl,0ca1ah		;3d48
	ld (iy+01ch),000h		;3d4b
l3d4fh:
	bit 0,(hl)		;3d4f
	jr nz,l3d5fh		;3d51
	inc (iy+01ch)		;3d53
	inc hl			;3d56
	ld bc,l0006h+1		;3d57
	ldir		;3d5a
	dec hl			;3d5c
	jr l3d4fh		;3d5d
l3d5fh:
	xor a			;3d5f
	ld (de),a			;3d60
	ret			;3d61
sub_3d62h:
	ld a,(iy-03dh)		;3d62
	rrca			;3d65
	rrca			;3d66
	rrca			;3d67
	and 0e0h		;3d68
	ret			;3d6a
sub_3d6bh:
	ld a,(iy-03fh)		;3d6b
	ld (iy-03eh),a		;3d6e
	cp (iy+009h)		;3d71
	call z,04c82h		;3d74
	xor a			;3d77
	ld (iy-03dh),a		;3d78
	ld (iy-03bh),a		;3d7b
	ret			;3d7e
sub_3d7fh:
	ld a,(0c273h)		;3d7f
	and 0c0h		;3d82
	cp 040h		;3d84
	ret			;3d86
sub_3d87h:
	ld a,(0cbc6h)		;3d87
	cp (iy+02dh)		;3d8a
	jr z,l3dd5h		;3d8d
	ld hl,0c274h		;3d8f
	set 0,(hl)		;3d92
	push hl			;3d94
	ld de,0bf34h		;3d95
	call sub_0d39h		;3d98
	push hl			;3d9b
	ld a,(0c023h)		;3d9c
	cp 01bh		;3d9f
	jr nz,l3dach		;3da1
	ld hl,0c043h		;3da3
	bit 7,(hl)		;3da6
	jr z,l3dach		;3da8
	ld a,024h		;3daa
l3dach:
	pop hl			;3dac
	call l0c7fh		;3dad
	jr c,l3dd2h		;3db0
	ld a,(iy+02dh)		;3db2
	add a,041h		;3db5
	call l0c7fh		;3db7
	jr nc,l3dc2h		;3dba
	call sub_0d56h		;3dbc
	scf			;3dbf
	jr l3dd2h		;3dc0
l3dc2h:
	ld a,(iy+02dh)		;3dc2
	ld (0cbc6h),a		;3dc5
	ld a,002h		;3dc8
	ld hl,0bf15h		;3dca
	add a,(hl)			;3dcd
	ld (hl),a			;3dce
	call sub_3e51h		;3dcf
l3dd2h:
	pop hl			;3dd2
	res 0,(hl)		;3dd3
l3dd5h:
	ret			;3dd5
sub_3dd6h:
	cp 00bh		;3dd6
	jr c,l3ddch		;3dd8
	scf			;3dda
	ret			;3ddb
l3ddch:
	ld iy,0c2f7h		;3ddc
	push de			;3de0
	ld de,l00aeh		;3de1
l3de4h:
	and a			;3de4
	jr z,l3dech		;3de5
	add iy,de		;3de7
	dec a			;3de9
	jr l3de4h		;3dea
l3dech:
	pop de			;3dec
	ret			;3ded
sub_3deeh:
	push bc			;3dee
	push de			;3def
	push hl			;3df0
	push iy		;3df1
	xor a			;3df3
	ld b,a			;3df4
l3df5h:
	push af			;3df5
	push bc			;3df6
	call sub_3dd6h		;3df7
	pop bc			;3dfa
	ld a,(iy+007h)		;3dfb
	and a			;3dfe
	jr z,l3e03h		;3dff
	jr l3e0dh		;3e01
l3e03h:
	pop af			;3e03
	inc a			;3e04
	cp 00bh		;3e05
	jr c,l3df5h		;3e07
	or 0ffh		;3e09
	jr l3e0fh		;3e0b
l3e0dh:
	xor a			;3e0d
	pop bc			;3e0e
l3e0fh:
	pop iy		;3e0f
l3e11h:
	pop hl			;3e11
	pop de			;3e12
	pop bc			;3e13
	ret			;3e14
sub_3e15h:
	push bc			;3e15
	push de			;3e16
	push hl			;3e17
	push iy		;3e18
	xor a			;3e1a
	ld b,a			;3e1b
l3e1ch:
	push af			;3e1c
	push bc			;3e1d
	call sub_3dd6h		;3e1e
	pop bc			;3e21
	ld a,(iy+007h)		;3e22
	and a			;3e25
	jr z,l3e2ah		;3e26
	jr l3e3ch		;3e28
l3e2ah:
	ld a,(0cbc7h)		;3e2a
	ld l,00ah		;3e2d
	cp l			;3e2f
	jr nz,l3e33h		;3e30
	inc l			;3e32
l3e33h:
	pop af			;3e33
	inc a			;3e34
	cp l			;3e35
	jr c,l3e1ch		;3e36
	or 0ffh		;3e38
	jr l3e3eh		;3e3a
l3e3ch:
	xor a			;3e3c
	pop bc			;3e3d
l3e3eh:
	pop iy		;3e3e
	pop hl			;3e40
	pop de			;3e41
	pop bc			;3e42
	ret			;3e43
sub_3e44h:
	ld a,(iy+007h)		;3e44
	and a			;3e47
	ret nz			;3e48
	bit 2,(iy+02eh)		;3e49
	ret z			;3e4d
	jp sub_3bach		;3e4e
sub_3e51h:
	ld a,(0c045h)		;3e51
	and 080h		;3e54
	ret z			;3e56
	call sub_3e6ah		;3e57
	ld a,(iy+007h)		;3e5a
	and a			;3e5d
	jr z,sub_3e6ah		;3e5e
	ld de,0ff87h		;3e60
	push iy		;3e63
	pop hl			;3e65
	add hl,de			;3e66
	call sub_4281h		;3e67
sub_3e6ah:
	ld a,03ah		;3e6a
	call l42feh		;3e6c
	ret			;3e6f
	dec hl			;3e70
	ld b,006h		;3e71
l3e73h:
	ld a,(hl)			;3e73
	cp 040h		;3e74
	jr z,l3e80h		;3e76
	cp 060h		;3e78
	jr c,l3e85h		;3e7a
	cp 074h		;3e7c
	jr nc,l3e85h		;3e7e
l3e80h:
	inc hl			;3e80
	djnz l3e73h		;3e81
	xor a			;3e83
	ret			;3e84
l3e85h:
	or 0ffh		;3e85
	ret			;3e87
sub_3e88h:
	ld de,0ca0dh		;3e88
	ld bc,(0cb84h)		;3e8b
	ld hl,0fff3h		;3e8f
	and a			;3e92
	adc hl,bc		;3e93
	jp p,l3e9ch		;3e95
	xor a			;3e98
	jp l3f05h		;3e99
l3e9ch:
	ld (0cb9ch),hl		;3e9c
	ld hl,l000dh		;3e9f
	add hl,de			;3ea2
	bit 0,(hl)		;3ea3
	jp nz,l3effh		;3ea5
	ld bc,l0006h+1		;3ea8
l3eabh:
	add hl,bc			;3eab
	bit 7,(hl)		;3eac
	jr nz,l3eeah		;3eae
	push de			;3eb0
	ld de,0c009h		;3eb1
	call sub_3fd5h		;3eb4
	jr z,l3ec9h		;3eb7
	push hl			;3eb9
	ld hl,l3683h		;3eba
	ld de,0c011h		;3ebd
	call sub_3fd5h		;3ec0
	pop hl			;3ec3
	jr z,l3f03h		;3ec4
	call sub_3fd5h		;3ec6
l3ec9h:
	pop de			;3ec9
	jr nz,l3f04h		;3eca
	set 7,(hl)		;3ecc
	ld a,(0c043h)		;3ece
	bit 5,a		;3ed1
	jr z,l3f04h		;3ed3
	call sub_4810h		;3ed5
	ld hl,0c272h		;3ed8
	ld a,001h		;3edb
	or (hl)			;3edd
	ld (hl),a			;3ede
	push hl			;3edf
	ld hl,(0cefbh)		;3ee0
	inc hl			;3ee3
	ld (0cefbh),hl		;3ee4
	pop hl			;3ee7
	jr l3f04h		;3ee8
l3eeah:
	bit 0,(hl)		;3eea
	jr nz,l3effh		;3eec
	ex de,hl			;3eee
	ld hl,(0cb9ch)		;3eef
	and a			;3ef2
	sbc hl,bc		;3ef3
	jp m,l3f04h		;3ef5
	ld (0cb9ch),hl		;3ef8
	ex de,hl			;3efb
	jp l3eabh		;3efc
l3effh:
	or 0ffh		;3eff
	jr l3f05h		;3f01
l3f03h:
	pop de			;3f03
l3f04h:
	xor a			;3f04
l3f05h:
	ret			;3f05
sub_3f06h:
	push bc			;3f06
	push de			;3f07
	push hl			;3f08
	ld hl,l0006h		;3f09
	add hl,de			;3f0c
	ld a,(hl)			;3f0d
	ld de,l0006h+1		;3f0e
	add hl,de			;3f11
	xor (hl)			;3f12
	and 080h		;3f13
	ld hl,0c271h		;3f15
	set 5,(hl)		;3f18
	jr nz,l3f1eh		;3f1a
	res 5,(hl)		;3f1c
l3f1eh:
	pop hl			;3f1e
	pop de			;3f1f
	push de			;3f20
	push hl			;3f21
	and a			;3f22
	sbc hl,de		;3f23
	ld a,l			;3f25
	inc a			;3f26
	ld b,00ah		;3f27
	ld c,007h		;3f29
	ld h,000h		;3f2b
l3f2dh:
	inc h			;3f2d
	sub c			;3f2e
	jr z,l3f37h		;3f2f
	djnz l3f2dh		;3f31
	pop hl			;3f33
	pop de			;3f34
	pop bc			;3f35
	ret			;3f36
l3f37h:
	ld a,h			;3f37
	sub 002h		;3f38
	ld (0cba4h),a		;3f3a
	srl a		;3f3d
l3f3fh:
	jr z,l3f6ch		;3f3f
	ld c,a			;3f41
	pop hl			;3f42
	pop de			;3f43
	push de			;3f44
	push hl			;3f45
	ld hl,l000eh		;3f46
	add hl,de			;3f49
	ex de,hl			;3f4a
	pop hl			;3f4b
	push hl			;3f4c
	push de			;3f4d
	ld de,0fffah		;3f4e
	add hl,de			;3f51
	pop de			;3f52
l3f53h:
	ld b,007h		;3f53
l3f55h:
	ld a,(de)			;3f55
	and 0feh		;3f56
	ex af,af'			;3f58
	ld a,(hl)			;3f59
	and 0feh		;3f5a
	ld (de),a			;3f5c
	ex af,af'			;3f5d
	ld (hl),a			;3f5e
	inc hl			;3f5f
	inc de			;3f60
	djnz l3f55h		;3f61
	push de			;3f63
	ld de,0fff2h		;3f64
	add hl,de			;3f67
	pop de			;3f68
	dec c			;3f69
	jr nz,l3f53h		;3f6a
l3f6ch:
	pop hl			;3f6c
	set 0,(hl)		;3f6d
	push hl			;3f6f
	ld a,(0cba4h)		;3f70
	and a			;3f73
	jr z,l3f7fh		;3f74
	ld b,a			;3f76
	ld de,0fff9h		;3f77
l3f7ah:
	res 7,(hl)		;3f7a
	add hl,de			;3f7c
	djnz l3f7ah		;3f7d
l3f7fh:
	pop ix		;3f7f
	pop hl			;3f81
	push hl			;3f82
	ld de,l0006h+1		;3f83
	add hl,de			;3f86
	pop de			;3f87
	push de			;3f88
	push ix		;3f89
	ld bc,l0006h+1		;3f8b
	push bc			;3f8e
	ldir		;3f8f
	dec de			;3f91
	ld a,(de)			;3f92
	and 0feh		;3f93
	ld (de),a			;3f95
	inc de			;3f96
	ld hl,0c003h		;3f97
	ld a,(iy+02dh)		;3f9a
	cp 00ah		;3f9d
	jr nz,l3fa4h		;3f9f
	ld hl,0c013h		;3fa1
l3fa4h:
	pop bc			;3fa4
	ldir		;3fa5
	dec de			;3fa7
	ld hl,0fff9h		;3fa8
	add hl,de			;3fab
	ld a,(hl)			;3fac
	and 080h		;3fad
	ex de,hl			;3faf
	ld b,(hl)			;3fb0
	or (hl)			;3fb1
	ld (hl),a			;3fb2
	ld a,(0c271h)		;3fb3
	bit 5,a		;3fb6
	jr z,l3fc5h		;3fb8
	call sub_4f08h		;3fba
	jr z,l3fc5h		;3fbd
	ld a,080h		;3fbf
	xor (hl)			;3fc1
	ld (hl),a			;3fc2
	jr l3fcbh		;3fc3
l3fc5h:
	res 7,(hl)		;3fc5
	ld a,(de)			;3fc7
	and 07fh		;3fc8
	ld (de),a			;3fca
l3fcbh:
	pop hl			;3fcb
	ld a,(hl)			;3fcc
	or 061h		;3fcd
	ld (hl),a			;3fcf
	pop de			;3fd0
	pop bc			;3fd1
	or 0ffh		;3fd2
	ret			;3fd4
sub_3fd5h:
	push bc			;3fd5
	push de			;3fd6
	push hl			;3fd7
	ld bc,l0006h		;3fd8
	and a			;3fdb
	sbc hl,bc		;3fdc
	ex de,hl			;3fde
	sbc hl,bc		;3fdf
	ex de,hl			;3fe1
	ld b,c			;3fe2
l3fe3h:
	ld a,(de)			;3fe3
	cp (hl)			;3fe4
	jr nz,l3ff8h		;3fe5
	inc de			;3fe7
	inc hl			;3fe8
	djnz l3fe3h		;3fe9
	ld a,(hl)			;3feb
	and 01eh		;3fec
	ld b,a			;3fee
	ld a,(de)			;3fef
	and 01eh		;3ff0
	cp b			;3ff2
	jr nz,l3ff8h		;3ff3
	xor a			;3ff5
	jr l3ffbh		;3ff6
l3ff8h:
	ld a,001h		;3ff8
	and a			;3ffa
l3ffbh:
	pop hl			;3ffb
	pop de			;3ffc
	pop bc			;3ffd
	ret			;3ffe
sub_3fffh:
	call sub_44fdh		;3fff
	ld de,l2ae2h		;4002
	ld bc,l3a96h		;4005
	ld hl,l1538h		;4008
	add hl,de			;400b
	push hl			;400c
	ld hl,l0a9ch		;400d
	add hl,hl			;4010
	add hl,bc			;4011
	ld b,00eh		;4012
	ld de,0cb8bh		;4014
	jp 047f4h		;4017
	ld hl,0ca1ah		;401a
	bit 0,(hl)		;401d
	jr z,l403bh		;401f
	ld de,0cb98h		;4021
	call sub_3fd5h		;4024
	jr nz,l403bh		;4027
	ld hl,0ca13h		;4029
	ld de,0cb91h		;402c
	call sub_3fd5h		;402f
	jr nz,l403bh		;4032
	ld hl,0c01eh		;4034
	dec (hl)			;4037
	call l0b23h		;4038
l403bh:
	ld hl,0cb8bh		;403b
	ld de,0cb8ch		;403e
	ld bc,l000dh		;4041
	ld (hl),000h		;4044
	ldir		;4046
	ld hl,0ca0dh		;4048
	ld bc,(0cb84h)		;404b
l404fh:
	bit 0,(hl)		;404f
	jr nz,l405eh		;4051
	inc hl			;4053
	dec bc			;4054
	ld a,b			;4055
	or c			;4056
	jr nz,l404fh		;4057
l4059h:
	or 0ffh		;4059
	jp l423bh		;405b
l405eh:
	ld (0cb86h),hl		;405e
	push hl			;4061
	call sub_3d7fh		;4062
	pop hl			;4065
	jp z,l423ah		;4066
	push hl			;4069
	ld de,0ca1ah		;406a
	call sub_4268h		;406d
	pop hl			;4070
	jr nc,l407dh		;4071
	ld a,(0c044h)		;4073
	bit 4,a		;4076
	jr nz,l4059h		;4078
	jp l423ah		;407a
l407dh:
	push de			;407d
	push hl			;407e
	push iy		;407f
	call sub_36a9h		;4081
	jr nz,l4091h		;4084
	ld hl,0c009h		;4086
	ld de,0ca13h		;4089
	call sub_3fd5h		;408c
	jr z,l40a1h		;408f
l4091h:
	ld a,00ah		;4091
	call sub_3686h		;4093
	jr nz,l40a1h		;4096
	ld hl,0c019h		;4098
	ld de,0ca13h		;409b
	call sub_3fd5h		;409e
l40a1h:
	pop iy		;40a1
	pop hl			;40a3
	pop de			;40a4
	jp z,l423ah		;40a5
	inc hl			;40a8
	ld a,(hl)			;40a9
	dec hl			;40aa
	and 0efh		;40ab
	cp 003h		;40ad
	jr z,l40c4h		;40af
	ld b,a			;40b1
	ld a,(0c044h)		;40b2
	bit 2,a		;40b5
	jr z,l40bdh		;40b7
	bit 0,b		;40b9
	jr z,l40c4h		;40bb
l40bdh:
	bit 3,a		;40bd
	jp z,l423ah		;40bf
	ld a,b			;40c2
	ld a,b			;40c3
l40c4h:
	ld a,(0c271h)		;40c4
	bit 0,a		;40c7
	ld b,a			;40c9
	jp z,l423ah		;40ca
	call sub_3e15h		;40cd
	jr nz,l40dah		;40d0
	ld a,(0c271h)		;40d2
	bit 2,b		;40d5
	jp z,l423ah		;40d7
l40dah:
	ld hl,0ca1ah		;40da
	call sub_4281h		;40dd
	ld a,03eh		;40e0
	call l42feh		;40e2
	ld hl,0ca13h		;40e5
	call sub_4281h		;40e8
	ld hl,(0cb84h)		;40eb
	ld bc,0fff2h		;40ee
	add hl,bc			;40f1
	push hl			;40f2
	ld bc,l0006h+1		;40f3
	ld hl,0ca1ah		;40f6
	bit 0,(hl)		;40f9
	jr nz,l413eh		;40fb
l40fdh:
	add hl,bc			;40fd
	ex (sp),hl			;40fe
	and a			;40ff
	sbc hl,bc		;4100
	ex (sp),hl			;4102
	jp p,l410ah		;4103
	pop hl			;4106
	jp l4059h		;4107
l410ah:
	ld a,(0c271h)		;410a
	and 002h		;410d
	jr z,l413ah		;410f
	ld a,02ch		;4111
	call l42feh		;4113
	call sub_4281h		;4116
	bit 7,(hl)		;4119
	jr z,l413ah		;411b
	push de			;411d
	push hl			;411e
	ld de,l0006h+1		;411f
	add hl,de			;4122
	push hl			;4123
	ld de,(0cb86h)		;4124
	inc de			;4128
	and a			;4129
	sbc hl,de		;412a
	pop hl			;412c
	jr nc,l4133h		;412d
	bit 7,(hl)		;412f
	jr nz,l4138h		;4131
l4133h:
	ld a,02ah		;4133
	call l42feh		;4135
l4138h:
	pop hl			;4138
	pop de			;4139
l413ah:
	bit 0,(hl)		;413a
	jr z,l40fdh		;413c
l413eh:
	push hl			;413e
	ld a,(0c045h)		;413f
	bit 0,a		;4142
	call nz,sub_0a4dh		;4144
	pop hl			;4147
	inc hl			;4148
	ld a,(hl)			;4149
	pop bc			;414a
	push bc			;414b
	push hl			;414c
sub_414dh:
	ld a,(0c044h)		;414d
	bit 3,a		;4150
sub_4152h:
	jp z,l41f5h		;4152
	ld a,(hl)			;4155
	ld c,a			;4156
	ld a,020h		;4157
	call l42feh		;4159
	ld a,03ch		;415c
	call l42feh		;415e
	ld a,c			;4161
	and 003h		;4162
	cp 001h		;4164
	jr z,l41cbh		;4166
	cp 003h		;4168
	jr z,l418fh		;416a
	ld a,049h		;416c
	call l42feh		;416e
	call sub_47aeh		;4171
	ld a,020h		;4174
	call l42feh		;4176
	ld a,053h		;4179
	call l42feh		;417b
	ld a,c			;417e
	rrca			;417f
	and 007h		;4180
	push bc			;4182
	call sub_42dfh		;4183
	pop bc			;4186
	push bc			;4187
	ld a,c			;4188
	call sub_479ah		;4189
	pop bc			;418c
	jr l41f0h		;418d
l418fh:
	ld a,c			;418f
	and 0efh		;4190
	ld hl,l47dah		;4192
	cp 02fh		;4195
	jr z,l41bfh		;4197
	ld hl,l47dah+1		;4199
	cp 063h		;419c
	jr z,l41bfh		;419e
	ld hl,l47ddh		;41a0
	cp 043h		;41a3
	jr z,l41bfh		;41a5
	ld hl,l47ddh+1		;41a7
	cp 00fh		;41aa
	jr z,l41bfh		;41ac
	cp 087h		;41ae
	ld hl,047eah		;41b0
	jr z,l41bfh		;41b3
	ld hl,l47e0h		;41b5
	cp 003h		;41b8
	jr z,l41bfh		;41ba
	ld hl,047eeh		;41bc
l41bfh:
	push bc			;41bf
	call l43c0h		;41c0
	pop bc			;41c3
	push bc			;41c4
	call sub_47aeh		;41c5
	pop bc			;41c8
	jr l41f0h		;41c9
l41cbh:
	ld a,c			;41cb
	and 00fh		;41cc
	ld hl,l47e2h		;41ce
	cp 001h		;41d1
	jr z,l41dfh		;41d3
	ld hl,047e4h		;41d5
	cp 005h		;41d8
	jr z,l41dfh		;41da
	ld hl,047e7h		;41dc
l41dfh:
	push bc			;41df
	call l43c0h		;41e0
	pop bc			;41e3
	ld a,c			;41e4
	push bc			;41e5
	call sub_47aeh		;41e6
	pop bc			;41e9
	ld a,c			;41ea
	push bc			;41eb
	call sub_479ah		;41ec
	pop bc			;41ef
l41f0h:
	ld a,03eh		;41f0
	call l42feh		;41f2
l41f5h:
	pop hl			;41f5
	pop bc			;41f6
	ld a,(hl)			;41f7
	and 0efh		;41f8
	cp 003h		;41fa
	jr z,l4201h		;41fc
	rrca			;41fe
	jr c,l421bh		;41ff
l4201h:
	ld a,03ah		;4201
	call l42feh		;4203
	push bc			;4206
	push hl			;4207
	ld a,(0c044h)		;4208
	bit 0,a		;420b
	call nz,sub_42fch		;420d
	pop hl			;4210
	pop bc			;4211
	inc hl			;4212
	inc hl			;4213
	dec bc			;4214
	dec bc			;4215
l4216h:
	dec bc			;4216
	bit 7,b		;4217
	jr z,l4220h		;4219
l421bh:
	call sub_42fch		;421b
	jr l423ah		;421e
l4220h:
	ld a,(hl)			;4220
	inc hl			;4221
	push hl			;4222
	push bc			;4223
	ld hl,0c03ch		;4224
	ld b,a			;4227
l4228h:
	ld a,(hl)			;4228
	inc hl			;4229
	and a			;422a
	jr z,l4232h		;422b
	cp b			;422d
	jr z,l4236h		;422e
	jr l4228h		;4230
l4232h:
	ld a,b			;4232
	call l42feh		;4233
l4236h:
	pop bc			;4236
	pop hl			;4237
	jr l4216h		;4238
l423ah:
	xor a			;423a
l423bh:
	ret			;423b
	and 0efh		;423c
	ld e,000h		;423e
	cp 02fh		;4240
	ld d,043h		;4242
	ret z			;4244
	cp 043h		;4245
	ld d,044h		;4247
	ret z			;4249
	cp 063h		;424a
	ld de,l5541h		;424c
	ret z			;424f
	cp 00fh		;4250
	ld de,0444dh		;4252
	ret z			;4255
	ld de,l0000h		;4256
	ret			;4259
sub_425ah:
	ld b,a			;425a
	ld hl,0bf15h		;425b
l425eh:
	ld a,(hl)			;425e
	cp b			;425f
	ret nc			;4260
	ld a,020h		;4261
	call l42feh		;4263
	jr l425eh		;4266
sub_4268h:
	ld hl,0c144h		;4268
	call sub_45b9h		;426b
	ld a,(0c043h)		;426e
	jr z,l4279h		;4271
	bit 0,a		;4273
	jr nz,l427fh		;4275
	jr l427dh		;4277
l4279h:
	bit 0,a		;4279
	jr z,l427fh		;427b
l427dh:
	and a			;427d
	ret			;427e
l427fh:
	scf			;427f
	ret			;4280
sub_4281h:
	push bc			;4281
	push de			;4282
	push hl			;4283
	ld de,0fffah		;4284
	add hl,de			;4287
	ld b,006h		;4288
l428ah:
	ld a,(hl)			;428a
	inc hl			;428b
	srl a		;428c
	cp 020h		;428e
	jr z,l4295h		;4290
	call l42feh		;4292
l4295h:
	djnz l428ah		;4295
	ld a,(hl)			;4297
	rra			;4298
	and 00fh		;4299
	jr z,l42a7h		;429b
	ld b,a			;429d
	ld a,02dh		;429e
	call l42feh		;42a0
	ld a,b			;42a3
	call sub_42abh		;42a4
l42a7h:
	pop hl			;42a7
	pop de			;42a8
	pop bc			;42a9
	ret			;42aa
sub_42abh:
	ld l,a			;42ab
	ld h,000h		;42ac
sub_42aeh:
	push bc			;42ae
	push de			;42af
	push hl			;42b0
	ld bc,0fff6h		;42b1
	ld de,0ffffh		;42b4
l42b7h:
	add hl,bc			;42b7
	inc de			;42b8
	jr c,l42b7h		;42b9
	ld bc,0000ah		;42bb
	add hl,bc			;42be
	ex de,hl			;42bf
	ld a,h			;42c0
	or l			;42c1
	call nz,sub_42aeh		;42c2
	ld a,e			;42c5
	add a,030h		;42c6
	call l42feh		;42c8
	pop hl			;42cb
	pop de			;42cc
	pop bc			;42cd
	ret			;42ce
sub_42cfh:
	push af			;42cf
	ld a,024h		;42d0
	call l42feh		;42d2
	pop af			;42d5
sub_42d6h:
	push af			;42d6
	rra			;42d7
	rra			;42d8
	rra			;42d9
	rra			;42da
	call sub_42dfh		;42db
	pop af			;42de
sub_42dfh:
	and 00fh		;42df
	cp 00ah		;42e1
	jr nc,l42e9h		;42e3
	add a,030h		;42e5
	jr l42ebh		;42e7
l42e9h:
	add a,037h		;42e9
l42ebh:
	jr l42feh		;42eb
sub_42edh:
	ld a,(hl)			;42ed
	inc hl			;42ee
	push bc			;42ef
	push hl			;42f0
	call sub_4324h		;42f1
	pop hl			;42f4
	pop bc			;42f5
	djnz sub_42edh		;42f6
	ret			;42f8
sub_42f9h:
	jp l42feh		;42f9
sub_42fch:
	ld a,00dh		;42fc
l42feh:
	push de			;42fe
	ld d,a			;42ff
	push de			;4300
	ld a,(0bf17h)		;4301
	and 080h		;4304
l4306h:
	ld a,d			;4306
	jr z,l431ah		;4307
	push hl			;4309
	ld de,0ca0dh		;430a
	ld hl,(0cb84h)		;430d
	inc hl			;4310
	ld (0cb84h),hl		;4311
	dec hl			;4314
	add hl,de			;4315
	ld (hl),a			;4316
	pop hl			;4317
	jr l4320h		;4318
l431ah:
	ld de,0bf34h		;431a
	call sub_4324h		;431d
l4320h:
	pop de			;4320
	ld a,d			;4321
	pop de			;4322
	ret			;4323
sub_4324h:
	push bc			;4324
	push hl			;4325
	push af			;4326
	push de			;4327
	ld hl,0bf34h		;4328
	and a			;432b
	sbc hl,de		;432c
	call z,sub_3d87h		;432e
	ld a,04eh		;4331
	out (0f1h),a		;4333
	pop de			;4335
	pop af			;4336
	ld c,a			;4337
	ld a,(0c045h)		;4338
	bit 6,a		;433b
	jr z,l4351h		;433d
	ld a,(0c023h)		;433f
	and a			;4342
	jr z,l4351h		;4343
	cp c			;4345
	jr nz,l4351h		;4346
	push bc			;4348
	ld a,c			;4349
	call l0c7fh		;434a
	pop bc			;434d
	jp c,l43b6h		;434e
l4351h:
	ld a,(0bf17h)		;4351
	and 020h		;4354
	jr nz,l4361h		;4356
	ld a,(0c273h)		;4358
	and 0c0h		;435b
	cp 040h		;435d
	jr nz,l4368h		;435f
l4361h:
	ld a,c			;4361
	call l0c7fh		;4362
	jp l43b6h		;4365
l4368h:
	ld a,(0c042h)		;4368
	bit 3,a		;436b
	ld a,c			;436d
	jr nz,l4374h		;436e
	call sub_250bh		;4370
	ld c,a			;4373
l4374h:
	ld a,c			;4374
	cp 01bh		;4375
	jr nz,l4382h		;4377
	ld hl,0c043h		;4379
	bit 7,(hl)		;437c
	jr z,l4382h		;437e
	ld a,024h		;4380
l4382h:
	call l0c7fh		;4382
	jr c,l43b6h		;4385
	cp 00dh		;4387
	jr nz,l43a0h		;4389
	ld a,001h		;438b
	ld (0bf15h),a		;438d
	ld a,(0c274h)		;4390
	bit 1,a		;4393
	ld a,00dh		;4395
	jr z,l43b6h		;4397
	ld a,00ah		;4399
	call l0c7fh		;439b
	jr c,l43b6h		;439e
l43a0h:
	cp 00ah		;43a0
	jr z,l43b6h		;43a2
	ld hl,0bf15h		;43a4
	inc (hl)			;43a7
	ld a,(0c031h)		;43a8
	and a			;43ab
	jr z,l43b6h		;43ac
	cp (hl)			;43ae
	jr nc,l43b6h		;43af
	ld a,00dh		;43b1
	call sub_4324h		;43b3
l43b6h:
	pop hl			;43b6
	pop bc			;43b7
	ret			;43b8
l43b9h:
	ld a,(0c030h)		;43b9
	ld (0cb8ah),a		;43bc
	ret			;43bf
l43c0h:
	ld a,(hl)			;43c0
	inc hl			;43c1
	push af			;43c2
	and 07fh		;43c3
	push hl			;43c5
	call l42feh		;43c6
	pop hl			;43c9
	pop bc			;43ca
	ret c			;43cb
	bit 7,b		;43cc
	jr z,l43c0h		;43ce
	ret			;43d0
sub_43d1h:
	ld a,(hl)			;43d1
	inc hl			;43d2
	push af			;43d3
	push hl			;43d4
	call l42feh		;43d5
	pop hl			;43d8
	pop bc			;43d9
	ret c			;43da
	ld a,b			;43db
	or a			;43dc
	jr nz,sub_43d1h		;43dd
	ld a,00dh		;43df
	jp l42feh		;43e1
sub_43e4h:
	ld a,(0c273h)		;43e4
	and 0c0h		;43e7
	cp 040h		;43e9
	ret z			;43eb
	ld hl,l57b4h		;43ec
	call l43c0h		;43ef
	call sub_4e23h		;43f2
	ld b,003h		;43f5
l43f7h:
	push bc			;43f7
	push hl			;43f8
	ld a,(hl)			;43f9
	call sub_42d6h		;43fa
l43fdh:
	pop hl			;43fd
	pop bc			;43fe
	inc hl			;43ff
	djnz l43f7h		;4400
	jp sub_42fch		;4402
l4405h:
	ld a,(0c273h)		;4405
	and 0c0h		;4408
	cp 040h		;440a
	ret z			;440c
	call sub_44bfh		;440d
	ld hl,l57ddh		;4410
	call l43c0h		;4413
	ld hl,0ca13h		;4416
	call sub_4281h		;4419
	ld de,l0006h		;441c
	ld hl,0ca1ah		;441f
	bit 0,(hl)		;4422
	jp nz,sub_42fch		;4424
	inc hl			;4427
	add hl,de			;4428
	call sub_2225h		;4429
	jp sub_42fch		;442c
sub_442fh:
	call sub_44bfh		;442f
	ld hl,0ca1ah		;4432
	call sub_4281h		;4435
	ld hl,l57f7h		;4438
	jp l43c0h		;443b
sub_443eh:
	call sub_3d7fh		;443e
	ret z			;4441
	ld hl,l598bh		;4442
	jr l444ah		;4445
sub_4447h:
	ld hl,l5807h		;4447
l444ah:
	push hl			;444a
	call sub_44bfh		;444b
	pop hl			;444e
sub_444fh:
	call l43c0h		;444f
	ld a,(0c044h)		;4452
	bit 7,a		;4455
	call nz,sub_0a4dh		;4457
	jp sub_42fch		;445a
sub_445dh:
	ld hl,l44c5h		;445d
	ld a,(0c046h)		;4460
	and 001h		;4463
	jr nz,l4468h		;4465
	inc hl			;4467
l4468h:
	call l43c0h		;4468
	ld hl,l581eh		;446b
	call l43c0h		;446e
	push de			;4471
	push iy		;4472
	pop de			;4474
	ld hl,0ff81h		;4475
	add hl,de			;4478
	pop de			;4479
	call sub_2214h		;447a
	ld a,(0c044h)		;447d
	bit 7,a		;4480
	call nz,sub_0a4dh		;4482
	jp sub_42fch		;4485
l4488h:
	ld e,0c0h		;4488
sub_448ah:
	ld hl,l5fd2h		;448a
	call l43c0h		;448d
	ld hl,l0000h		;4490
	ld bc,l7018h		;4493
	call sub_0b28h		;4496
	call sub_42cfh		;4499
	call sub_42fch		;449c
	ld hl,(l4488h)		;449f
	and 000h		;44a2
	cp (hl)			;44a4
	ret z			;44a5
	ld hl,02956h		;44a6
	ld de,l1de6h		;44a9
	ld b,03fh		;44ac
	and a			;44ae
	sbc hl,de		;44af
	push hl			;44b1
	ld hl,0ca0dh		;44b2
	ex de,hl			;44b5
	pop hl			;44b6
	push de			;44b7
	call 047f4h		;44b8
	pop hl			;44bb
	jp l43c0h		;44bc
sub_44bfh:
	ld hl,l44c6h		;44bf
	jp l43c0h		;44c2
l44c5h:
	rlca			;44c5
l44c6h:
	ld hl,(02a2ah)		;44c6
	and b			;44c9
sub_44cah:
	ld hl,l44d0h		;44ca
	jp l43c0h		;44cd
l44d0h:
	ld e,h			;44d0
	adc a,l			;44d1
sub_44d2h:
	ld de,0bf5ch		;44d2
	ld a,(0c043h)		;44d5
	bit 3,a		;44d8
	jr nz,l44e1h		;44da
	ld a,05ch		;44dc
	jp l0c7fh		;44de
l44e1h:
	ld hl,l44e9h		;44e1
	ld b,003h		;44e4
	jp l0d60h		;44e6
l44e9h:
	ex af,af'			;44e9
	jr nz,l44f4h		;44ea
sub_44ech:
	ld a,(0c273h)		;44ec
	and 0c0h		;44ef
	cp 040h		;44f1
	ret z			;44f3
l44f4h:
	ld hl,l57c8h		;44f4
	call l43c0h		;44f7
	jp l4503h		;44fa
sub_44fdh:
	ld a,(0c271h)		;44fd
	and 008h		;4500
	ret z			;4502
l4503h:
	ld de,(0cb84h)		;4503
	ld hl,l0000h		;4507
	and a			;450a
	sbc hl,de		;450b
	push hl			;450d
	ld hl,0ca0dh		;450e
	ld bc,l0000h		;4511
	push hl			;4514
	jr l452dh		;4515
l4517h:
	ld a,04eh		;4517
	out (0f1h),a		;4519
	ld a,c			;451b
	and 00fh		;451c
	jr nz,l453dh		;451e
	ld (0cb9ch),hl		;4520
	pop hl			;4523
	push bc			;4524
	call sub_456eh		;4525
	pop bc			;4528
	push hl			;4529
	ld hl,(0cb9ch)		;452a
l452dh:
	call sub_42fch		;452d
	ld a,b			;4530
	call sub_42dfh		;4531
	ld a,c			;4534
	call sub_42d6h		;4535
	ld a,03ah		;4538
	call l42feh		;453a
l453dh:
	ld a,c			;453d
	and 003h		;453e
	jr nz,l4545h		;4540
	call sub_455ch		;4542
l4545h:
	ld a,(hl)			;4545
	call sub_42d6h		;4546
	inc hl			;4549
	inc bc			;454a
	pop de			;454b
sub_454ch:
	ex (sp),hl			;454c
	push hl			;454d
	add hl,bc			;454e
	pop hl			;454f
	ex (sp),hl			;4550
	push de			;4551
l4552h:
	jr nc,l4517h		;4552
	pop hl			;4554
	pop de			;4555
	call sub_456eh		;4556
	jp sub_42fch		;4559
sub_455ch:
	ld a,020h		;455c
	jp l42feh		;455e
sub_4561h:
	cp 020h		;4561
	jr c,l4569h		;4563
	cp 07fh		;4565
	jr c,l456bh		;4567
l4569h:
	ld a,02eh		;4569
l456bh:
	jp l42feh		;456b
sub_456eh:
	pop de			;456e
	ld a,(0bf15h)		;456f
	neg		;4572
	add a,02bh		;4574
	jr z,l4585h		;4576
	jp p,l457dh		;4578
	jr l4585h		;457b
l457dh:
	push bc			;457d
	ld b,a			;457e
l457fh:
	call sub_455ch		;457f
	djnz l457fh		;4582
	pop bc			;4584
l4585h:
	push hl			;4585
	ld a,c			;4586
	and 00fh		;4587
	jr nz,l458dh		;4589
	ld a,010h		;458b
l458dh:
	ld b,a			;458d
	push bc			;458e
l458fh:
	ld a,(hl)			;458f
	srl a		;4590
	call sub_4561h		;4592
	inc hl			;4595
	djnz l458fh		;4596
	call sub_455ch		;4598
	pop bc			;459b
	push bc			;459c
	ld a,b			;459d
	neg		;459e
	add a,011h		;45a0
	ld b,a			;45a2
l45a3h:
	call sub_455ch		;45a3
	djnz l45a3h		;45a6
	pop bc			;45a8
	pop hl			;45a9
	push hl			;45aa
l45abh:
	ld a,(hl)			;45ab
	call sub_4561h		;45ac
	inc hl			;45af
	djnz l45abh		;45b0
	pop hl			;45b2
	ld bc,l0010h		;45b3
	add hl,bc			;45b6
	push de			;45b7
	ret			;45b8
sub_45b9h:
	ld bc,l0006h		;45b9
l45bch:
	ld a,(hl)			;45bc
	and a			;45bd
	jr z,l45c8h		;45be
	add hl,bc			;45c0
	call sub_3fd5h		;45c1
	inc hl			;45c4
	jr nz,l45bch		;45c5
	ret			;45c7
l45c8h:
	or 0ffh		;45c8
	ret			;45ca
sub_45cbh:
	ld hl,0bfd6h		;45cb
	inc (hl)			;45ce
	ld e,0ffh		;45cf
	call sub_5617h		;45d1
	ld e,0ffh		;45d4
	call sub_5613h		;45d6
l45d9h:
	di			;45d9
	ld hl,l468ch		;45da
l45ddh:
	in a,(01bh)		;45dd
	bit 2,a		;45df
	jr z,l45ddh		;45e1
	ld a,04eh		;45e3
	out (0f1h),a		;45e5
	ld a,(hl)			;45e7
	inc hl			;45e8
	push af			;45e9
	and 07fh		;45ea
	out (01ah),a		;45ec
	pop af			;45ee
	or a			;45ef
	jp p,l45ddh		;45f0
	ld hl,l0000h		;45f3
l45f6h:
	dec hl			;45f6
	ld a,h			;45f7
	or l			;45f8
	jr nz,l45f6h		;45f9
	in a,(01bh)		;45fb
	bit 2,a		;45fd
	jr z,l45f6h		;45ff
	call l04b7h		;4601
	ld a,007h		;4604
	out (01ah),a		;4606
	ld hl,l0000h		;4608
	ld d,009h		;460b
l460dh:
	dec hl			;460d
	ld a,h			;460e
	or l			;460f
	jr nz,l4617h		;4610
	dec d			;4612
	ld a,d			;4613
	or a			;4614
	jr z,l4641h		;4615
l4617h:
	ld a,04eh		;4617
	out (0f1h),a		;4619
	in a,(01bh)		;461b
	bit 0,a		;461d
	jr z,l460dh		;461f
	in a,(01ah)		;4621
	and 07fh		;4623
	cp 02ah		;4625
	jr z,l4687h		;4627
	ld hl,0c039h		;4629
	srl (hl)		;462c
	dec hl			;462e
	rr (hl)		;462f
	cp 018h		;4631
	jr z,l4649h		;4633
	ld hl,0c039h		;4635
	srl (hl)		;4638
l463ah:
	dec hl			;463a
	rr (hl)		;463b
	cp 000h		;463d
	jr z,l4649h		;463f
l4641h:
	ld hl,0c039h		;4641
	srl (hl)		;4644
	dec hl			;4646
	rr (hl)		;4647
l4649h:
	ld hl,l004bh		;4649
	ld de,(0c038h)		;464c
	ld a,e			;4650
	or d			;4651
	jr z,l465ah		;4652
	sbc hl,de		;4654
	jr z,l467bh		;4656
	jr c,l4661h		;4658
l465ah:
	ld de,l2580h		;465a
	ld (0c038h),de		;465d
l4661h:
	ld hl,l2580h		;4661
	xor a			;4664
l4665h:
	inc a			;4665
	or a			;4666
	sbc hl,de		;4667
	jr nc,l4665h		;4669
	dec a			;466b
	or a			;466c
	jr nz,l4670h		;466d
	inc a			;466f
l4670h:
	ld c,012h		;4670
	ld d,007h		;4672
	out (c),d		;4674
	out (c),a		;4676
	jp l45d9h		;4678
l467bh:
	ld c,012h		;467b
	ld hl,02708h		;467d
	out (c),h		;4680
	out (c),l		;4682
	jp l45d9h		;4684
l4687h:
	call l04b7h		;4687
	ei			;468a
	ret			;468b
l468ch:
	nop			;468c
	nop			;468d
	nop			;468e
	nop			;468f
	nop			;4690
	nop			;4691
	nop			;4692
	nop			;4693
	nop			;4694
	nop			;4695
	nop			;4696
	nop			;4697
	nop			;4698
	nop			;4699
	nop			;469a
	nop			;469b
	nop			;469c
	nop			;469d
	nop			;469e
	dec c			;469f
	ld a,(bc)			;46a0
	dec c			;46a1
	ld a,(bc)			;46a2
	dec c			;46a3
	ld a,(bc)			;46a4
	jr nz,l46c7h		;46a5
	jr nz,l46c9h		;46a7
	ld d,b			;46a9
	ld l,h			;46aa
	ld h,l			;46ab
	ld h,c			;46ac
	ld (hl),e			;46ad
	ld h,l			;46ae
	jr nz,l4725h		;46af
	ld a,c			;46b1
	ld (hl),b			;46b2
	ld h,l			;46b3
	jr nz,l4717h		;46b4
	jr nz,$+117		;46b6
	ld (hl),h			;46b8
	ld h,c			;46b9
	ld (hl),d			;46ba
	jr z,l46e7h		;46bb
	add hl,hl			;46bd
	jr nz,l4726h		;46be
	ld l,a			;46c0
	ld (hl),d			;46c1
	jr nz,l4725h		;46c2
	ld (hl),l			;46c4
	ld (hl),h			;46c5
	ld l,a			;46c6
l46c7h:
	dec l			;46c7
	ld h,d			;46c8
l46c9h:
	ld h,c			;46c9
	ld (hl),l			;46ca
	ld h,h			;46cb
	jr nz,l4740h		;46cc
	ld l,a			;46ce
	ld (hl),l			;46cf
	ld (hl),h			;46d0
	ld l,c			;46d1
	ld l,(hl)			;46d2
	ld h,l			;46d3
	ld l,00dh		;46d4
	ld a,(bc)			;46d6
	adc a,l			;46d7
sub_46d8h:
	di			;46d8
	ld hl,0bfd6h		;46d9
	inc (hl)			;46dc
	ld hl,08000h		;46dd
l46e0h:
	ld a,(hl)			;46e0
	ld b,a			;46e1
	cpl			;46e2
	ld (hl),a			;46e3
	cp (hl)			;46e4
	jr nz,l46f6h		;46e5
l46e7h:
	cpl			;46e7
	ld (hl),a			;46e8
	cp (hl)			;46e9
	jr nz,l46f6h		;46ea
	inc hl			;46ec
	ld a,h			;46ed
	or l			;46ee
	jr nz,l46e0h		;46ef
	ld hl,l4712h		;46f1
	jr l46fah		;46f4
l46f6h:
	ld (hl),b			;46f6
	ld hl,l0391h		;46f7
l46fah:
	ei			;46fa
	call l43c0h		;46fb
	ld hl,l0000h		;46fe
	ld d,01eh		;4701
l4703h:
	ld a,04eh		;4703
	out (0f1h),a		;4705
	dec hl			;4707
	ld a,h			;4708
	or l			;4709
	jr nz,l4703h		;470a
	dec d			;470c
	ld a,d			;470d
	or a			;470e
	jr nz,l4703h		;470f
	ret			;4711
l4712h:
	dec c			;4712
	dec c			;4713
	dec c			;4714
	ld h,d			;4715
	ld h,d			;4716
l4717h:
	ld d,d			;4717
	ld b,c			;4718
	ld c,l			;4719
	jr nz,$+101		;471a
	ld l,b			;471c
	ld h,l			;471d
	ld h,e			;471e
	ld l,e			;471f
	jr nz,l4785h		;4720
	ld l,a			;4722
	ld l,l			;4723
	ld (hl),b			;4724
l4725h:
	ld l,h			;4725
l4726h:
	ld h,l			;4726
	ld (hl),h			;4727
	ld h,l			;4728
	ld hl,08d07h		;4729
sub_472ch:
	ld a,(0cbc6h)		;472c
	ld (0cba0h),a		;472f
	push af			;4732
	ld a,(0cbc7h)		;4733
	push af			;4736
	xor a			;4737
l4738h:
	ld (0cbc6h),a		;4738
	push af			;473b
	call sub_3dd6h		;473c
	pop af			;473f
l4740h:
	push af			;4740
	add a,041h		;4741
	call l42feh		;4743
	ld hl,l4786h		;4746
	call l43c0h		;4749
	pop bc			;474c
	push bc			;474d
	ld a,(0cbc7h)		;474e
	cp b			;4751
	ld a,049h		;4752
	jr z,l4758h		;4754
	ld a,020h		;4756
l4758h:
	call l42feh		;4758
	pop bc			;475b
	push bc			;475c
	ld a,(0cba0h)		;475d
	cp b			;4760
	ld a,04fh		;4761
	jr z,l4767h		;4763
	ld a,020h		;4765
l4767h:
	call l42feh		;4767
	ld a,020h		;476a
	call l42feh		;476c
	ld ix,l13cfh		;476f
	call sub_210dh		;4773
	pop af			;4776
	inc a			;4777
	cp 00bh		;4778
	jp c,l4738h		;477a
	pop af			;477d
	call sub_3dd6h		;477e
	pop af			;4781
	ld (0cbc6h),a		;4782
l4785h:
	ret			;4785
l4786h:
	jr nz,l47fbh		;4786
	ld (hl),h			;4788
	ld (hl),d			;4789
	ld h,l			;478a
	ld h,c			;478b
	ld l,l			;478c
	jr nz,$+47		;478d
	and b			;478f
	push hl			;4790
	ld a,h			;4791
	call sub_42d6h		;4792
	pop hl			;4795
	ld a,l			;4796
	jp sub_42d6h		;4797
sub_479ah:
	push af			;479a
	ld a,020h		;479b
	call l42feh		;479d
	ld a,052h		;47a0
	call l42feh		;47a2
	pop af			;47a5
	rlca			;47a6
	rlca			;47a7
	rlca			;47a8
	and 007h		;47a9
	jp sub_42dfh		;47ab
sub_47aeh:
	ld a,(0ca13h)		;47ae
	ld d,a			;47b1
	ld hl,0ca1ah		;47b2
	xor (hl)			;47b5
	bit 7,a		;47b6
	ret z			;47b8
	ld a,020h		;47b9
	call l42feh		;47bb
	ld a,043h		;47be
	ld b,050h		;47c0
	bit 7,d		;47c2
	jr nz,l47cah		;47c4
	ld a,052h		;47c6
	ld b,046h		;47c8
l47cah:
	call l42feh		;47ca
	ld a,c			;47cd
	and 010h		;47ce
	ret z			;47d0
	ld a,020h		;47d1
	call l42feh		;47d3
	ld a,b			;47d6
	jp l42feh		;47d7
l47dah:
	jp 0c155h		;47da
l47ddh:
	call nz,0cd44h		;47dd
l47e0h:
	ld d,l			;47e0
	ret			;47e1
l47e2h:
	ld d,d			;47e2
	jp nc,l4e52h		;47e3
	jp nc,l4552h		;47e6
	jp z,l5246h		;47e9
	ld c,l			;47ec
	jp nc,l3f3fh		;47ed
	ccf			;47f0
	cp a			;47f1
	ld (ix-03bh),048h		;47f2
	ld a,(hl)			;47f6
l47f7h:
	bit 0,b		;47f7
	jr z,l47feh		;47f9
l47fbh:
	rlca			;47fb
	jr l47ffh		;47fc
l47feh:
	rrca			;47fe
l47ffh:
	dec c			;47ff
	jr nz,l47f7h		;4800
	pop bc			;4802
l4803h:
	xor b			;4803
	ld (de),a			;4804
	inc hl			;4805
	inc de			;4806
	djnz $-19		;4807
	ret			;4809
	call sub_4f08h		;480a
	call nz,sub_4840h		;480d
sub_4810h:
	ld de,0bf48h		;4810
	call sub_0d39h		;4813
	ld bc,(0cb84h)		;4816
	ld hl,0ca0dh		;481a
	push bc			;481d
	call sub_4830h		;481e
	pop hl			;4821
	jr c,l4828h		;4822
	call sub_4e38h		;4824
	ret nc			;4827
l4828h:
	ld de,0bf48h		;4828
	call sub_0d56h		;482b
	scf			;482e
	ret			;482f
sub_4830h:
	dec bc			;4830
	bit 7,b		;4831
	ret nz			;4833
	ld a,(hl)			;4834
	inc hl			;4835
	push bc			;4836
	push hl			;4837
	call l0c7fh		;4838
	pop hl			;483b
	pop bc			;483c
	ret c			;483d
	jr sub_4830h		;483e
sub_4840h:
	ld hl,0ca13h		;4840
	call sub_4849h		;4843
	ld hl,0ca1ah		;4846
sub_4849h:
	ld a,(hl)			;4849
	xor 080h		;484a
	ld (hl),a			;484c
	ret			;484d
	jp (ix)		;484e
sub_4850h:
	ld a,(0c273h)		;4850
	and 002h		;4853
	jr nz,l486ch		;4855
	call sub_5224h		;4857
	ret nz			;485a
	ld hl,0c272h		;485b
	ld a,(hl)			;485e
	and 001h		;485f
	jr z,l4867h		;4861
	set 1,(hl)		;4863
	jr l486ch		;4865
l4867h:
	ld a,(0bfa8h)		;4867
	and a			;486a
	ret nz			;486b
l486ch:
	ld hl,0c272h		;486c
	bit 1,(hl)		;486f
	jr z,l4881h		;4871
	ld a,(0c044h)		;4873
	bit 1,a		;4876
	jr z,l4881h		;4878
	ld a,(0bfb0h)		;487a
	and a			;487d
	jp z,l4f60h		;487e
l4881h:
	jp l4f1bh		;4881
l4884h:
	ld a,(iy+007h)		;4884
	cp 002h		;4887
	jr nz,l48c4h		;4889
	push de			;488b
	push hl			;488c
	ld e,01dh		;488d
	call 00561h		;488f
	ld a,(hl)			;4892
	pop hl			;4893
	pop de			;4894
	and a			;4895
	jr nz,l48c4h		;4896
	call sub_4ddfh		;4898
	call sub_4cc0h		;489b
	call sub_43e4h		;489e
	push hl			;48a1
	ld hl,(0cee9h)		;48a2
	inc hl			;48a5
	ld (0cee9h),hl		;48a6
	pop hl			;48a9
	ld e,087h		;48aa
	call sub_4cedh		;48ac
	ret c			;48af
	push bc			;48b0
	call sub_4e23h		;48b1
	ld bc,l0003h		;48b4
	call sub_4830h		;48b7
	pop bc			;48ba
	jp c,l4ef7h		;48bb
	inc bc			;48be
	inc bc			;48bf
	inc bc			;48c0
	jp l4d68h		;48c1
l48c4h:
	ld a,(iy+008h)		;48c4
	and 087h		;48c7
	jr nz,l48dbh		;48c9
	ld a,(iy+006h)		;48cb
	and 003h		;48ce
	cp 003h		;48d0
	jr nz,l48d8h		;48d2
	res 0,(iy+006h)		;48d4
l48d8h:
	call 0494ch		;48d8
l48dbh:
	push de			;48db
	push hl			;48dc
	ld e,021h		;48dd
	call 00561h		;48df
	ld a,(hl)			;48e2
	pop hl			;48e3
	pop de			;48e4
	and a			;48e5
	ld a,(iy+006h)		;48e6
	ld b,007h		;48e9
	ld c,(iy+008h)		;48eb
	ld hl,0c271h		;48ee
	push hl			;48f1
	ld hl,l4b17h		;48f2
	jr z,l4908h		;48f5
	ld e,a			;48f7
	ld a,c			;48f8
	and 087h		;48f9
	ld a,e			;48fb
	jr nz,l4908h		;48fc
	ld e,003h		;48fe
l4900h:
	rrca			;4900
	rrc c		;4901
	inc hl			;4903
	dec b			;4904
	dec e			;4905
	jr nz,l4900h		;4906
l4908h:
	rrca			;4908
	jr nc,l493ah		;4909
	and 07fh		;490b
	ld e,(hl)			;490d
	ex (sp),hl			;490e
	res 4,(hl)		;490f
	bit 0,c		;4911
	jr z,l4917h		;4913
	set 4,(hl)		;4915
l4917h:
	ex (sp),hl			;4917
	bit 7,(iy+008h)		;4918
	jr z,l4920h		;491c
	set 4,e		;491e
l4920h:
	push hl			;4920
	push af			;4921
	xor a			;4922
	bit 1,e		;4923
	jr nz,l492ch		;4925
	call sub_3d62h		;4927
	res 0,c		;492a
l492ch:
	or e			;492c
	ld e,a			;492d
	push bc			;492e
	call sub_4cedh		;492f
	call l4d68h		;4932
	pop bc			;4935
	pop af			;4936
	pop hl			;4937
	res 7,a		;4938
l493ah:
	inc hl			;493a
	rrc c		;493b
	djnz l4908h		;493d
	rrca			;493f
	ld (iy+006h),a		;4940
	ld (iy+008h),000h		;4943
	pop hl			;4947
	jp l4b1eh		;4948
	ld de,l7efdh		;494b
	rlca			;494e
	and a			;494f
	jr nz,l4960h		;4950
	push de			;4952
	push hl			;4953
	ld e,01dh		;4954
	call 00561h		;4956
	ld (hl),000h		;4959
	pop hl			;495b
	pop de			;495c
	call l38b3h		;495d
l4960h:
	call 04f10h		;4960
	and a			;4963
	jp nz,l4993h		;4964
	ld a,(iy+007h)		;4967
	cp 004h		;496a
	jr c,l497ch		;496c
	call sub_3b2dh		;496e
	jr nz,l497ch		;4971
	ld a,(iy-03fh)		;4973
	cp (iy+009h)		;4976
	jp z,l4993h		;4979
l497ch:
	call sub_4ddfh		;497c
	ld hl,0c271h		;497f
	bit 0,(iy+02eh)		;4982
	res 4,(hl)		;4986
	jr z,l498ch		;4988
	set 4,(hl)		;498a
l498ch:
	ld e,00fh		;498c
	call l3af1h		;498e
	jr l49f9h		;4991
l4993h:
	push de			;4993
	push hl			;4994
	ld e,025h		;4995
	call 00561h		;4997
	ld a,(hl)			;499a
	pop hl			;499b
	pop de			;499c
	and a			;499d
	jr nz,l49e1h		;499e
	push de			;49a0
	push hl			;49a1
	ld e,027h		;49a2
	call 00561h		;49a4
	ld a,(hl)			;49a7
	ld d,a			;49a8
	ld a,(iy+02dh)		;49a9
	cp 00ah		;49ac
	ld a,d			;49ae
	jr c,l49bah		;49af
	scf			;49b1
	ld hl,0cefeh		;49b2
	bit 7,(hl)		;49b5
	jr z,l49bah		;49b7
	or a			;49b9
l49bah:
	pop hl			;49ba
	pop de			;49bb
	jr nc,l49c1h		;49bc
	and a			;49be
	jr z,l49e1h		;49bf
l49c1h:
	call sub_4c96h		;49c1
	ld a,(iy+02dh)		;49c4
	cp 00ah		;49c7
	jr nz,l49d4h		;49c9
	ld a,(0cefeh)		;49cb
	bit 7,a		;49ce
	ld e,000h		;49d0
	jr nz,l49dch		;49d2
l49d4h:
	call sub_3b2dh		;49d4
	ld e,000h		;49d7
	jr z,l49dch		;49d9
	inc e			;49db
l49dch:
	call l3af1h		;49dc
	jr l49f9h		;49df
l49e1h:
	ld a,(iy+007h)		;49e1
	cp 008h		;49e4
	jr c,l49f9h		;49e6
	cp 00ah		;49e8
	jr z,l49f9h		;49ea
	cp 00dh		;49ec
	jr z,l49f9h		;49ee
	call 04f10h		;49f0
	cp 0ffh		;49f3
	jr z,l49f9h		;49f5
	and a			;49f7
	ret nz			;49f8
l49f9h:
	ld a,(iy+007h)		;49f9
	dec a			;49fc
	cp 003h		;49fd
	ret c			;49ff
	ld b,(iy-03ch)		;4a00
	ld a,b			;4a03
	ld c,(iy-03fh)		;4a04
	cp c			;4a07
	jr z,l4a0bh		;4a08
	ret			;4a0a
l4a0bh:
	ld d,a			;4a0b
	ld (0cf02h),a		;4a0c
l4a0fh:
	sub (iy-03fh)		;4a0f
	and 007h		;4a12
	ld hl,0c01fh		;4a14
	cp (hl)			;4a17
	jr z,l4a29h		;4a18
	ld a,b			;4a1a
	cp (iy+009h)		;4a1b
	jr z,l4a29h		;4a1e
	inc a			;4a20
	and 007h		;4a21
	ld (iy-03ch),a		;4a23
	ld b,a			;4a26
	jr l4a0fh		;4a27
l4a29h:
	ld a,(iy-03ch)		;4a29
	cp d			;4a2c
	ret z			;4a2d
	ld a,(iy-03ch)		;4a2e
	call sub_3d62h		;4a31
	push de			;4a34
	ld e,a			;4a35
	ld a,(iy-03eh)		;4a36
	neg		;4a39
	add a,d			;4a3b
	and 007h		;4a3c
	sla a		;4a3e
	or e			;4a40
	ld e,a			;4a41
	ld a,(iy+007h)		;4a42
l4a45h:
	and a			;4a45
	jr nz,l4a55h		;4a46
	ld hl,0c271h		;4a48
	res 4,(hl)		;4a4b
	ld hl,0c05bh		;4a4d
	call sub_4cf9h		;4a50
	jr l4a8bh		;4a53
l4a55h:
	push hl			;4a55
	ld hl,(0ceebh)		;4a56
	inc hl			;4a59
	ld (0ceebh),hl		;4a5a
	call sub_3b2dh		;4a5d
	jr z,l4a7ch		;4a60
	ld a,(0cf02h)		;4a62
	inc a			;4a65
	and 007h		;4a66
	cp (iy+009h)		;4a68
	jr z,l4a78h		;4a6b
	sub (iy-03fh)		;4a6d
	and 007h		;4a70
	ld hl,0c01fh		;4a72
	cp (hl)			;4a75
	jr nz,l4a7ch		;4a76
l4a78h:
	ld a,010h		;4a78
	or e			;4a7a
	ld e,a			;4a7b
l4a7ch:
	ld hl,0c271h		;4a7c
	ld a,(hl)			;4a7f
	set 4,(hl)		;4a80
	ex (sp),hl			;4a82
	push af			;4a83
	call sub_4cedh		;4a84
	pop hl			;4a87
	ld a,h			;4a88
	pop hl			;4a89
	ld (hl),a			;4a8a
l4a8bh:
	pop hl			;4a8b
	jp c,l4b14h		;4a8c
	call 04e2ch		;4a8f
	jr nc,l4a98h		;4a92
	push hl			;4a94
	jp 04b10h		;4a95
l4a98h:
	and a			;4a98
	jr z,l4a9ch		;4a99
	inc bc			;4a9b
l4a9ch:
	ld (0cb9ch),bc		;4a9c
	push hl			;4aa0
	ld l,h			;4aa1
	ld h,000h		;4aa2
	sla l		;4aa4
	sla l		;4aa6
	sla l		;4aa8
	ld bc,0ffc6h		;4aaa
	add hl,bc			;4aad
	push iy		;4aae
	pop bc			;4ab0
	add hl,bc			;4ab1
	call sub_0dc5h		;4ab2
	ld bc,l0003h+1		;4ab5
	add hl,bc			;4ab8
	push de			;4ab9
	call l0dcbh		;4aba
	pop de			;4abd
	push bc			;4abe
l4abfh:
	ld a,b			;4abf
	or c			;4ac0
	jr z,l4adah		;4ac1
	push bc			;4ac3
	set 7,e		;4ac4
	call l1e77h		;4ac6
	res 7,e		;4ac9
	push de			;4acb
	ld de,0bf48h		;4acc
	call l0c7fh		;4acf
	pop de			;4ad2
	pop bc			;4ad3
	dec bc			;4ad4
	jr nc,l4abfh		;4ad5
	pop bc			;4ad7
	jr $+56		;4ad8
l4adah:
	pop bc			;4ada
	ld hl,(0cb9ch)		;4adb
	add hl,bc			;4ade
	call sub_4e38h		;4adf
	jr c,$+46		;4ae2
	res 0,(iy+006h)		;4ae4
	jr l4aebh		;4ae8
l4aeah:
	push de			;4aea
l4aebh:
	call sub_4c8ah		;4aeb
	pop de			;4aee
	ld a,d			;4aef
	inc a			;4af0
	and 007h		;4af1
	ld d,a			;4af3
	ld (0cf02h),a		;4af4
	ld a,(iy+007h)		;4af7
	and a			;4afa
	jr nz,l4b0bh		;4afb
	ld a,d			;4afd
	push de			;4afe
	sub (iy-03eh)		;4aff
	rrca			;4b02
	rrca			;4b03
	rrca			;4b04
	and 0e0h		;4b05
	call sub_38bah		;4b07
	pop de			;4b0a
l4b0bh:
	jp l4a29h		;4b0b
	inc (ix-033h)		;4b0e
	rst 30h			;4b11
	ld c,(hl)			;4b12
	pop hl			;4b13
l4b14h:
	ld d,h			;4b14
	jr l4aeah		;4b15
l4b17h:
	ld bc,l0509h		;4b17
	ccf			;4b1a
	ld (hl),e			;4b1b
	ld d,e			;4b1c
	rra			;4b1d
l4b1eh:
	ld de,0bf52h		;4b1e
	call l0d43h		;4b21
	jp nc,l4be8h		;4b24
	ld a,(0c273h)		;4b27
	and 002h		;4b2a
	jp nz,l4bceh		;4b2c
	ld a,(0c041h)		;4b2f
	bit 2,a		;4b32
	jp z,l4bc8h		;4b34
	ld a,04eh		;4b37
	out (0f1h),a		;4b39
	ld bc,l43fdh		;4b3b
	ld hl,l0000h		;4b3e
	xor a			;4b41
	ld (0cbb2h),a		;4b42
	ld de,(0cbb3h)		;4b45
	ld a,010h		;4b49
l4b4bh:
	add hl,hl			;4b4b
	ex de,hl			;4b4c
	add hl,hl			;4b4d
	ex de,hl			;4b4e
	jr nc,l4b5ch		;4b4f
	add hl,bc			;4b51
	push af			;4b52
	ld a,(0cbb2h)		;4b53
	adc a,000h		;4b56
	ld (0cbb2h),a		;4b58
	pop af			;4b5b
l4b5ch:
	dec a			;4b5c
	jr nz,l4b4bh		;4b5d
	push hl			;4b5f
	ld bc,l43fdh		;4b60
	ld hl,l0000h		;4b63
	ld de,(0cbb5h)		;4b66
	ld a,010h		;4b6a
l4b6ch:
	add hl,hl			;4b6c
	ex de,hl			;4b6d
	add hl,hl			;4b6e
	ex de,hl			;4b6f
	jr nc,l4b73h		;4b70
	add hl,bc			;4b72
l4b73h:
	dec a			;4b73
	jr nz,l4b6ch		;4b74
	ex de,hl			;4b76
	ld hl,(0cbb3h)		;4b77
	ex (sp),hl			;4b7a
	ld (0cbb3h),hl		;4b7b
	pop bc			;4b7e
	push de			;4b7f
	ld hl,l0000h		;4b80
	ld de,l0003h		;4b83
	ld a,010h		;4b86
l4b88h:
	add hl,hl			;4b88
	ex de,hl			;4b89
	add hl,hl			;4b8a
	ex de,hl			;4b8b
	jr nc,l4b8fh		;4b8c
	add hl,bc			;4b8e
l4b8fh:
	dec a			;4b8f
	jr nz,l4b88h		;4b90
	pop de			;4b92
	add hl,de			;4b93
	ld a,(0cbb2h)		;4b94
	ld e,a			;4b97
	ld d,000h		;4b98
	add hl,de			;4b9a
	ld (0cbb5h),hl		;4b9b
	ld hl,(0cbb3h)		;4b9e
	ld de,09ec3h		;4ba1
	add hl,de			;4ba4
	ld (0cbb3h),hl		;4ba5
	ld hl,(0cbb5h)		;4ba8
	ld de,00026h		;4bab
	adc hl,de		;4bae
	ld (0cbb5h),hl		;4bb0
	ld a,(0c033h)		;4bb3
	inc a			;4bb6
	or a			;4bb7
	jr z,l4bc8h		;4bb8
	sub l			;4bba
	jr nc,l4bc8h		;4bbb
	di			;4bbd
	ld hl,0bfa8h		;4bbe
	call l084eh		;4bc1
	ei			;4bc4
	jp l4be8h		;4bc5
l4bc8h:
	call sub_5224h		;4bc8
	jp nz,l4be8h		;4bcb
l4bceh:
	ld hl,0c272h		;4bce
	res 0,(hl)		;4bd1
	di			;4bd3
	ld hl,0c274h		;4bd4
	ld a,(hl)			;4bd7
	and 018h		;4bd8
	jr z,$+17		;4bda
	cp 008h		;4bdc
	jr z,l4be8h		;4bde
	cp 010h		;4be0
	jr z,l4be8h		;4be2
	ld a,008h		;4be4
	or (hl)			;4be6
	ld (hl),a			;4be7
l4be8h:
	ei			;4be8
	ret			;4be9
	ld bc,0433ah		;4bea
	ret nz			;4bed
	bit 6,a		;4bee
	call nz,sub_520fh		;4bf0
	ld hl,0c274h		;4bf3
	di			;4bf6
	ld a,0e7h		;4bf7
	and (hl)			;4bf9
	or 008h		;4bfa
	ei			;4bfc
	ld (hl),a			;4bfd
	ld a,(0bfdbh)		;4bfe
	ld b,a			;4c01
	ld a,(0c022h)		;4c02
	and a			;4c05
	ld c,a			;4c06
	jr z,l4c12h		;4c07
	ld a,(0bfa9h)		;4c09
	and a			;4c0c
	jr nz,l4c12h		;4c0d
	ld a,b			;4c0f
	add a,c			;4c10
	ld b,a			;4c11
l4c12h:
	ld a,b			;4c12
	ld (0bfadh),a		;4c13
	ei			;4c16
	ret			;4c17
	ld hl,04c1eh		;4c18
sub_4c1bh:
	nop			;4c1b
	ld hl,0c274h		;4c1c
	ld a,(hl)			;4c1f
	ld b,a			;4c20
	and 018h		;4c21
	jr z,l4c6eh		;4c23
	cp 010h		;4c25
	jr z,l4c6eh		;4c27
	cp 008h		;4c29
	jr z,l4c5dh		;4c2b
	ld a,(0bfaeh)		;4c2d
	and a			;4c30
	jr nz,l4c6eh		;4c31
	ld de,0bf52h		;4c33
	call l0d43h		;4c36
	jr c,l4c63h		;4c39
	di			;4c3b
	ld a,0e7h		;4c3c
	and (hl)			;4c3e
	ei			;4c3f
	ld (hl),a			;4c40
	call sub_521ch		;4c41
	push iy		;4c44
	xor a			;4c46
l4c47h:
	push af			;4c47
	call sub_3dd6h		;4c48
	call 04f10h		;4c4b
	cp 0fdh		;4c4e
	call z,sub_4cc0h		;4c50
	pop af			;4c53
	inc a			;4c54
	cp 00bh		;4c55
	jr c,l4c47h		;4c57
	pop iy		;4c59
	jr l4c6eh		;4c5b
l4c5dh:
	ld a,(0bfadh)		;4c5d
	and a			;4c60
	jr nz,l4c6eh		;4c61
l4c63h:
	di			;4c63
	ld a,0e7h		;4c64
	and (hl)			;4c66
	or 010h		;4c67
	ei			;4c69
	ld (hl),a			;4c6a
	call sub_51adh		;4c6b
l4c6eh:
	ei			;4c6e
	ret			;4c6f
l4c70h:
	sub d			;4c70
	adc a,b			;4c71
	ld b,b			;4c72
	ld b,b			;4c73
	ld b,b			;4c74
	ld b,b			;4c75
	ld h,b			;4c76
	nop			;4c77
	sub b			;4c78
	adc a,d			;4c79
	add a,d			;4c7a
	and h			;4c7b
	adc a,b			;4c7c
	ld b,b			;4c7d
	ld h,b			;4c7e
	nop			;4c7f
	inc (ix-003h)		;4c80
	ld (hl),0c5h		;4c83
	nop			;4c85
	ld a,0ffh		;4c86
	jr l4c8ch		;4c88
sub_4c8ah:
	ld a,0fdh		;4c8a
l4c8ch:
	push de			;4c8c
	push hl			;4c8d
	ld e,01dh		;4c8e
	call 00561h		;4c90
	ld (hl),a			;4c93
	pop hl			;4c94
	pop de			;4c95
sub_4c96h:
	push hl			;4c96
	push de			;4c97
	ld e,025h		;4c98
	call 00561h		;4c9a
	call l084eh		;4c9d
	ld d,(hl)			;4ca0
	ld a,(iy+02dh)		;4ca1
	cp 00ah		;4ca4
	jr nz,l4cbdh		;4ca6
	ld a,(0cefeh)		;4ca8
	bit 7,a		;4cab
	jr z,l4cbdh		;4cad
	bit 1,a		;4caf
	jr z,l4cb7h		;4cb1
	ld (hl),001h		;4cb3
	jr l4cbdh		;4cb5
l4cb7h:
	ld a,d			;4cb7
	or a			;4cb8
	jr nz,l4cbdh		;4cb9
	ld (hl),01eh		;4cbb
l4cbdh:
	pop de			;4cbd
	pop hl			;4cbe
	ret			;4cbf
sub_4cc0h:
	push bc			;4cc0
	push de			;4cc1
	push hl			;4cc2
	ld hl,(l041dh)		;4cc3
	ld e,01fh		;4cc6
	call 00561h		;4cc8
	ld a,(hl)			;4ccb
	ld b,a			;4ccc
	ld a,0fdh		;4ccd
	ld e,01dh		;4ccf
	call 00561h		;4cd1
	cp (hl)			;4cd4
	jr z,l4cdbh		;4cd5
	pop hl			;4cd7
	pop de			;4cd8
	pop bc			;4cd9
	ret			;4cda
l4cdbh:
	ld a,(iy-03bh)		;4cdb
	cp 002h		;4cde
	jr c,l4ce8h		;4ce0
	ld a,r		;4ce2
	and 003h		;4ce4
	add a,b			;4ce6
	ld b,a			;4ce7
l4ce8h:
	ld (hl),b			;4ce8
	pop hl			;4ce9
	pop de			;4cea
	pop bc			;4ceb
	ret			;4cec
sub_4cedh:
	push iy		;4ced
	pop hl			;4cef
	ld bc,0ff81h		;4cf0
	add hl,bc			;4cf3
	ld (0cb9ch),hl		;4cf4
	jr l4d02h		;4cf7
sub_4cf9h:
	ld e,003h		;4cf9
	jr l4cffh		;4cfb
sub_4cfdh:
	ld e,003h		;4cfd
l4cffh:
	ld (0cb9ch),hl		;4cff
l4d02h:
	ld hl,0bf48h		;4d02
	push de			;4d05
	ex de,hl			;4d06
	call sub_0dbfh		;4d07
	ld (0cba0h),hl		;4d0a
	ld hl,(0cb9ch)		;4d0d
	push de			;4d10
	push hl			;4d11
	ld de,l0006h		;4d12
	add hl,de			;4d15
	ld b,(hl)			;4d16
	res 7,(hl)		;4d17
	call sub_3b2dh		;4d19
	jr z,l4d27h		;4d1c
	ld a,(0c271h)		;4d1e
	bit 4,a		;4d21
	jr z,l4d2eh		;4d23
	set 7,(hl)		;4d25
l4d27h:
	push bc			;4d27
	push hl			;4d28
	call sub_4c8ah		;4d29
	pop hl			;4d2c
	pop bc			;4d2d
l4d2eh:
	ld a,b			;4d2e
	cp (hl)			;4d2f
	call l0b23h		;4d30
	pop hl			;4d33
	pop de			;4d34
	ld b,007h		;4d35
	call l0d60h		;4d37
	jr c,l4d57h		;4d3a
	ld hl,(0cb9ch)		;4d3c
	push de			;4d3f
	ld de,l0006h+1		;4d40
l4d43h:
	add hl,de			;4d43
	pop de			;4d44
	call sub_4d72h		;4d45
	jr c,l4d57h		;4d48
	pop hl			;4d4a
	push hl			;4d4b
	ld a,l			;4d4c
	push bc			;4d4d
	call l0c7fh		;4d4e
	pop bc			;4d51
	jr c,l4d57h		;4d52
	inc bc			;4d54
	jr l4d60h		;4d55
l4d57h:
	ld hl,(0cba0h)		;4d57
	call sub_0db3h		;4d5a
	pop hl			;4d5d
	scf			;4d5e
	ret			;4d5f
l4d60h:
	ld hl,(0cba0h)		;4d60
	ld (0bf50h),hl		;4d63
	pop hl			;4d66
	ret			;4d67
l4d68h:
	ret c			;4d68
	push bc			;4d69
	pop hl			;4d6a
	call sub_4e38h		;4d6b
	ret nc			;4d6e
	jp l4ef7h		;4d6f
sub_4d72h:
	push hl			;4d72
	ld hl,0c003h		;4d73
	ld a,(iy+02dh)		;4d76
	cp 00ah		;4d79
	jr nz,l4d80h		;4d7b
	ld hl,0c013h		;4d7d
l4d80h:
	ld b,006h		;4d80
	call l0d60h		;4d82
	pop hl			;4d85
	ret c			;4d86
	ld a,(iy+02dh)		;4d87
	cp 00ah		;4d8a
	ld a,(0c009h)		;4d8c
	jr nz,l4d94h		;4d8f
	ld a,(0c019h)		;4d91
l4d94h:
	or 060h		;4d94
l4d96h:
	ld b,a			;4d96
	call sub_3b2dh		;4d97
	jr z,l4da5h		;4d9a
	ld a,(0c271h)		;4d9c
	bit 4,a		;4d9f
	jr nz,l4da5h		;4da1
	set 7,b		;4da3
l4da5h:
	ld a,(hl)			;4da5
	and a			;4da6
	ld a,b			;4da7
	jr nz,l4dach		;4da8
	or 001h		;4daa
l4dach:
	push hl			;4dac
	call l0c7fh		;4dad
	pop hl			;4db0
	ret c			;4db1
	ld bc,00800h		;4db2
l4db5h:
	ld a,(hl)			;4db5
	and a			;4db6
	jr z,l4dd8h		;4db7
	push bc			;4db9
	ld b,006h		;4dba
	call l0d60h		;4dbc
	pop bc			;4dbf
	ret c			;4dc0
	push bc			;4dc1
	ld b,(hl)			;4dc2
	inc hl			;4dc3
	ld a,(hl)			;4dc4
	and a			;4dc5
	ld a,b			;4dc6
	jr nz,l4dcbh		;4dc7
	or 001h		;4dc9
l4dcbh:
	push hl			;4dcb
	call l0c7fh		;4dcc
	pop hl			;4dcf
	pop bc			;4dd0
	ret c			;4dd1
	ld a,007h		;4dd2
	add a,c			;4dd4
	ld c,a			;4dd5
	djnz l4db5h		;4dd6
l4dd8h:
	ld a,00eh		;4dd8
	add a,c			;4dda
	ld c,a			;4ddb
	ld b,000h		;4ddc
	ret			;4dde
sub_4ddfh:
	ld a,(iy+007h)		;4ddf
	and a			;4de2
	jr nz,l4de8h		;4de3
	or 0ffh		;4de5
	ret			;4de7
l4de8h:
	ld a,(0c01dh)		;4de8
	and a			;4deb
	jr z,l4df6h		;4dec
	inc (iy-03bh)		;4dee
	cp (iy-03bh)		;4df1
	jr c,l4dfch		;4df4
l4df6h:
	call sub_4c8ah		;4df6
	or 0ffh		;4df9
	ret			;4dfb
l4dfch:
	dec (iy-03bh)		;4dfc
	jr sub_4e1bh		;4dff
	ld a,(iy+007h)		;4e01
	cp 002h		;4e04
	jr z,l4e0ch		;4e06
	cp 004h		;4e08
	jr c,sub_4e1bh		;4e0a
l4e0ch:
	ld (iy-03bh),000h		;4e0c
	ld e,004h		;4e10
	call l3af1h		;4e12
	ld a,(iy+007h)		;4e15
	and a			;4e18
	jr nz,l4df6h		;4e19
sub_4e1bh:
	call 04c82h		;4e1b
	ld a,002h		;4e1e
l4e20h:
	jp sub_3bach		;4e20
sub_4e23h:
	push iy		;4e23
	pop hl			;4e25
	ld bc,00029h		;4e26
	add hl,bc			;4e29
	ret			;4e2a
	jp 0f03eh		;4e2b
	push bc			;4e2e
	push hl			;4e2f
	call l0c7fh		;4e30
	pop hl			;4e33
	pop bc			;4e34
	or 0ffh		;4e35
	ret			;4e37
sub_4e38h:
	ld de,0bf52h		;4e38
	ld a,l			;4e3b
	push hl			;4e3c
	di			;4e3d
	push de			;4e3e
	push af			;4e3f
	push de			;4e40
	ex de,hl			;4e41
	ld e,(hl)			;4e42
	inc hl			;4e43
	ld d,(hl)			;4e44
	ex de,hl			;4e45
	pop de			;4e46
	ld (hl),a			;4e47
	inc hl			;4e48
	push hl			;4e49
	ld hl,l0003h+1		;4e4a
	add hl,de			;4e4d
	push hl			;4e4e
l4e4fh:
	ld c,(hl)			;4e4f
	inc hl			;4e50
	ld b,(hl)			;4e51
l4e52h:
	pop hl			;4e52
	and a			;4e53
	pop hl			;4e54
	push hl			;4e55
	sbc hl,bc		;4e56
	pop hl			;4e58
	jp nz,l4e67h		;4e59
	ld hl,l0006h		;4e5c
	add hl,de			;4e5f
	push hl			;4e60
	ld c,(hl)			;4e61
	inc hl			;4e62
	ld b,(hl)			;4e63
	pop hl			;4e64
	push bc			;4e65
	pop hl			;4e66
l4e67h:
	push hl			;4e67
	push de			;4e68
	inc de			;4e69
	inc de			;4e6a
	call sub_0dd7h		;4e6b
	pop de			;4e6e
	and a			;4e6f
	sbc hl,bc		;4e70
	pop hl			;4e72
	jr nz,l4e78h		;4e73
	scf			;4e75
	jr l4e7dh		;4e76
l4e78h:
	ex de,hl			;4e78
	ld (hl),e			;4e79
	inc hl			;4e7a
	ld (hl),d			;4e7b
	and a			;4e7c
l4e7dh:
	pop de			;4e7d
	ld a,d			;4e7e
	pop de			;4e7f
	pop hl			;4e80
	jr c,l4ec6h		;4e81
	ld a,h			;4e83
	push de			;4e84
	push af			;4e85
	push de			;4e86
	ex de,hl			;4e87
	ld e,(hl)			;4e88
	inc hl			;4e89
	ld d,(hl)			;4e8a
	ex de,hl			;4e8b
	pop de			;4e8c
	ld (hl),a			;4e8d
	inc hl			;4e8e
	push hl			;4e8f
	ld hl,l0003h+1		;4e90
	add hl,de			;4e93
	push hl			;4e94
	ld c,(hl)			;4e95
	inc hl			;4e96
	ld b,(hl)			;4e97
	pop hl			;4e98
	and a			;4e99
	pop hl			;4e9a
	push hl			;4e9b
	sbc hl,bc		;4e9c
	pop hl			;4e9e
	jp nz,l4eadh		;4e9f
	ld hl,l0006h		;4ea2
	add hl,de			;4ea5
	push hl			;4ea6
	ld c,(hl)			;4ea7
	inc hl			;4ea8
	ld b,(hl)			;4ea9
	pop hl			;4eaa
	push bc			;4eab
	pop hl			;4eac
l4eadh:
	push hl			;4ead
	push de			;4eae
	inc de			;4eaf
	inc de			;4eb0
	call sub_0dd7h		;4eb1
	pop de			;4eb4
	and a			;4eb5
	sbc hl,bc		;4eb6
	pop hl			;4eb8
	jr nz,l4ebeh		;4eb9
	scf			;4ebb
	jr l4ec3h		;4ebc
l4ebeh:
	ex de,hl			;4ebe
	ld (hl),e			;4ebf
	inc hl			;4ec0
	ld (hl),d			;4ec1
	and a			;4ec2
l4ec3h:
	pop de			;4ec3
	ld a,d			;4ec4
	pop de			;4ec5
l4ec6h:
	ei			;4ec6
	ret			;4ec7
l4ec8h:
	ld a,(hl)			;4ec8
	and 07fh		;4ec9
	push bc			;4ecb
	push hl			;4ecc
	call l0c7fh		;4ecd
	pop hl			;4ed0
	pop bc			;4ed1
	ret c			;4ed2
	bit 7,(hl)		;4ed3
	inc bc			;4ed5
	inc hl			;4ed6
	jr z,l4ec8h		;4ed7
	ret			;4ed9
l4edah:
	ld a,(hl)			;4eda
	or a			;4edb
	jr z,l4eeah		;4edc
	push bc			;4ede
	push hl			;4edf
	call l0c7fh		;4ee0
	pop hl			;4ee3
	pop bc			;4ee4
	ret c			;4ee5
	inc bc			;4ee6
	inc hl			;4ee7
	jr l4edah		;4ee8
l4eeah:
	ld a,00dh		;4eea
	push bc			;4eec
	push hl			;4eed
	call l0c7fh		;4eee
	pop hl			;4ef1
	pop bc			;4ef2
	ret c			;4ef3
	inc bc			;4ef4
	inc hl			;4ef5
	ret			;4ef6
l4ef7h:
	ld de,0bf48h		;4ef7
	call sub_0d56h		;4efa
	push hl			;4efd
	ld hl,(0cee1h)		;4efe
	inc hl			;4f01
	ld (0cee1h),hl		;4f02
	pop hl			;4f05
	scf			;4f06
	ret			;4f07
sub_4f08h:
	ld a,(0c042h)		;4f08
	and 001h		;4f0b
	ret			;4f0d
	inc (ix-02bh)		;4f0e
	push hl			;4f11
	ld e,01dh		;4f12
	call 00561h		;4f14
	ld a,(hl)			;4f17
	pop hl			;4f18
	pop de			;4f19
	ret			;4f1a
l4f1bh:
	ld a,(0bfd4h)		;4f1b
	and a			;4f1e
	jp nz,l4884h		;4f1f
	ld a,(0c002h)		;4f22
	and a			;4f25
	jp z,l4884h		;4f26
	push iy		;4f29
	ld a,(0cbc7h)		;4f2b
	call sub_3dd6h		;4f2e
	call sub_4f37h		;4f31
	pop iy		;4f34
	ret			;4f36
sub_4f37h:
	ld a,(0c1f6h)		;4f37
	or a			;4f3a
	jr z,l4f4ch		;4f3b
	ld hl,0c05bh		;4f3d
	call sub_4faah		;4f40
l4f43h:
	jp c,l4884h		;4f43
	ld hl,0c1f6h		;4f46
	call sub_4fb8h		;4f49
l4f4ch:
	ld hl,0bfd4h		;4f4c
	ld a,(0c001h)		;4f4f
	and a			;4f52
	jr nz,l4f5ah		;4f53
	ld (hl),0ffh		;4f55
	jp l4884h		;4f57
l4f5ah:
	call l084eh		;4f5a
	jp l4884h		;4f5d
l4f60h:
	push iy		;4f60
	ld a,(0cbc7h)		;4f62
	call sub_3dd6h		;4f65
	call sub_4f6eh		;4f68
	pop iy		;4f6b
	ret			;4f6d
sub_4f6eh:
	ld hl,l4c70h		;4f6e
	call sub_4faah		;4f71
	jp c,l4884h		;4f74
	push bc			;4f77
	push de			;4f78
	ld de,0c003h		;4f79
	ld hl,0ca0dh		;4f7c
	push hl			;4f7f
	ld b,006h		;4f80
l4f82h:
	ld a,(de)			;4f82
	srl a		;4f83
	cp 020h		;4f85
	jr z,l4f8bh		;4f87
	ld (hl),a			;4f89
	inc hl			;4f8a
l4f8bh:
	inc de			;4f8b
	djnz l4f82h		;4f8c
	ld (hl),02fh		;4f8e
	inc hl			;4f90
	ld (hl),052h		;4f91
	inc hl			;4f93
	ld (hl),08dh		;4f94
	pop hl			;4f96
	pop de			;4f97
	pop bc			;4f98
	call sub_4fbfh		;4f99
	jp c,l4884h		;4f9c
	ld hl,0c272h		;4f9f
	res 1,(hl)		;4fa2
	call sub_086ch		;4fa4
	jp l4884h		;4fa7
sub_4faah:
	call sub_4cfdh		;4faa
	ret c			;4fad
	push bc			;4fae
	call 04e2ch		;4faf
	pop bc			;4fb2
	and a			;4fb3
	jr z,l4fb7h		;4fb4
	inc bc			;4fb6
l4fb7h:
	ret			;4fb7
sub_4fb8h:
	call l4edah		;4fb8
	jr c,l4fc8h		;4fbb
	jr l4fc4h		;4fbd
sub_4fbfh:
	call l4ec8h		;4fbf
	jr c,l4fc8h		;4fc2
l4fc4h:
	call l4d68h		;4fc4
	ret			;4fc7
l4fc8h:
	call sub_0d56h		;4fc8
	scf			;4fcb
	ret			;4fcc
	jp 09ca7h		;4fcd
	ld hl,(00233h)		;4fd0
	jp 03766h		;4fd3
	sbc a,b			;4fd6
	ld e,l			;4fd7
	ld c,e			;4fd8
	ld l,b			;4fd9
	add hl,bc			;4fda
	ld a,l			;4fdb
	ei			;4fdc
	nop			;4fdd
	push af			;4fde
	push bc			;4fdf
	push de			;4fe0
	push hl			;4fe1
	in a,(019h)		;4fe2
	ld hl,0ced9h		;4fe4
	ld b,(hl)			;4fe7
	ld c,a			;4fe8
	ld (hl),a			;4fe9
	xor b			;4fea
	ld b,a			;4feb
	bit 7,b		;4fec
	jp z,l4ffbh		;4fee
	bit 7,c		;4ff1
	jp z,l4ffbh		;4ff3
	ld hl,0c274h		;4ff6
	set 2,(hl)		;4ff9
l4ffbh:
	bit 4,b		;4ffb
	jp z,l5010h		;4ffd
	bit 4,c		;5000
	jr nz,l5010h		;5002
	push bc			;5004
	call sub_522ah		;5005
	ld e,003h		;5008
	ld a,0c9h		;500a
	call sub_0504h		;500c
	pop bc			;500f
l5010h:
	bit 3,b		;5010
	jp z,l5027h		;5012
	bit 3,c		;5015
	jr nz,l5027h		;5017
	push bc			;5019
	ld hl,0bfa8h		;501a
	call l084eh		;501d
	ld hl,0bfa9h		;5020
	call l084eh		;5023
	pop bc			;5026
l5027h:
	bit 6,b		;5027
	jr z,l504ch		;5029
	bit 6,c		;502b
	jr z,l504ch		;502d
	ld hl,(0cbd1h)		;502f
	ld a,h			;5032
	or l			;5033
	jp nz,l5041h		;5034
	ld hl,(0cedfh)		;5037
	inc hl			;503a
	ld (0cedfh),hl		;503b
	jp l504ch		;503e
l5041h:
	ld a,008h		;5041
	out (019h),a		;5043
	ld hl,(0cef5h)		;5045
	inc hl			;5048
	ld (0cef5h),hl		;5049
l504ch:
	ld a,010h		;504c
	out (019h),a		;504e
	jp l5206h		;5050
	ld de,l00fbh		;5053
l5056h:
	push af			;5056
	push bc			;5057
	push de			;5058
	push hl			;5059
	ld de,0bf20h		;505a
	ld hl,(0c276h)		;505d
	ld a,h			;5060
	or l			;5061
	jp nz,l506ah		;5062
	push hl			;5065
	call sub_0d39h		;5066
	pop hl			;5069
l506ah:
	in a,(018h)		;506a
	inc hl			;506c
	ld (0c276h),hl		;506d
	ld bc,0feb6h		;5070
	add hl,bc			;5073
	jr c,l5099h		;5074
	ld hl,(0bf20h)		;5076
	ld (hl),a			;5079
	ex de,hl			;507a
	inc de			;507b
	ld hl,(0bf24h)		;507c
	and a			;507f
	sbc hl,de		;5080
	jr nz,l5088h		;5082
	ld de,(0bf26h)		;5084
l5088h:
	ld hl,(0bf22h)		;5088
	and a			;508b
	sbc hl,de		;508c
	scf			;508e
	jr z,l5096h		;508f
	ld (0bf20h),de		;5091
	and a			;5095
l5096h:
	jp nc,l5206h		;5096
l5099h:
	ld hl,0c274h		;5099
	set 2,(hl)		;509c
	jp l5206h		;509e
	push af			;50a1
	push bc			;50a2
	push de			;50a3
	push hl			;50a4
	ld e,001h		;50a5
	call sub_0521h		;50a7
	bit 5,a		;50aa
	jp z,l50bbh		;50ac
	ld hl,0c274h		;50af
	set 2,(hl)		;50b2
	ld hl,(0cef7h)		;50b4
	inc hl			;50b7
	ld (0cef7h),hl		;50b8
l50bbh:
	bit 7,a		;50bb
	jp z,l5140h		;50bd
	ld b,a			;50c0
	ld a,04eh		;50c1
	ld hl,0c042h		;50c3
	bit 2,(hl)		;50c6
	jr z,l50cch		;50c8
	ld a,00eh		;50ca
l50cch:
	and b			;50cc
	cp 006h		;50cd
	jp nz,l5136h		;50cf
	ld a,(0c274h)		;50d2
	and 004h		;50d5
	jp nz,l5136h		;50d7
	ld de,0bf3eh		;50da
	ld hl,(0c276h)		;50dd
	ld a,l			;50e0
	push hl			;50e1
	ld hl,(0bf3eh)		;50e2
	ld (hl),a			;50e5
	ex de,hl			;50e6
	inc de			;50e7
	ld hl,(0bf42h)		;50e8
	and a			;50eb
	sbc hl,de		;50ec
	jr nz,l50f4h		;50ee
	ld de,(0bf44h)		;50f0
l50f4h:
	ld hl,(0bf40h)		;50f4
	and a			;50f7
	sbc hl,de		;50f8
	scf			;50fa
	jr z,l5102h		;50fb
	ld (0bf3eh),de		;50fd
l5101h:
	and a			;5101
l5102h:
	pop hl			;5102
	jr c,l5136h		;5103
	ld a,h			;5105
	ld hl,(0bf3eh)		;5106
	ld (hl),a			;5109
	ex de,hl			;510a
	inc de			;510b
	ld hl,(0bf42h)		;510c
	and a			;510f
	sbc hl,de		;5110
	jr nz,l5118h		;5112
	ld de,(0bf44h)		;5114
l5118h:
	ld hl,(0bf40h)		;5118
	and a			;511b
	sbc hl,de		;511c
	scf			;511e
	jr z,l5126h		;511f
	ld (0bf3eh),de		;5121
	and a			;5125
l5126h:
	ld hl,l0000h		;5126
	ld (0c276h),hl		;5129
	ld hl,(0ceddh)		;512c
	inc hl			;512f
	ld (0ceddh),hl		;5130
	jp l5140h		;5133
l5136h:
	call sub_522ah		;5136
	ld hl,(0cee5h)		;5139
	inc hl			;513c
	ld (0cee5h),hl		;513d
l5140h:
	ld a,030h		;5140
	out (019h),a		;5142
	nop			;5144
	nop			;5145
	in a,(018h)		;5146
	jp l5206h		;5148
	ld (ix-005h),000h		;514b
l514fh:
	push af			;514f
	push bc			;5150
	push de			;5151
	push hl			;5152
	ld hl,(0cbd1h)		;5153
	ld a,l			;5156
	or h			;5157
	jr z,l518ah		;5158
	dec hl			;515a
	ld (0cbd1h),hl		;515b
l515eh:
	ld a,l			;515e
	or h			;515f
	jp nz,l516ch		;5160
	ld a,0c0h		;5163
	out (019h),a		;5165
	ld hl,0ced9h		;5167
	res 6,(hl)		;516a
l516ch:
	ld de,0bf48h		;516c
	ld hl,(0bf4ah)		;516f
	ld a,(hl)			;5172
	ex de,hl			;5173
	inc de			;5174
	ld hl,(0bf4ch)		;5175
	and a			;5178
	sbc hl,de		;5179
	jr nz,l5181h		;517b
	ld de,(0bf4eh)		;517d
l5181h:
	ld (0bf4ah),de		;5181
	out (018h),a		;5185
	jp l5206h		;5187
l518ah:
	ld a,(0ced9h)		;518a
	and 040h		;518d
	jr z,l51a6h		;518f
	ld hl,0c274h		;5191
	di			;5194
	ld a,018h		;5195
	or (hl)			;5197
	ei			;5198
	ld (hl),a			;5199
	ld hl,0bfaeh		;519a
	call l084eh		;519d
	ld hl,0bfa8h		;51a0
	call l084eh		;51a3
l51a6h:
	ld a,028h		;51a6
	out (019h),a		;51a8
	jp l5206h		;51aa
sub_51adh:
	ld de,0bf52h		;51ad
	ld hl,(0bf54h)		;51b0
	ld a,(hl)			;51b3
	ex de,hl			;51b4
	inc de			;51b5
	ld hl,(0bf56h)		;51b6
	and a			;51b9
	sbc hl,de		;51ba
	jr nz,l51c2h		;51bc
	ld de,(0bf58h)		;51be
l51c2h:
	ld (0bf54h),de		;51c2
	ld l,a			;51c6
	push hl			;51c7
	ld hl,(0bf54h)		;51c8
	ld a,(hl)			;51cb
	ex de,hl			;51cc
	inc de			;51cd
	ld hl,(0bf56h)		;51ce
	and a			;51d1
	sbc hl,de		;51d2
	jr nz,l51dah		;51d4
	ld de,(0bf58h)		;51d6
l51dah:
	ld (0bf54h),de		;51da
	pop hl			;51de
	ld h,a			;51df
	dec hl			;51e0
	ld (0cbd1h),hl		;51e1
	ld a,080h		;51e4
	di			;51e6
	out (019h),a		;51e7
	ld de,0bf48h		;51e9
	ld hl,(0bf4ah)		;51ec
	ld a,(hl)			;51ef
	ex de,hl			;51f0
	inc de			;51f1
	ld hl,(0bf4ch)		;51f2
	and a			;51f5
	sbc hl,de		;51f6
	jr nz,l51feh		;51f8
	ld de,(0bf4eh)		;51fa
l51feh:
	ld (0bf4ah),de		;51fe
	ei			;5202
	out (018h),a		;5203
	ret			;5205
l5206h:
	pop hl			;5206
	pop de			;5207
	pop bc			;5208
	pop af			;5209
	ei			;520a
	nop			;520b
	reti		;520c
	ret			;520e
sub_520fh:
	ld a,(0c032h)		;520f
	ld (0cedbh),a		;5212
	ld e,002h		;5215
l5217h:
	ld d,0fdh		;5217
	jp l55f6h		;5219
sub_521ch:
	xor a			;521c
	ld (0cedbh),a		;521d
	ld e,000h		;5220
	jr l5217h		;5222
sub_5224h:
	ld a,(0ced9h)		;5224
	and 008h		;5227
	ret			;5229
sub_522ah:
	ld hl,(0c276h)		;522a
	ld a,h			;522d
	or l			;522e
	jr z,l523dh		;522f
	ld de,0bf20h		;5231
	call sub_0d56h		;5234
	ld hl,l0000h		;5237
	ld (0c276h),hl		;523a
l523dh:
	call sub_5241h		;523d
	ret			;5240
sub_5241h:
	ld hl,0c274h		;5241
	res 2,(hl)		;5244
l5246h:
	ret			;5246
sub_5247h:
	ex (sp),hl			;5247
	push af			;5248
	push bc			;5249
	push de			;524a
	push hl			;524b
	ret			;524c
sub_524dh:
	pop hl			;524d
	pop de			;524e
	pop bc			;524f
	pop af			;5250
	ex (sp),hl			;5251
	ret			;5252
	ld de,l5056h		;5253
	ld hl,l514fh		;5256
	ld ix,04fe6h		;5259
	ld iy,050a8h		;525d
	ld bc,l0a01h		;5261
	nop			;5264
	ldir		;5265
	ret			;5267
	ld (ix-033h),01ch		;5268
	inc b			;526c
	ld hl,l5666h		;526d
	ld de,0bf3eh		;5270
	call 05262h		;5273
	ld hl,l5648h		;5276
	ld de,0bf20h		;5279
	call 05262h		;527c
	ld hl,l5670h		;527f
	ld de,0bf48h		;5282
	call 05262h		;5285
	ld hl,l567ah		;5288
	ld de,0bf52h		;528b
	call 05262h		;528e
	ld hl,l0000h		;5291
	ld (0c276h),hl		;5294
	ld hl,0c274h		;5297
	set 2,(hl)		;529a
	ld a,(0c274h)		;529c
	and 0e7h		;529f
	ld (0c274h),a		;52a1
	xor a			;52a4
	ld (0cedch),a		;52a5
	ei			;52a8
	ret			;52a9
	ld (0f5fbh),a		;52aa
	push bc			;52ad
	push de			;52ae
	push hl			;52af
	ld hl,0cedah		;52b0
	ld a,(hl)			;52b3
	ld b,a			;52b4
	in a,(01bh)		;52b5
	ld c,a			;52b7
	ld (hl),a			;52b8
	xor b			;52b9
	ld b,a			;52ba
	and 080h		;52bb
	jr z,l52ddh		;52bd
	in a,(01ah)		;52bf
	bit 7,c		;52c1
	jr nz,l52ddh		;52c3
	ld a,(0c273h)		;52c5
	bit 7,a		;52c8
	jr nz,l52ddh		;52ca
	push bc			;52cc
	call l11f5h		;52cd
	push iy		;52d0
	call sub_1ae7h		;52d2
	pop iy		;52d5
	pop bc			;52d7
	ld hl,0c274h		;52d8
	set 0,(hl)		;52db
l52ddh:
	ld a,010h		;52dd
	out (01bh),a		;52df
	jp l5352h		;52e1
	ld (0f5fbh),a		;52e4
	push bc			;52e7
	push de			;52e8
	push hl			;52e9
	call sub_55fdh		;52ea
	ld hl,0c275h		;52ed
	ld a,(hl)			;52f0
	jr z,l5307h		;52f1
	bit 4,a		;52f3
	jr z,l5307h		;52f5
	res 4,(hl)		;52f7
	and 008h		;52f9
	jr nz,l5302h		;52fb
	ld a,(0c02fh)		;52fd
	jr l5347h		;5300
l5302h:
	ld a,(0c02eh)		;5302
	jr l5347h		;5305
l5307h:
	ld hl,0cb8ah		;5307
	ld a,(hl)			;530a
	and a			;530b
	jr z,l5312h		;530c
	dec (hl)			;530e
	xor a			;530f
	jr l5347h		;5310
l5312h:
	ld de,0bf5ch		;5312
	call l0d43h		;5315
	jr nc,l531fh		;5318
	call l0cc2h		;531a
	jr l5347h		;531d
l531fh:
	ld de,0bf34h		;531f
	call l0d43h		;5322
	jr c,l532eh		;5325
l5327h:
	ld hl,0c274h		;5327
	res 5,(hl)		;532a
	jr l534eh		;532c
l532eh:
	call sub_5565h		;532e
	jr nz,l5327h		;5331
	ld a,(0c275h)		;5333
	and 001h		;5336
	jr nz,l5327h		;5338
	ld de,0bf34h		;533a
	call l0cc2h		;533d
	ld hl,0bf16h		;5340
	bit 3,(hl)		;5343
	jr nz,l5327h		;5345
l5347h:
	out (01ah),a		;5347
sub_5349h:
	call sub_5550h		;5349
	jr l5352h		;534c
l534eh:
	ld a,028h		;534e
	out (01bh),a		;5350
l5352h:
	pop hl			;5352
	pop de			;5353
	pop bc			;5354
	pop af			;5355
	ei			;5356
	reti		;5357
	jp (ix)		;5359
	ei			;535b
	push af			;535c
	push bc			;535d
	push de			;535e
	push hl			;535f
l5360h:
	in a,(01ah)		;5360
	ld hl,0c273h		;5362
	bit 7,(hl)		;5365
	jr nz,l536dh		;5367
	bit 6,(hl)		;5369
	jr nz,l538eh		;536b
l536dh:
	ld b,a			;536d
	ld a,(0c045h)		;536e
	and 004h		;5371
	ld a,b			;5373
	jr nz,l5378h		;5374
	and 07fh		;5376
l5378h:
	and a			;5378
	jp z,l5474h		;5379
	ld hl,0bf16h		;537c
	bit 1,(hl)		;537f
	res 1,(hl)		;5381
	jr nz,l53c6h		;5383
	call sub_54a4h		;5385
	jp z,l5474h		;5388
	jp l53aeh		;538b
l538eh:
	ld b,a			;538e
	ld a,(0cedah)		;538f
	and 080h		;5392
	jp nz,l5474h		;5394
	ld a,(0c045h)		;5397
	and 002h		;539a
	ld a,b			;539c
	jr z,l53a5h		;539d
	call sub_54a4h		;539f
	jp z,l5474h		;53a2
l53a5h:
	call sub_1230h		;53a5
	jp c,l53f1h		;53a8
	jp l5474h		;53ab
l53aeh:
	ld b,a			;53ae
	ld a,(0c02ah)		;53af
	cp b			;53b2
	ld a,b			;53b3
	jp nz,l53bch		;53b4
	ld hl,0bf16h		;53b7
	set 1,(hl)		;53ba
l53bch:
	ld b,a			;53bc
	push bc			;53bd
	call sub_1230h		;53be
	pop bc			;53c1
	ld a,b			;53c2
	jp nc,l5474h		;53c3
l53c6h:
	push af			;53c6
	ld de,0bf66h		;53c7
	ld hl,(0bf66h)		;53ca
	ld (hl),a			;53cd
	ex de,hl			;53ce
	inc de			;53cf
	ld hl,(0bf6ah)		;53d0
	and a			;53d3
	sbc hl,de		;53d4
	jr nz,l53dch		;53d6
	ld de,(0bf6ch)		;53d8
l53dch:
	ld hl,(0bf68h)		;53dc
	and a			;53df
	sbc hl,de		;53e0
	scf			;53e2
	jr z,l53eah		;53e3
	ld (0bf66h),de		;53e5
	and a			;53e9
l53eah:
	pop bc			;53ea
	ld a,b			;53eb
	jr nc,l53f1h		;53ec
	ld (0cb9ah),a		;53ee
l53f1h:
	ld hl,0c273h		;53f1
	bit 7,(hl)		;53f4
	jr nz,l541ah		;53f6
	ld hl,(0bf2ah)		;53f8
	ld (hl),a			;53fb
	ex de,hl			;53fc
	inc de			;53fd
	ld hl,(0bf2eh)		;53fe
	and a			;5401
	sbc hl,de		;5402
	jr nz,l540ah		;5404
	ld de,(0bf30h)		;5406
l540ah:
	ld hl,(0bf2ch)		;540a
	and a			;540d
	sbc hl,de		;540e
	scf			;5410
	jr z,l5418h		;5411
	ld (0bf2ah),de		;5413
	and a			;5417
l5418h:
	jr l5450h		;5418
l541ah:
	ld b,a			;541a
	ld a,(0c027h)		;541b
	cp b			;541e
	ld a,b			;541f
	jp nz,l5430h		;5420
	and a			;5423
	jr z,l5430h		;5424
	ld hl,0bf16h		;5426
	ld a,008h		;5429
	xor (hl)			;542b
	ld (hl),a			;542c
	jp l5474h		;542d
l5430h:
	ld hl,(0bf70h)		;5430
	ld (hl),a			;5433
	ex de,hl			;5434
	inc de			;5435
	ld hl,(0bf74h)		;5436
	and a			;5439
	sbc hl,de		;543a
	jr nz,l5442h		;543c
	ld de,(0bf76h)		;543e
l5442h:
	ld hl,(0bf72h)		;5442
sub_5445h:
	and a			;5445
	sbc hl,de		;5446
	scf			;5448
l5449h:
	jr z,l5450h		;5449
	ld (0bf70h),de		;544b
sub_544fh:
	and a			;544f
l5450h:
	jr c,l5474h		;5450
	ld hl,0c273h		;5452
	bit 7,(hl)		;5455
	jr nz,l5462h		;5457
	ld de,(0bf2ah)		;5459
	ld hl,(0bf32h)		;545d
	jr l5469h		;5460
l5462h:
	ld hl,(0bf70h)		;5462
	ld de,(0bf78h)		;5465
l5469h:
	and a			;5469
	sbc hl,de		;546a
	jp nz,l5474h		;546c
	di			;546f
	call sub_55ach		;5470
	ei			;5473
l5474h:
	ei			;5474
	in a,(01bh)		;5475
	and 001h		;5477
	jp nz,l5360h		;5479
	pop hl			;547c
	pop de			;547d
	pop bc			;547e
	pop af			;547f
	reti		;5480
	jp 0f5fbh		;5482
	push bc			;5485
	push de			;5486
	push hl			;5487
	ld e,001h		;5488
	call sub_051dh		;548a
	ex af,af'			;548d
	ld a,030h		;548e
	out (01bh),a		;5490
	ex af,af'			;5492
	and 020h		;5493
	jp z,l549fh		;5495
	ld hl,(0cef9h)		;5498
	inc hl			;549b
	ld (0cef9h),hl		;549c
l549fh:
	in a,(01ah)		;549f
	jp l5352h		;54a1
sub_54a4h:
	ld b,a			;54a4
	ld a,(0c02dh)		;54a5
	ld c,a			;54a8
	ld a,(0c02ch)		;54a9
	ld e,a			;54ac
	or c			;54ad
	ld hl,0c275h		;54ae
	ld a,(hl)			;54b1
	jr nz,l54b8h		;54b2
	or 0ffh		;54b4
	ld a,b			;54b6
	ret			;54b7
l54b8h:
	ld a,(0c02dh)		;54b8
	cp b			;54bb
	jr nz,l54cah		;54bc
	bit 5,(hl)		;54be
	jr nz,l54c6h		;54c0
	ld a,e			;54c2
	cp b			;54c3
	jr z,l54ceh		;54c4
l54c6h:
	res 5,(hl)		;54c6
	xor a			;54c8
	ret			;54c9
l54cah:
	ld a,e			;54ca
	cp b			;54cb
	ld a,b			;54cc
	ret nz			;54cd
l54ceh:
	set 5,(hl)		;54ce
	ret			;54d0
sub_54d1h:
	ld a,(0cba5h)		;54d1
	bit 7,a		;54d4
	ret z			;54d6
	ld hl,0c274h		;54d7
	bit 5,(hl)		;54da
	ret nz			;54dc
	di			;54dd
	push hl			;54de
	inc hl			;54df
	ld a,(hl)			;54e0
	bit 4,a		;54e1
	jr z,l54feh		;54e3
	and 01ch		;54e5
	cp 014h		;54e7
	jr nz,l54f0h		;54e9
	ld a,(0c02fh)		;54eb
	jr l54f7h		;54ee
l54f0h:
	cp 01ch		;54f0
	jr nz,l54feh		;54f2
	ld a,(0c02eh)		;54f4
l54f7h:
	res 4,(hl)		;54f7
	pop hl			;54f9
	set 5,(hl)		;54fa
	jr l5548h		;54fc
l54feh:
	ld hl,0cb8ah		;54fe
	ld a,(hl)			;5501
	and a			;5502
	jr z,l5509h		;5503
	dec (hl)			;5505
	xor a			;5506
	jr l5514h		;5507
l5509h:
	ld de,0bf5ch		;5509
	call l0d43h		;550c
	jr nc,l5519h		;550f
	call l0cc2h		;5511
l5514h:
	pop hl			;5514
	set 5,(hl)		;5515
	jr l5548h		;5517
l5519h:
	ld de,0bf34h		;5519
	call l0d43h		;551c
	pop hl			;551f
	jr c,l5527h		;5520
	ld e,003h		;5522
	jp l3af1h		;5524
l5527h:
	push hl			;5527
	call sub_5565h		;5528
	pop hl			;552b
	ret nz			;552c
	ld a,(0c275h)		;552d
	and 001h		;5530
	ret nz			;5532
	push hl			;5533
	call l0cc2h		;5534
	pop hl			;5537
	ld b,a			;5538
	ld a,04eh		;5539
	out (0f1h),a		;553b
	ei			;553d
	ld a,(0bf16h)		;553e
l5541h:
	bit 3,a		;5541
	ld a,b			;5543
	jr nz,sub_54d1h		;5544
	set 5,(hl)		;5546
l5548h:
	ld b,a			;5548
	call sub_5550h		;5549
	ld a,b			;554c
	out (01ah),a		;554d
l554fh:
	ret			;554f
sub_5550h:
	ld hl,0c042h		;5550
	bit 4,(hl)		;5553
	jr z,l555ch		;5555
	cp 00dh		;5557
	jp z,l43b9h		;5559
l555ch:
	bit 5,(hl)		;555c
	ret z			;555e
	cp 00ah		;555f
	ret nz			;5561
	jp l43b9h		;5562
sub_5565h:
	in a,(01bh)		;5565
	and 001h		;5567
	ret nz			;5569
	push de			;556a
	ld de,0bf66h		;556b
	call l0d43h		;556e
	jr nc,l5577h		;5571
	pop de			;5573
	or 001h		;5574
	ret			;5576
l5577h:
	pop de			;5577
	ld a,(0c273h)		;5578
	and 010h		;557b
	ld a,(0c275h)		;557d
	jr z,l5585h		;5580
	bit 6,a		;5582
	ret nz			;5584
l5585h:
	call sub_559ch		;5585
	ret nz			;5588
	push bc			;5589
	ld a,(0c275h)		;558a
	ld b,a			;558d
	ld a,(0c02ch)		;558e
	ld c,a			;5591
	ld a,(0c02dh)		;5592
	or c			;5595
	ld a,b			;5596
	pop bc			;5597
	ret z			;5598
	bit 5,a		;5599
	ret			;559b
sub_559ch:
	in a,(01bh)		;559c
	cpl			;559e
	and 020h		;559f
	ret			;55a1
sub_55a2h:
	cp 00dh		;55a2
	ret nz			;55a4
	ld a,(0c274h)		;55a5
	cpl			;55a8
	and 002h		;55a9
	ret			;55ab
sub_55ach:
	ld e,000h		;55ac
	call sub_55ech		;55ae
	ld hl,0c275h		;55b1
	ld a,(hl)			;55b4
	set 3,(hl)		;55b5
	call sub_55fdh		;55b7
	ld hl,0c275h		;55ba
	jr z,l55c7h		;55bd
	ld a,(hl)			;55bf
	or 018h		;55c0
	jr l55c4h		;55c2
l55c4h:
	ld (0c275h),a		;55c4
l55c7h:
	ret			;55c7
sub_55c8h:
	ld e,002h		;55c8
	call sub_55ech		;55ca
	ld hl,0c275h		;55cd
	ld a,(hl)			;55d0
	bit 3,(hl)		;55d1
	jr z,l55e7h		;55d3
	call sub_55fdh		;55d5
	ld hl,0c275h		;55d8
	di			;55db
	ld a,(hl)			;55dc
	jr nz,l55e3h		;55dd
	and 0e7h		;55df
	jr l55e7h		;55e1
l55e3h:
	and 0e7h		;55e3
	or 010h		;55e5
l55e7h:
	ei			;55e7
	ld (0c275h),a		;55e8
	ret			;55eb
sub_55ech:
	ld d,0fdh		;55ec
l55eeh:
	ld hl,0bf0fh		;55ee
	ld c,01bh		;55f1
l55f3h:
	jp l053ah		;55f3
l55f6h:
	ld hl,0bf0eh		;55f6
	ld c,019h		;55f9
	jr l55f3h		;55fb
sub_55fdh:
	ld hl,0c275h		;55fd
	bit 2,(hl)		;5600
	ret z			;5602
	ld a,(0c273h)		;5603
	ld b,a			;5606
	cpl			;5607
	rrca			;5608
	xor b			;5609
	bit 6,a		;560a
	ret nz			;560c
	ld a,(0c042h)		;560d
	bit 1,a		;5610
	ret			;5612
sub_5613h:
	ld d,07fh		;5613
	jr l55eeh		;5615
sub_5617h:
	ld d,07fh		;5617
	jr l55f6h		;5619
	call l0000h		;561b
	nop			;561e
	nop			;561f
	nop			;5620
	nop			;5621
	ld a,b			;5622
	cp h			;5623
	ld a,b			;5624
	cp h			;5625
	ld a,b			;5626
	cp (hl)			;5627
	ld a,b			;5628
	cp h			;5629
	nop			;562a
	nop			;562b
	ld a,b			;562c
	cp (hl)			;562d
	ld a,b			;562e
	cp (hl)			;562f
	call p,sub_78beh		;5630
	cp (hl)			;5633
	nop			;5634
	nop			;5635
	ld l,c			;5636
	ld l,d			;5637
	ld bc,l0101h		;5638
	ld bc,00100h		;563b
	nop			;563e
	nop			;563f
	nop			;5640
	nop			;5641
	ld bc,l0101h		;5642
	ld bc,l0101h		;5645
l5648h:
	pop bc			;5648
	ret nc			;5649
	pop bc			;564a
	ret nc			;564b
	pop bc			;564c
	rst 10h			;564d
	pop bc			;564e
	ret nc			;564f
	nop			;5650
	nop			;5651
	pop bc			;5652
	rst 10h			;5653
	pop bc			;5654
	rst 10h			;5655
	rst 8			;5656
	jp c,0d7c1h		;5657
	rst 8			;565a
	exx			;565b
	rst 8			;565c
	jp c,0dacfh		;565d
	ld b,c			;5660
	call po,0dacfh		;5661
	nop			;5664
	nop			;5665
l5666h:
	ld b,c			;5666
	call po,0e441h		;5667
	add a,b			;566a
	call po,0e441h		;566b
	nop			;566e
	nop			;566f
l5670h:
	add a,b			;5670
	call po,0e480h		;5671
	call po,080ebh		;5674
	call po,l0000h		;5677
l567ah:
	call po,0e4ebh		;567a
	ex de,hl			;567d
	inc hl			;567e
	call pe,0ebe4h		;567f
	nop			;5682
	nop			;5683
	inc hl			;5684
	call pe,0ec23h		;5685
	ld h,e			;5688
	call pe,0ec23h		;5689
	nop			;568c
	nop			;568d
	ld h,e			;568e
	call pe,0ec63h		;568f
	ex (sp),hl			;5692
	call pe,0ec63h		;5693
	nop			;5696
	nop			;5697
	ex (sp),hl			;5698
	call pe,0ece3h		;5699
	ld a,c			;569c
	defb 0edh;next byte illegal after ed		;569d
	ex (sp),hl			;569e
	call pe,0ed6fh		;569f
	nop			;56a2
	ld bc,l0103h		;56a3
	ld (bc),a			;56a6
	nop			;56a7
	nop			;56a8
	ld (bc),a			;56a9
	inc bc			;56aa
	ld bc,l0101h		;56ab
	ld bc,l0101h		;56ae
	ld bc,l0101h		;56b1
	ld bc,l0301h		;56b4
	inc bc			;56b7
	inc bc			;56b8
	inc bc			;56b9
	inc bc			;56ba
	inc bc			;56bb
	inc bc			;56bc
	inc bc			;56bd
	inc bc			;56be
	inc bc			;56bf
	inc bc			;56c0
	nop			;56c1
	ld (bc),a			;56c2
	ld (bc),a			;56c3
	ld (bc),a			;56c4
	ld (bc),a			;56c5
	ld (bc),a			;56c6
	ld (bc),a			;56c7
	ld (bc),a			;56c8
	ld (bc),a			;56c9
	ld (bc),a			;56ca
	ld (bc),a			;56cb
	ld (bc),a			;56cc
	inc bc			;56cd
	inc bc			;56ce
	rst 38h			;56cf
	nop			;56d0
	nop			;56d1
	nop			;56d2
	nop			;56d3
	nop			;56d4
	nop			;56d5
	nop			;56d6
	nop			;56d7
	nop			;56d8
	nop			;56d9
	nop			;56da
	nop			;56db
	nop			;56dc
	nop			;56dd
	nop			;56de
	nop			;56df
	nop			;56e0
	nop			;56e1
	nop			;56e2
	nop			;56e3
	nop			;56e4
	nop			;56e5
	nop			;56e6
	nop			;56e7
	nop			;56e8
	nop			;56e9
	nop			;56ea
	nop			;56eb
	nop			;56ec
	nop			;56ed
	nop			;56ee
	add hl,de			;56ef
	nop			;56f0
	nop			;56f1
	nop			;56f2
	nop			;56f3
	nop			;56f4
	nop			;56f5
	nop			;56f6
	nop			;56f7
	nop			;56f8
	nop			;56f9
	nop			;56fa
	ld bc,0ff00h		;56fb
	djnz l5700h		;56fe
l5700h:
	nop			;5700
	ld a,(bc)			;5701
	ld bc,l061eh		;5702
	ld bc,l0539h		;5705
	dec b			;5708
	dec b			;5709
	dec b			;570a
	dec b			;570b
	dec b			;570c
	dec b			;570d
	dec b			;570e
	dec b			;570f
	dec b			;5710
	dec b			;5711
	ld e,01eh		;5712
	ld e,01eh		;5714
	ld e,01eh		;5716
	ld e,01eh		;5718
	ld e,01eh		;571a
	ld e,019h		;571c
	nop			;571e
	nop			;571f
	nop			;5720
	nop			;5721
	nop			;5722
	nop			;5723
	nop			;5724
	nop			;5725
	nop			;5726
	nop			;5727
	nop			;5728
	ld bc,09c00h		;5729
	sbc a,(hl)			;572c
	add a,(hl)			;572d
	add a,d			;572e
	sbc a,b			;572f
	sbc a,b			;5730
	ld h,b			;5731
	nop			;5732
	ld b,b			;5733
	ld b,b			;5734
	ld b,b			;5735
	ld b,b			;5736
	ld b,b			;5737
	ld b,b			;5738
	ld h,b			;5739
	nop			;573a
	ld b,b			;573b
	ld b,b			;573c
	ld b,b			;573d
	ld b,b			;573e
	ld b,b			;573f
	ld b,b			;5740
	ld h,b			;5741
	nop			;5742
	inc bc			;5743
	ld h,b			;5744
	ld a,(bc)			;5745
	nop			;5746
	ld (bc),a			;5747
	rlca			;5748
	inc bc			;5749
	nop			;574a
	ld a,h			;574b
	ld bc,l180dh		;574c
	add hl,de			;574f
	inc bc			;5750
	ex af,af'			;5751
	ld d,012h		;5752
	inc de			;5754
	ld de,l1113h		;5755
	nop			;5758
	nop			;5759
	inc a			;575a
	ld a,a			;575b
	jr nz,l575fh		;575c
	ex af,af'			;575e
l575fh:
	nop			;575f
	add a,b			;5760
	dec h			;5761
	or b			;5762
	inc b			;5763
	nop			;5764
	nop			;5765
	nop			;5766
	nop			;5767
	nop			;5768
	nop			;5769
	add hl,bc			;576a
	ld l,d			;576b
	ld b,h			;576c
	nop			;576d
	jr nz,l5770h		;576e
l5770h:
	nop			;5770
	adc a,l			;5771
	nop			;5772
	nop			;5773
	nop			;5774
	nop			;5775
	nop			;5776
	nop			;5777
	nop			;5778
	nop			;5779
	nop			;577a
	nop			;577b
	nop			;577c
	nop			;577d
	nop			;577e
	nop			;577f
	nop			;5780
	nop			;5781
	nop			;5782
	add a,(hl)			;5783
	and d			;5784
	ld b,b			;5785
	ld b,b			;5786
	ld b,b			;5787
	ld b,b			;5788
	ld h,b			;5789
	nop			;578a
l578bh:
	rlca			;578b
	nop			;578c
	dec sp			;578d
	ld (bc),a			;578e
	inc b			;578f
l5790h:
	inc bc			;5790
	nop			;5791
	sbc a,c			;5792
	ld (bc),a			;5793
	inc b			;5794
	nop			;5795
	nop			;5796
	nop			;5797
	ld hl,l579dh		;5798
	jp (hl)			;579b
l579ch:
	push hl			;579c
l579dh:
	ld d,d			;579d
	xor e			;579e
	ld d,d			;579f
	ld e,e			;57a0
	ld d,e			;57a1
	add a,e			;57a2
	ld d,h			;57a3
	ld c,l			;57a4
	ld d,c			;57a5
	call c,sub_544fh		;57a6
	ld d,b			;57a9
	and c			;57aa
	ld d,b			;57ab
	ld a,(bc)			;57ac
	inc b			;57ad
	or (hl)			;57ae
	dec b			;57af
	or (hl)			;57b0
	dec b			;57b1
	or (hl)			;57b2
	dec b			;57b3
l57b4h:
	ld b,(hl)			;57b4
	ld d,d			;57b5
	ld c,l			;57b6
	ld d,d			;57b7
	jr nz,l582dh		;57b8
	ld h,l			;57ba
	ld l,(hl)			;57bb
	ld (hl),h			;57bc
	cp d			;57bd
	nop			;57be
	nop			;57bf
	nop			;57c0
	nop			;57c1
	nop			;57c2
	nop			;57c3
	nop			;57c4
	nop			;57c5
	nop			;57c6
	nop			;57c7
l57c8h:
	ld b,(hl)			;57c8
	ld d,d			;57c9
	ld c,l			;57ca
	ld d,d			;57cb
	jr nz,l5840h		;57cc
	ld h,e			;57ce
	halt			;57cf
	ld h,h			;57d0
	ld a,(l008dh)		;57d1
	nop			;57d4
	nop			;57d5
	nop			;57d6
	nop			;57d7
	nop			;57d8
	nop			;57d9
	nop			;57da
	nop			;57db
	nop			;57dc
l57ddh:
	ld h,e			;57dd
	ld l,a			;57de
	ld l,(hl)			;57df
	ld l,(hl)			;57e0
	ld h,l			;57e1
	ld h,e			;57e2
	ld (hl),h			;57e3
	jr nz,l5858h		;57e4
	ld h,l			;57e6
	ld (hl),c			;57e7
	ld (hl),l			;57e8
	ld h,l			;57e9
	ld (hl),e			;57ea
	ld (hl),h			;57eb
	cp d			;57ec
	nop			;57ed
	nop			;57ee
	nop			;57ef
	nop			;57f0
	nop			;57f1
	nop			;57f2
	nop			;57f3
	nop			;57f4
	nop			;57f5
	nop			;57f6
l57f7h:
	jr nz,l585bh		;57f7
	ld (hl),l			;57f9
	ld (hl),e			;57fa
	ld a,c			;57fb
	adc a,l			;57fc
	nop			;57fd
	nop			;57fe
	nop			;57ff
	nop			;5800
	nop			;5801
	nop			;5802
	nop			;5803
	nop			;5804
l5805h:
	nop			;5805
	nop			;5806
l5807h:
	ld b,h			;5807
	ld c,c			;5808
	ld d,e			;5809
	ld b,e			;580a
	ld c,a			;580b
	ld c,(hl)			;580c
	ld c,(hl)			;580d
	ld b,l			;580e
	ld b,e			;580f
	ld d,h			;5810
	ld b,l			;5811
	ld b,h			;5812
	add a,b			;5813
	nop			;5814
	nop			;5815
	nop			;5816
	nop			;5817
	nop			;5818
	nop			;5819
	nop			;581a
	nop			;581b
	nop			;581c
	nop			;581d
l581eh:
	ld b,e			;581e
	ld c,a			;581f
	ld c,(hl)			;5820
	ld c,(hl)			;5821
	ld b,l			;5822
	ld b,e			;5823
	ld d,h			;5824
	ld b,l			;5825
	ld b,h			;5826
	jr nz,l589dh		;5827
	ld l,a			;5829
	and b			;582a
	nop			;582b
	nop			;582c
l582dh:
	nop			;582d
	nop			;582e
	nop			;582f
	nop			;5830
	nop			;5831
	nop			;5832
	nop			;5833
	nop			;5834
l5835h:
	ld h,d			;5835
	ld h,c			;5836
	call po,l0000h		;5837
	nop			;583a
	nop			;583b
	nop			;583c
	ld (hl),h			;583d
	ld l,a			;583e
	ld l,a			;583f
l5840h:
	jr nz,l58afh		;5840
	ld h,c			;5842
	ld l,(hl)			;5843
	ld sp,hl			;5844
sub_5845h:
	nop			;5845
	nop			;5846
	nop			;5847
	nop			;5848
	nop			;5849
	ld l,(hl)			;584a
	ld l,a			;584b
	ld (hl),h			;584c
	jr nz,l58b4h		;584d
	ld l,(hl)			;584f
	ld l,a			;5850
	ld (hl),l			;5851
	ld h,a			;5852
	ret pe			;5853
	nop			;5854
	nop			;5855
	nop			;5856
l5857h:
	nop			;5857
l5858h:
	nop			;5858
l5859h:
	ld (hl),h			;5859
	ld l,a			;585a
l585bh:
	ld l,a			;585b
	jr nz,l58cah		;585c
	ld l,a			;585e
	ld l,(hl)			;585f
	rst 20h			;5860
	nop			;5861
	nop			;5862
	nop			;5863
	nop			;5864
	nop			;5865
	ld (hl),d			;5866
	ld h,c			;5867
	ld l,(hl)			;5868
	ld h,a			;5869
	push hl			;586a
	nop			;586b
	nop			;586c
	nop			;586d
	nop			;586e
	nop			;586f
	ld h,e			;5870
	ld h,c			;5871
	ld l,h			;5872
	call pe,l0000h		;5873
	nop			;5876
	nop			;5877
	nop			;5878
l5879h:
	ld b,l			;5879
	ret z			;587a
	nop			;587b
	nop			;587c
	nop			;587d
	nop			;587e
	nop			;587f
	ld d,(hl)			;5880
	ld c,c			;5881
	pop bc			;5882
	nop			;5883
	nop			;5884
	nop			;5885
	nop			;5886
	nop			;5887
l5888h:
	ld (hl),h			;5888
	ld l,a			;5889
	ld l,a			;588a
	jr nz,l58fah		;588b
	ld h,c			;588d
	ld l,(hl)			;588e
	ld a,c			;588f
	jr nz,l5902h		;5890
	ld h,c			;5892
	ld h,e			;5893
	ld l,e			;5894
	ld h,l			;5895
	ld (hl),h			;5896
	ld (hl),e			;5897
	jr nz,l5909h		;5898
	ld (hl),l			;589a
	ld (hl),h			;589b
	ld (hl),e			;589c
l589dh:
	ld (hl),h			;589d
	ld h,c			;589e
	ld l,(hl)			;589f
	ld h,h			;58a0
	ld l,c			;58a1
	ld l,(hl)			;58a2
	ld h,a			;58a3
	adc a,l			;58a4
	nop			;58a5
	nop			;58a6
	nop			;58a7
	nop			;58a8
	nop			;58a9
	nop			;58aa
	nop			;58ab
	nop			;58ac
	nop			;58ad
	nop			;58ae
l58afh:
	ccf			;58af
	ld h,e			;58b0
	ld l,h			;58b1
	ld l,a			;58b2
	ld h,e			;58b3
l58b4h:
	ld l,e			;58b4
	jr nz,l5925h		;58b5
	ld l,a			;58b7
	ld (hl),h			;58b8
	jr nz,l592eh		;58b9
	ld h,l			;58bb
	call p,l0000h		;58bc
	nop			;58bf
	nop			;58c0
	nop			;58c1
	nop			;58c2
	nop			;58c3
	nop			;58c4
	nop			;58c5
	nop			;58c6
l58c7h:
	ccf			;58c7
	ld l,h			;58c8
	ld l,c			;58c9
l58cah:
	ld l,(hl)			;58ca
	ld l,e			;58cb
	jr nz,l593dh		;58cc
	ld (hl),l			;58ce
	ld (hl),h			;58cf
	jr nz,l5941h		;58d0
	ld h,(hl)			;58d2
	jr nz,l5947h		;58d3
	ld h,c			;58d5
	ld l,(hl)			;58d6
	ld h,a			;58d7
	ld h,l			;58d8
	adc a,l			;58d9
	nop			;58da
	nop			;58db
	nop			;58dc
	nop			;58dd
	nop			;58de
	nop			;58df
	nop			;58e0
	nop			;58e1
	nop			;58e2
	nop			;58e3
l58e4h:
	ccf			;58e4
	ld h,c			;58e5
	ld l,h			;58e6
	ld (hl),d			;58e7
	ld h,l			;58e8
	ld h,c			;58e9
	ld h,h			;58ea
	ld a,c			;58eb
	jr nz,l5951h		;58ec
	ld l,a			;58ee
	ld l,(hl)			;58ef
	ld l,(hl)			;58f0
	ld h,l			;58f1
	ld h,e			;58f2
	ld (hl),h			;58f3
	ld h,l			;58f4
	ld h,h			;58f5
	jr nz,l5920h		;58f6
	ld l,a			;58f8
	ld (hl),d			;58f9
l58fah:
	jr nz,l595dh		;58fa
	ld (hl),h			;58fc
	ld (hl),h			;58fd
	ld h,l			;58fe
	ld l,l			;58ff
	ld (hl),b			;5900
	ld (hl),h			;5901
l5902h:
	ld l,c			;5902
	ld l,(hl)			;5903
	ld h,a			;5904
	jr nz,l596ah		;5905
	ld l,a			;5907
	ld l,(hl)			;5908
l5909h:
	ld l,(hl)			;5909
	ld h,l			;590a
	ld h,e			;590b
	ld (hl),h			;590c
	ld l,c			;590d
	ld l,a			;590e
	ld l,(hl)			;590f
	add hl,hl			;5910
	jr nz,l5987h		;5911
	ld l,a			;5913
	jr nz,l598ah		;5914
	ld l,b			;5916
	ld h,c			;5917
	ld (hl),h			;5918
	jr nz,l598eh		;5919
	ld (hl),h			;591b
	ld h,c			;591c
	ld (hl),h			;591d
	ld l,c			;591e
	ld l,a			;591f
l5920h:
	ld l,(hl)			;5920
	adc a,l			;5921
	nop			;5922
	nop			;5923
	nop			;5924
l5925h:
	nop			;5925
	nop			;5926
	nop			;5927
	nop			;5928
	nop			;5929
	nop			;592a
	nop			;592b
l592ch:
	ld l,(hl)			;592c
	ld l,a			;592d
l592eh:
	ld (hl),h			;592e
	jr nz,l59a8h		;592f
	ld l,b			;5931
	ld l,c			;5932
	ld l,h			;5933
	ld h,l			;5934
	jr nz,l599ah		;5935
	ld l,a			;5937
	ld l,(hl)			;5938
	ld l,(hl)			;5939
	ld h,l			;593a
	ld h,e			;593b
	ld (hl),h			;593c
l593dh:
	ld h,l			;593d
	call po,l0000h		;593e
l5941h:
	nop			;5941
	nop			;5942
	nop			;5943
	nop			;5944
	nop			;5945
	nop			;5946
l5947h:
	nop			;5947
	nop			;5948
l5949h:
	ccf			;5949
	ld l,(hl)			;594a
	ld l,a			;594b
	ld (hl),h			;594c
l594dh:
	jr nz,l59c6h		;594d
	ld l,b			;594f
	ld l,c			;5950
l5951h:
	ld l,h			;5951
	ld h,l			;5952
	jr nz,l59b9h		;5953
	ld l,c			;5955
	ld (hl),e			;5956
	ld h,e			;5957
	ld l,a			;5958
	ld l,(hl)			;5959
	ld l,(hl)			;595a
	ld h,l			;595b
	ld h,e			;595c
l595dh:
	ld (hl),h			;595d
	ld h,l			;595e
	ld h,h			;595f
	adc a,l			;5960
	nop			;5961
	nop			;5962
	nop			;5963
	nop			;5964
	nop			;5965
	nop			;5966
	nop			;5967
	nop			;5968
	nop			;5969
l596ah:
	nop			;596a
l596bh:
	ccf			;596b
	ld h,h			;596c
	ld l,c			;596d
	ld h,(hl)			;596e
	ld h,(hl)			;596f
	ld h,l			;5970
	ld (hl),d			;5971
	ld h,l			;5972
	ld l,(hl)			;5973
	ld (hl),h			;5974
	jr nz,l59dah		;5975
	ld l,a			;5977
	ld l,(hl)			;5978
	ld l,(hl)			;5979
	ld h,l			;597a
	ld h,e			;597b
	ld (hl),h			;597c
	ld h,l			;597d
	ld h,l			;597e
	ld (hl),e			;597f
	adc a,l			;5980
	nop			;5981
	nop			;5982
	nop			;5983
	nop			;5984
	nop			;5985
	nop			;5986
l5987h:
	nop			;5987
	nop			;5988
	nop			;5989
l598ah:
	nop			;598a
l598bh:
	ld c,h			;598b
	ld c,c			;598c
	ld c,(hl)			;598d
l598eh:
	ld c,e			;598e
	jr nz,l59e0h		;598f
	ld d,l			;5991
	ld d,h			;5992
	jr nz,l59e4h		;5993
	ld b,(hl)			;5995
	jr nz,l59e7h		;5996
	ld d,d			;5998
	ld b,h			;5999
l599ah:
	ld b,l			;599a
	ld d,d			;599b
	inc l			;599c
	jr nz,l5a0fh		;599d
	ld l,a			;599f
	ld (hl),e			;59a0
	ld (hl),e			;59a1
	ld l,c			;59a2
	ld h,d			;59a3
	ld l,h			;59a4
	ld h,l			;59a5
	jr nz,l5a0ch		;59a6
l59a8h:
	ld h,c			;59a8
	ld (hl),h			;59a9
	ld h,c			;59aa
	jr nz,$+110		;59ab
	ld l,a			;59ad
	ld (hl),e			;59ae
	di			;59af
	nop			;59b0
	nop			;59b1
	nop			;59b2
	nop			;59b3
	nop			;59b4
	nop			;59b5
	nop			;59b6
	nop			;59b7
	nop			;59b8
l59b9h:
	nop			;59b9
l59bah:
	ld (hl),e			;59ba
	ld e,h			;59bb
l59bch:
	cp h			;59bc
	ld e,h			;59bd
l59beh:
	dec c			;59be
	ld e,l			;59bf
l59c0h:
	ld c,c			;59c0
	ld e,l			;59c1
l59c2h:
	adc a,b			;59c2
	ld e,l			;59c3
l59c4h:
	or c			;59c4
	ld e,l			;59c5
l59c6h:
	ret m			;59c6
	ld e,l			;59c7
l59c8h:
	ld hl,(l515eh)		;59c8
	ld e,(hl)			;59cb
l59cch:
	adc a,c			;59cc
	ld e,(hl)			;59cd
l59ceh:
	adc a,05eh		;59ce
l59d0h:
	jr $+97		;59d0
l59d2h:
	ld d,b			;59d2
	ld e,a			;59d3
l59d4h:
	and b			;59d4
	ld e,a			;59d5
	nop			;59d6
	nop			;59d7
	nop			;59d8
	nop			;59d9
l59dah:
	nop			;59da
	nop			;59db
	nop			;59dc
	nop			;59dd
l59deh:
	ld (hl),e			;59de
	ld e,h			;59df
l59e0h:
	cp h			;59e0
	ld e,h			;59e1
l59e2h:
	dec c			;59e2
	ld e,l			;59e3
l59e4h:
	ld c,c			;59e4
	ld e,l			;59e5
l59e6h:
	adc a,b			;59e6
l59e7h:
	ld e,l			;59e7
l59e8h:
	or c			;59e8
	ld e,l			;59e9
l59eah:
	ret m			;59ea
	ld e,l			;59eb
l59ech:
	ld hl,(l515eh)		;59ec
	ld e,(hl)			;59ef
l59f0h:
	adc a,c			;59f0
	ld e,(hl)			;59f1
l59f2h:
	adc a,05eh		;59f2
l59f4h:
	jr l5a55h		;59f4
l59f6h:
	ld d,b			;59f6
	ld e,a			;59f7
l59f8h:
	and b			;59f8
	ld e,a			;59f9
	nop			;59fa
	nop			;59fb
	nop			;59fc
	nop			;59fd
	nop			;59fe
	nop			;59ff
	nop			;5a00
l5a01h:
	nop			;5a01
	dec c			;5a02
	cp d			;5a03
	rst 8			;5a04
	defb 0ddh,0c4h,0deh	;illegal sequence		;5a05
	jr nz,l59bch		;5a08
	pop bc			;5a0a
	rst 10h			;5a0b
l5a0ch:
	defb 0ddh,00dh,00dh	;illegal sequence		;5a0c
l5a0fh:
	ld d,a			;5a0f
	jr z,l5a84h		;5a10
	ld l,c			;5a12
	ld (hl),h			;5a13
	ld h,l			;5a14
	add hl,hl			;5a15
	jr nz,$+34		;5a16
	jr nz,l5a57h		;5a18
	jr nz,$+89		;5a1a
	jr nz,$+42		;5a1c
	ld h,e			;5a1e
	ld h,c			;5a1f
	ld l,h			;5a20
	ld l,h			;5a21
	ld (hl),e			;5a22
	ld l,c			;5a23
	ld h,a			;5a24
	ld l,(hl)			;5a25
	add hl,hl			;5a26
	jr nz,l5a01h		;5a27
	ret nz			;5a29
	or b			;5a2a
	defb 0ddh,020h,0c3h	;illegal sequence		;5a2b
l5a2eh:
	sbc a,020h		;5a2e
	jp nc,0beafh		;5a30
	or b			;5a33
	cp h			;5a34
	sbc a,020h		;5a35
	add a,020h		;5a37
	dec c			;5a39
	nop			;5a3a
	jr nz,l5a5dh		;5a3b
	jr nz,$+34		;5a3d
	jr nz,$+34		;5a3f
	jr nz,$+34		;5a41
	jr nz,$+34		;5a43
	jr nz,l5a67h		;5a45
	or c			;5a47
	jp l20c3h+2		;5a48
	or (hl)			;5a4b
	sbc a,020h		;5a4c
	jp nz,0d7b9h		;5a4e
	jp c,0bdcfh		;5a51
	and c			;5a54
l5a55h:
	dec c			;5a55
	nop			;5a56
l5a57h:
	ld d,e			;5a57
	ld (hl),l			;5a58
	ld h,d			;5a59
	ld l,d			;5a5a
l5a5bh:
	ld h,l			;5a5b
	ld h,e			;5a5c
l5a5dh:
	ld (hl),h			;5a5d
	ld a,020h		;5a5e
	jr nz,$+63		;5a60
	jr nz,l5a97h		;5a62
	ld (0bcd3h),a		;5a64
l5a67h:
	sbc a,0cfh		;5a67
	jp 0c9deh		;5a69
	jr nz,l5a2eh		;5a6c
	or d			;5a6e
	call nz,0b6d9h		;5a6f
	sbc a,020h		;5a72
	or (hl)			;5a74
	or a			;5a75
	cp d			;5a76
	jp nc,0bdcfh		;5a77
	and c			;5a7a
	dec c			;5a7b
	nop			;5a7c
	ld c,l			;5a7d
	ld h,l			;5a7e
	ld (hl),e			;5a7f
	ld (hl),e			;5a80
	ld h,c			;5a81
	ld h,a			;5a82
	ld h,l			;5a83
l5a84h:
	ld a,020h		;5a84
	jr nz,$+63		;5a86
	jr nz,$-66		;5a88
	xor l			;5a8a
	or e			;5a8b
	ret c			;5a8c
	xor (hl)			;5a8d
	or e			;5a8e
	jr nz,l5a5bh		;5a8f
	jr nz,$+62		;5a91
	ld h,e			;5a93
	ld (hl),d			;5a94
	ld a,02eh		;5a95
l5a97h:
	inc a			;5a97
	ld h,e			;5a98
	ld (hl),d			;5a99
	ld a,020h		;5a9a
	rst 8			;5a9c
	ret nz			;5a9d
	jp z,l000dh		;5a9e
l5aa1h:
	jr nz,l5ac3h		;5aa1
	jr nz,$+34		;5aa3
	jr nz,l5ac7h		;5aa5
	jr nz,$+34		;5aa7
	jr nz,$+34		;5aa9
	jr nz,$+34		;5aab
	inc a			;5aad
	ld h,e			;5aae
	ld (hl),d			;5aaf
	ld a,03ch		;5ab0
l5ab2h:
	ld h,e			;5ab2
	ld (hl),h			;5ab3
	ld l,h			;5ab4
	dec l			;5ab5
	ld e,d			;5ab6
	ld a,03ch		;5ab7
	ld h,e			;5ab9
	ld (hl),d			;5aba
	ld a,020h		;5abb
	jp 0bddeh		;5abd
	and c			;5ac0
	dec c			;5ac1
	nop			;5ac2
l5ac3h:
	ld b,d			;5ac3
	jr z,$+123		;5ac4
	ld h,l			;5ac6
l5ac7h:
	add hl,hl			;5ac7
	jr nz,l5aeah		;5ac8
l5acah:
	jr nz,$+34		;5aca
	jr nz,l5b0bh		;5acc
	jr nz,l5b12h		;5ace
	jr nz,$-38		;5ad0
	ret nz			;5ad2
	or b			;5ad3
	defb 0ddh,020h,0c3h	;illegal sequence		;5ad4
	sbc a,020h		;5ad7
	ld b,h			;5ad9
	ld c,c			;5ada
	ld d,e			;5adb
	ld b,e			;5adc
l5addh:
	ld c,a			;5add
	ld c,(hl)			;5ade
	ld c,(hl)			;5adf
	ld b,l			;5ae0
	ld b,e			;5ae1
	ld d,h			;5ae2
	jr nz,l5aa1h		;5ae3
l5ae5h:
	rst 8			;5ae5
	cp l			;5ae6
	and c			;5ae7
	dec c			;5ae8
	nop			;5ae9
l5aeah:
	ld b,(hl)			;5aea
	jr z,l5b56h		;5aeb
	ld l,h			;5aed
	ld h,l			;5aee
	add hl,hl			;5aef
	jr nz,l5b12h		;5af0
	jr nz,l5b14h		;5af2
	dec a			;5af4
l5af5h:
	jr nz,l5ab2h		;5af5
	or d			;5af7
	or a			;5af8
	defb 0ddh,020h,031h	;illegal sequence		;5af9
	jr nc,$+34		;5afc
	cp d			;5afe
	jr nz,l5acah		;5aff
	jr nz,$-44		;5b01
	xor a			;5b03
	cp (hl)			;5b04
	or b			;5b05
	cp h			;5b06
	sbc a,0a6h		;5b07
	jr nz,$-51		;5b09
l5b0bh:
	xor (hl)			;5b0b
l5b0ch:
	or e			;5b0c
l5b0dh:
	cp h			;5b0d
	sbc a,0bch		;5b0e
	rst 8			;5b10
	cp l			;5b11
l5b12h:
	and c			;5b12
	dec c			;5b13
l5b14h:
	nop			;5b14
	ld c,l			;5b15
	jr z,l5b81h		;5b16
	ld l,(hl)			;5b18
	ld h,l			;5b19
	add hl,hl			;5b1a
	jr nz,l5b3dh		;5b1b
	jr nz,$+34		;5b1d
	dec a			;5b1f
	jr nz,l5addh		;5b20
	or d			;5b22
	or a			;5b23
	defb 0ddh,020h,031h	;illegal sequence		;5b24
l5b27h:
	jr nc,l5b49h		;5b27
	cp d			;5b29
	jr nz,l5af5h		;5b2a
l5b2ch:
	jr nz,l5aeah		;5b2c
	sbc a,0cch		;5b2e
	sbc a,0ddh		;5b30
	jr z,l5ae5h		;5b32
	jp 02029h		;5b34
l5b37h:
	ret			;5b37
	jr nz,l5b0ch		;5b38
	xor a			;5b3a
	cp (hl)			;5b3b
	or b			;5b3c
l5b3dh:
	cp h			;5b3d
	sbc a,0a6h		;5b3e
	jr nz,l5b0dh		;5b40
	xor (hl)			;5b42
	or e			;5b43
	cp h			;5b44
	sbc a,0bch		;5b45
	rst 8			;5b47
l5b48h:
	cp l			;5b48
l5b49h:
	and c			;5b49
	dec c			;5b4a
	nop			;5b4b
	jr nz,l5b6eh		;5b4c
	jr nz,$+34		;5b4e
	jr nz,$+34		;5b50
	jr nz,$+34		;5b52
	jr nz,l5b76h		;5b54
l5b56h:
	jr nz,l5b78h		;5b56
	ld (0b620h),a		;5b58
	or d			;5b5b
	jp nc,0b220h		;5b5c
	cp d			;5b5f
	or e			;5b60
l5b61h:
	jr nz,l5b2ch		;5b61
	jr nz,l5babh		;5b63
	jr nz,$-47		;5b65
	ret nz			;5b67
	jp z,04d20h		;5b68
	jr nz,l5b27h		;5b6b
	rst 8			;5b6d
l5b6eh:
	defb 0ddh,0c4h,0deh	;illegal sequence		;5b6e
	jr nz,l5b3dh		;5b71
	jr nz,l5b37h		;5b73
	or a			;5b75
l5b76h:
	sbc a,0c9h		;5b76
l5b78h:
	jr nz,l5babh		;5b78
	jr nc,l5b9ch		;5b7a
	cp d			;5b7c
	jr nz,l5b48h		;5b7d
	dec c			;5b7f
	nop			;5b80
l5b81h:
	jr nz,l5ba3h		;5b81
	jr nz,l5ba5h		;5b83
l5b85h:
	jr nz,$+34		;5b85
	jr nz,$+34		;5b87
l5b89h:
	jr nz,l5babh		;5b89
	jr nz,l5badh		;5b8b
	jp nc,0beafh		;5b8d
	or b			;5b90
	cp h			;5b91
	sbc a,0a6h		;5b92
l5b94h:
	jr nz,l5b61h		;5b94
	xor (hl)			;5b96
	or e			;5b97
	cp h			;5b98
	sbc a,0bch		;5b99
	rst 8			;5b9b
l5b9ch:
	cp l			;5b9c
	and c			;5b9d
	dec c			;5b9e
	nop			;5b9f
	ld d,d			;5ba0
	jr z,l5c08h		;5ba1
l5ba3h:
	ld h,c			;5ba3
	ld h,h			;5ba4
l5ba5h:
	add hl,hl			;5ba5
	jr nz,$+34		;5ba6
	jr nz,l5bcah		;5ba8
	dec a			;5baa
l5babh:
	jr nz,l5bffh		;5bab
l5badh:
	jr nz,l5c1dh		;5bad
	jr nz,l5b89h		;5baf
	ret nz			;5bb1
	or b			;5bb2
	defb 0ddh,020h,0c3h	;illegal sequence		;5bb3
	sbc a,020h		;5bb6
l5bb8h:
	ld l,(hl)			;5bb8
	jr nz,l5b85h		;5bb9
l5bbbh:
	sbc a,0ddh		;5bbb
	jr nz,$-53		;5bbd
	jr nz,$-44		;5bbf
	xor a			;5bc1
	cp (hl)			;5bc2
	or b			;5bc3
	cp h			;5bc4
	sbc a,0a6h		;5bc5
	jr nz,l5b94h		;5bc7
	xor (hl)			;5bc9
l5bcah:
	or e			;5bca
	cp h			;5bcb
	sbc a,0bch		;5bcc
	rst 8			;5bce
	cp l			;5bcf
	and c			;5bd0
	dec c			;5bd1
	nop			;5bd2
	ld c,e			;5bd3
	jr z,l5c3fh		;5bd4
	ld l,h			;5bd6
	ld l,h			;5bd7
	add hl,hl			;5bd8
	jr nz,$+34		;5bd9
	jr nz,l5bfdh		;5bdb
l5bddh:
	dec a			;5bdd
	jr nz,$+77		;5bde
	jr nz,l5c50h		;5be0
	jr nz,$-38		;5be2
	ret nz			;5be4
	or b			;5be5
	defb 0ddh,020h,0c3h	;illegal sequence		;5be6
l5be9h:
	sbc a,020h		;5be9
	ld l,(hl)			;5beb
	jr nz,l5bb8h		;5bec
	sbc a,0ddh		;5bee
	jr nz,l5bbbh		;5bf0
l5bf2h:
	jr nz,$-44		;5bf2
	xor a			;5bf4
	cp (hl)			;5bf5
	or b			;5bf6
	cp h			;5bf7
	sbc a,0a6h		;5bf8
	jr nz,$-69		;5bfa
	cp h			;5bfc
l5bfdh:
	rst 8			;5bfd
	cp l			;5bfe
l5bffh:
	and c			;5bff
	dec c			;5c00
	nop			;5c01
	ld c,b			;5c02
	jr z,l5c6ah		;5c03
	ld l,h			;5c05
	ld (hl),b			;5c06
l5c07h:
	add hl,hl			;5c07
l5c08h:
	jr nz,l5c2ah		;5c08
	jr nz,$+34		;5c0a
	dec a			;5c0c
	jr nz,l5c57h		;5c0d
	jr nz,l5be9h		;5c0f
	ret nz			;5c11
	or b			;5c12
	defb 0ddh,020h,0c3h	;illegal sequence		;5c13
	sbc a,020h		;5c16
	cp d			;5c18
l5c19h:
	rst 8			;5c19
	defb 0ddh,0c4h,0deh	;illegal sequence		;5c1a
l5c1dh:
	or d			;5c1d
	pop bc			;5c1e
	rst 10h			;5c1f
	defb 0ddh,020h,0cbh	;illegal sequence		;5c20
l5c23h:
	xor (hl)			;5c23
	or e			;5c24
	jr nz,$-88		;5c25
	jr nz,l5bddh		;5c27
l5c29h:
	or d			;5c29
l5c2ah:
	call z,0dddeh		;5c2a
	jr nz,l5bf2h		;5c2d
	sbc a,020h		;5c2f
	res 5,(hl)		;5c31
	or e			;5c33
	cp h			;5c34
	sbc a,0bch		;5c35
	rst 8			;5c37
	cp l			;5c38
	and c			;5c39
	dec c			;5c3a
	nop			;5c3b
	ccf			;5c3c
	jr nz,l5c5fh		;5c3d
l5c3fh:
	jr nz,l5c61h		;5c3f
	jr nz,l5c63h		;5c41
	jr nz,$+34		;5c43
	jr nz,l5c84h		;5c45
	jr nz,$+65		;5c47
	jr nz,l5c23h		;5c49
	ret nz			;5c4b
	or b			;5c4c
	defb 0ddh,020h,0c3h	;illegal sequence		;5c4d
l5c50h:
	sbc a,020h		;5c50
	cp d			;5c52
	rst 8			;5c53
	defb 0ddh,0c4h,0deh	;illegal sequence		;5c54
l5c57h:
	or d			;5c57
	pop bc			;5c58
	rst 10h			;5c59
	defb 0ddh,020h,0cbh	;illegal sequence		;5c5a
	xor (hl)			;5c5d
	or e			;5c5e
l5c5fh:
	jr nz,l5c07h		;5c5f
l5c61h:
	jr nz,l5c19h		;5c61
l5c63h:
	push bc			;5c63
	jr nz,l5c29h		;5c64
	sbc a,020h		;5c66
	res 5,(hl)		;5c68
l5c6ah:
	or e			;5c6a
	cp h			;5c6b
	sbc a,0bch		;5c6c
	rst 8			;5c6e
	cp l			;5c6f
	and c			;5c70
	dec c			;5c71
	nop			;5c72
	dec c			;5c73
	ld b,e			;5c74
	ld l,a			;5c75
	ld l,l			;5c76
	ld l,l			;5c77
	ld h,c			;5c78
	ld l,(hl)			;5c79
	ld h,h			;5c7a
	ld (hl),e			;5c7b
	dec c			;5c7c
	dec c			;5c7d
	ld d,a			;5c7e
	jr z,l5cf3h		;5c7f
	ld l,c			;5c81
	ld (hl),h			;5c82
	ld h,l			;5c83
l5c84h:
	add hl,hl			;5c84
	jr nz,l5ca7h		;5c85
	jr nz,$+63		;5c87
	jr nz,l5cdfh		;5c89
	ld a,c			;5c8b
	ld (hl),b			;5c8c
	ld h,l			;5c8d
	jr nz,l5ce7h		;5c8e
	jr nz,$+42		;5c90
	ld h,e			;5c92
	ld h,c			;5c93
	ld l,h			;5c94
	ld l,h			;5c95
	ld (hl),e			;5c96
	ld l,c			;5c97
	ld h,a			;5c98
	ld l,(hl)			;5c99
	add hl,hl			;5c9a
	inc a			;5c9b
	ld h,e			;5c9c
	ld (hl),d			;5c9d
	ld a,020h		;5c9e
	ld (hl),h			;5ca0
	ld l,a			;5ca1
	jr nz,l5d06h		;5ca2
	ld h,l			;5ca4
	ld h,a			;5ca5
	ld l,c			;5ca6
l5ca7h:
	ld l,(hl)			;5ca7
	jr nz,l5d17h		;5ca8
	ld h,l			;5caa
	ld (hl),e			;5cab
	ld (hl),e			;5cac
	ld h,c			;5cad
	ld h,a			;5cae
	ld h,l			;5caf
	jr nz,l5d17h		;5cb0
	ld l,(hl)			;5cb2
	ld (hl),h			;5cb3
	ld h,l			;5cb4
	ld (hl),d			;5cb5
	ld l,c			;5cb6
	ld l,(hl)			;5cb7
	ld h,a			;5cb8
	ld l,00dh		;5cb9
	nop			;5cbb
	ld d,e			;5cbc
	ld (hl),l			;5cbd
	ld h,d			;5cbe
	ld l,d			;5cbf
	ld h,l			;5cc0
	ld h,e			;5cc1
	ld (hl),h			;5cc2
	ld a,020h		;5cc3
	jr nz,l5d04h		;5cc5
	jr nz,l5d11h		;5cc7
	ld h,l			;5cc9
	ld h,c			;5cca
	ld h,h			;5ccb
	ld h,l			;5ccc
	ld (hl),d			;5ccd
	jr z,l5d3dh		;5cce
	ld h,c			;5cd0
	ld a,b			;5cd1
	jr nz,l5d07h		;5cd2
	ld (l6320h),a		;5cd4
	ld l,b			;5cd7
	ld h,c			;5cd8
	ld (hl),d			;5cd9
	ld h,c			;5cda
	ld h,e			;5cdb
	ld (hl),h			;5cdc
	ld h,l			;5cdd
	ld (hl),d			;5cde
l5cdfh:
	ld (hl),e			;5cdf
	add hl,hl			;5ce0
	jr nz,l5d44h		;5ce1
	ld (hl),d			;5ce3
	ld h,l			;5ce4
	jr nz,l5d4ch		;5ce5
l5ce7h:
	ld l,(hl)			;5ce7
	ld (hl),h			;5ce8
	ld h,l			;5ce9
	ld (hl),d			;5cea
	ld h,l			;5ceb
	ld h,h			;5cec
	jr nz,l5d50h		;5ced
	ld h,(hl)			;5cef
	ld (hl),h			;5cf0
	ld h,l			;5cf1
	ld (hl),d			;5cf2
l5cf3h:
	jr nz,$+118		;5cf3
	ld l,b			;5cf5
	ld h,l			;5cf6
	jr nz,$+114		;5cf7
	ld (hl),d			;5cf9
	ld l,a			;5cfa
	ld l,l			;5cfb
	ld (hl),b			;5cfc
	ld (hl),h			;5cfd
	ld a,(l2220h)		;5cfe
	ld d,e			;5d01
	ld (hl),l			;5d02
	ld h,d			;5d03
l5d04h:
	ld l,d			;5d04
	ld h,l			;5d05
l5d06h:
	ld h,e			;5d06
l5d07h:
	ld (hl),h			;5d07
	ld a,022h		;5d08
	ld l,00dh		;5d0a
	nop			;5d0c
	jr nz,l5d2fh		;5d0d
	jr nz,l5d31h		;5d0f
l5d11h:
	jr nz,l5d33h		;5d11
	jr nz,l5d35h		;5d13
	jr nz,l5d37h		;5d15
l5d17h:
	jr nz,l5d39h		;5d17
	ld b,l			;5d19
	ld l,(hl)			;5d1a
	ld h,h			;5d1b
	ld l,c			;5d1c
	ld l,(hl)			;5d1d
	ld h,a			;5d1e
	jr nz,l5d95h		;5d1f
	ld l,b			;5d21
	ld h,l			;5d22
	jr nz,$+106		;5d23
	ld h,l			;5d25
	ld h,c			;5d26
	ld h,h			;5d27
	ld h,l			;5d28
	ld (hl),d			;5d29
	jr nz,l5da3h		;5d2a
	ld l,c			;5d2c
	ld (hl),h			;5d2d
	ld l,b			;5d2e
l5d2fh:
	jr nz,l5d92h		;5d2f
l5d31h:
	jr nz,l5d96h		;5d31
l5d33h:
	ld h,c			;5d33
	ld (hl),d			;5d34
l5d35h:
	ld (hl),d			;5d35
	ld l,c			;5d36
l5d37h:
	ld h,c			;5d37
	ld h,a			;5d38
l5d39h:
	ld h,l			;5d39
	jr nz,$+116		;5d3a
	ld h,l			;5d3c
l5d3dh:
	ld (hl),h			;5d3d
	ld (hl),l			;5d3e
	ld (hl),d			;5d3f
	ld l,(hl)			;5d40
	jr nz,l5d7fh		;5d41
	ld h,e			;5d43
l5d44h:
	ld (hl),d			;5d44
	ld a,02eh		;5d45
	dec c			;5d47
	nop			;5d48
	ld c,l			;5d49
	ld h,l			;5d4a
	ld (hl),e			;5d4b
l5d4ch:
	ld (hl),e			;5d4c
	ld h,c			;5d4d
	ld h,a			;5d4e
	ld h,l			;5d4f
l5d50h:
	ld a,020h		;5d50
	jr nz,$+63		;5d52
	jr nz,l5da3h		;5d54
	ld h,l			;5d56
	ld (hl),e			;5d57
	ld (hl),e			;5d58
	ld h,c			;5d59
	ld h,a			;5d5a
	ld h,l			;5d5b
	jr nz,l5dbfh		;5d5c
	ld (hl),d			;5d5e
	ld h,l			;5d5f
	jr nz,l5dc7h		;5d60
	ld l,(hl)			;5d62
	ld (hl),h			;5d63
	ld h,l			;5d64
	ld (hl),d			;5d65
	ld h,l			;5d66
	ld h,h			;5d67
	jr nz,$+99		;5d68
	ld h,(hl)			;5d6a
	ld (hl),h			;5d6b
	ld h,l			;5d6c
	ld (hl),d			;5d6d
	jr nz,l5de4h		;5d6e
	ld l,b			;5d70
	ld h,l			;5d71
	jr nz,l5de4h		;5d72
	ld (hl),d			;5d74
	ld l,a			;5d75
	ld l,l			;5d76
	ld (hl),b			;5d77
	ld (hl),h			;5d78
	ld a,(l2220h)		;5d79
	ld c,l			;5d7c
	ld h,l			;5d7d
	ld (hl),e			;5d7e
l5d7fh:
	ld (hl),e			;5d7f
	ld h,c			;5d80
	ld h,a			;5d81
	ld h,l			;5d82
	ld a,022h		;5d83
	ld l,00dh		;5d85
	nop			;5d87
	jr nz,$+34		;5d88
	jr nz,l5dach		;5d8a
	jr nz,$+34		;5d8c
	jr nz,l5db0h		;5d8e
	jr nz,$+34		;5d90
l5d92h:
	jr nz,$+34		;5d92
	ld b,l			;5d94
l5d95h:
	ld l,(hl)			;5d95
l5d96h:
	ld h,h			;5d96
	ld l,c			;5d97
	ld l,(hl)			;5d98
	ld h,a			;5d99
	jr nz,$+103		;5d9a
	ld h,c			;5d9c
	ld h,e			;5d9d
	ld l,b			;5d9e
	jr nz,l5e0dh		;5d9f
	ld l,c			;5da1
	ld l,(hl)			;5da2
l5da3h:
	ld h,l			;5da3
	jr nz,l5e1dh		;5da4
	ld l,c			;5da6
	ld (hl),h			;5da7
	ld l,b			;5da8
	jr nz,l5de7h		;5da9
	ld h,e			;5dab
l5dach:
	ld (hl),d			;5dac
	ld a,02eh		;5dad
	dec c			;5daf
l5db0h:
	nop			;5db0
	jr nz,l5dd3h		;5db1
	jr nz,l5dd5h		;5db3
	jr nz,$+34		;5db5
	jr nz,$+34		;5db7
	jr nz,l5ddbh		;5db9
	jr nz,$+34		;5dbb
	ld e,c			;5dbd
	ld l,a			;5dbe
l5dbfh:
	ld (hl),l			;5dbf
	jr nz,$+118		;5dc0
	ld h,l			;5dc2
	ld (hl),d			;5dc3
	ld l,l			;5dc4
	ld l,c			;5dc5
	ld l,(hl)			;5dc6
l5dc7h:
	ld h,c			;5dc7
	ld (hl),h			;5dc8
	ld h,l			;5dc9
	jr nz,l5e43h		;5dca
	ld l,c			;5dcc
	ld (hl),h			;5dcd
	ld l,b			;5dce
	jr nz,$+103		;5dcf
	ld l,c			;5dd1
	ld (hl),h			;5dd2
l5dd3h:
	ld l,b			;5dd3
	ld h,l			;5dd4
l5dd5h:
	ld (hl),d			;5dd5
	jr nz,l5e39h		;5dd6
	jr nz,l5e16h		;5dd8
	ld h,e			;5dda
l5ddbh:
	ld (hl),d			;5ddb
	ld a,02eh		;5ddc
	inc a			;5dde
	ld h,e			;5ddf
	ld (hl),d			;5de0
	ld a,020h		;5de1
	ld l,a			;5de3
l5de4h:
	ld (hl),d			;5de4
	jr nz,l5e23h		;5de5
l5de7h:
	ld h,e			;5de7
	ld (hl),d			;5de8
	ld a,03ch		;5de9
	ld h,e			;5deb
	ld (hl),h			;5dec
	ld l,h			;5ded
	dec l			;5dee
	ld e,d			;5def
	ld a,03ch		;5df0
	ld h,e			;5df2
	ld (hl),d			;5df3
	ld a,020h		;5df4
	dec c			;5df6
	nop			;5df7
	jr nz,l5e1ah		;5df8
	jr nz,l5e1ch		;5dfa
	jr nz,l5e1eh		;5dfc
	jr nz,$+34		;5dfe
	jr nz,l5e22h		;5e00
	jr nz,l5e24h		;5e02
	ld (hl),h			;5e04
	ld l,a			;5e05
	jr nz,l5e7ch		;5e06
	ld l,b			;5e08
	ld h,l			;5e09
	jr nz,l5e75h		;5e0a
	ld l,(hl)			;5e0c
l5e0dh:
	ld h,h			;5e0d
	ld l,c			;5e0e
	ld h,e			;5e0f
	ld h,c			;5e10
	ld (hl),h			;5e11
	ld h,l			;5e12
	jr nz,l5e7ah		;5e13
	ld l,(hl)			;5e15
l5e16h:
	ld h,h			;5e16
	jr nz,l5e88h		;5e17
	ld h,(hl)			;5e19
l5e1ah:
	jr nz,$+123		;5e1a
l5e1ch:
	ld l,a			;5e1c
l5e1dh:
	ld (hl),l			;5e1d
l5e1eh:
	ld (hl),d			;5e1e
	jr nz,l5e8eh		;5e1f
	ld h,l			;5e21
l5e22h:
	ld (hl),e			;5e22
l5e23h:
	ld (hl),e			;5e23
l5e24h:
	ld h,c			;5e24
	ld h,a			;5e25
	ld h,l			;5e26
	ld l,00dh		;5e27
	nop			;5e29
	ld b,d			;5e2a
	jr z,l5ea6h		;5e2b
	ld h,l			;5e2d
	add hl,hl			;5e2e
	jr nz,l5e51h		;5e2f
	jr nz,$+34		;5e31
	jr nz,l5e72h		;5e33
	jr nz,$+86		;5e35
	ld a,c			;5e37
	ld (hl),b			;5e38
l5e39h:
	ld h,l			;5e39
	jr nz,l5e7eh		;5e3a
	inc a			;5e3c
	ld h,e			;5e3d
	ld (hl),d			;5e3e
	ld a,020h		;5e3f
	ld (hl),h			;5e41
	ld l,a			;5e42
l5e43h:
	jr nz,l5e89h		;5e43
	ld c,c			;5e45
	ld d,e			;5e46
	ld b,e			;5e47
	ld c,a			;5e48
	ld c,(hl)			;5e49
	ld c,(hl)			;5e4a
	ld b,l			;5e4b
	ld b,e			;5e4c
	ld d,h			;5e4d
	ld l,00dh		;5e4e
	nop			;5e50
l5e51h:
	ld b,(hl)			;5e51
	jr z,l5ebdh		;5e52
	ld l,h			;5e54
	ld h,l			;5e55
	add hl,hl			;5e56
	jr nz,l5e79h		;5e57
	jr nz,$+34		;5e59
	dec a			;5e5b
	jr nz,l5eb2h		;5e5c
	ld a,c			;5e5e
	ld (hl),b			;5e5f
	ld h,l			;5e60
	jr nz,l5ea9h		;5e61
	inc a			;5e63
	ld h,e			;5e64
	ld (hl),d			;5e65
	ld a,020h		;5e66
	ld (hl),h			;5e68
	ld l,a			;5e69
	jr nz,l5edfh		;5e6a
	ld l,b			;5e6c
	ld l,a			;5e6d
	ld (hl),a			;5e6e
	jr nz,$+118		;5e6f
	ld l,b			;5e71
l5e72h:
	ld h,l			;5e72
	jr nz,l5ee1h		;5e73
l5e75h:
	ld h,c			;5e75
	ld (hl),h			;5e76
	ld h,l			;5e77
	ld (hl),e			;5e78
l5e79h:
	ld (hl),h			;5e79
l5e7ah:
	jr nz,l5eadh		;5e7a
l5e7ch:
	jr nc,l5e9eh		;5e7c
l5e7eh:
	ld l,l			;5e7e
	ld h,l			;5e7f
	ld (hl),e			;5e80
	ld (hl),e			;5e81
	ld h,c			;5e82
	ld h,a			;5e83
	ld h,l			;5e84
	ld (hl),e			;5e85
	ld l,00dh		;5e86
l5e88h:
	nop			;5e88
l5e89h:
	ld c,l			;5e89
	jr z,l5ef5h		;5e8a
	ld l,(hl)			;5e8c
	ld h,l			;5e8d
l5e8eh:
	add hl,hl			;5e8e
	jr nz,$+34		;5e8f
	jr nz,l5eb3h		;5e91
	dec a			;5e93
	jr nz,$+86		;5e94
	ld a,c			;5e96
	ld (hl),b			;5e97
	ld h,l			;5e98
	jr nz,l5ee8h		;5e99
	inc a			;5e9b
	ld h,e			;5e9c
	ld (hl),d			;5e9d
l5e9eh:
	ld a,020h		;5e9e
	ld (hl),h			;5ea0
	ld l,a			;5ea1
	jr nz,l5f17h		;5ea2
	ld l,b			;5ea4
	ld l,a			;5ea5
l5ea6h:
	ld (hl),a			;5ea6
	jr nz,l5f15h		;5ea7
l5ea9h:
	ld h,c			;5ea9
	ld (hl),h			;5eaa
	ld h,l			;5eab
	ld (hl),e			;5eac
l5eadh:
	ld (hl),h			;5ead
	jr nz,l5ee1h		;5eae
	jr nc,l5ed2h		;5eb0
l5eb2h:
	ld l,l			;5eb2
l5eb3h:
	ld h,l			;5eb3
	ld (hl),e			;5eb4
	ld (hl),e			;5eb5
	ld h,c			;5eb6
	ld h,a			;5eb7
	ld h,l			;5eb8
	ld (hl),e			;5eb9
	jr nz,l5ee4h		;5eba
	ld (hl),h			;5ebc
l5ebdh:
	ld l,a			;5ebd
	jr nz,l5f2fh		;5ebe
	ld (hl),d			;5ec0
	jr nz,$+104		;5ec1
	ld (hl),d			;5ec3
	ld l,a			;5ec4
	ld l,l			;5ec5
	jr nz,l5f41h		;5ec6
	ld l,a			;5ec8
	ld (hl),l			;5ec9
	add hl,hl			;5eca
	ld l,00dh		;5ecb
	nop			;5ecd
	jr nz,l5ef0h		;5ece
	jr nz,l5ef2h		;5ed0
l5ed2h:
	jr nz,$+34		;5ed2
	jr nz,l5ef6h		;5ed4
	jr nz,l5ef8h		;5ed6
	jr nz,l5efah		;5ed8
	ld d,e			;5eda
	ld (hl),l			;5edb
	ld h,d			;5edc
	ld (hl),e			;5edd
	ld h,l			;5ede
l5edfh:
	ld (hl),c			;5edf
	ld (hl),l			;5ee0
l5ee1h:
	ld h,l			;5ee1
	ld l,(hl)			;5ee2
	ld (hl),h			;5ee3
l5ee4h:
	jr nz,l5f2ch		;5ee4
	jr nz,$+113		;5ee6
l5ee8h:
	ld (hl),d			;5ee8
	jr nz,l5f38h		;5ee9
	jr nz,l5f50h		;5eeb
	ld l,a			;5eed
	ld l,l			;5eee
	ld l,l			;5eef
l5ef0h:
	ld h,c			;5ef0
	ld l,(hl)			;5ef1
l5ef2h:
	ld h,h			;5ef2
	jr nz,$+121		;5ef3
l5ef5h:
	ld l,c			;5ef5
l5ef6h:
	ld l,h			;5ef6
	ld l,h			;5ef7
l5ef8h:
	jr nz,l5f6dh		;5ef8
l5efah:
	ld l,b			;5efa
	ld l,a			;5efb
	ld (hl),a			;5efc
	jr nz,l5f6dh		;5efd
	ld h,l			;5eff
	ld a,b			;5f00
	ld (hl),h			;5f01
	jr nz,l5f35h		;5f02
	jr nc,l5f26h		;5f04
	ld h,c			;5f06
	ld h,e			;5f07
	ld (hl),h			;5f08
	ld l,c			;5f09
	halt			;5f0a
	ld h,l			;5f0b
	jr nz,l5f7bh		;5f0c
	ld h,l			;5f0e
	ld (hl),e			;5f0f
	ld (hl),e			;5f10
	ld h,c			;5f11
	ld h,a			;5f12
	ld h,l			;5f13
	ld (hl),e			;5f14
l5f15h:
	ld l,00dh		;5f15
l5f17h:
	nop			;5f17
	ld d,d			;5f18
	jr z,$+103		;5f19
	ld h,c			;5f1b
	ld h,h			;5f1c
	add hl,hl			;5f1d
	jr nz,l5f40h		;5f1e
	jr nz,l5f42h		;5f20
	dec a			;5f22
	jr nz,l5f79h		;5f23
	ld a,c			;5f25
l5f26h:
	ld (hl),b			;5f26
	ld h,l			;5f27
	jr nz,l5f7ch		;5f28
	jr nz,l5f9ah		;5f2a
l5f2ch:
	inc a			;5f2c
	ld h,e			;5f2d
	ld (hl),d			;5f2e
l5f2fh:
	ld a,020h		;5f2f
	ld (hl),h			;5f31
	ld l,a			;5f32
	jr nz,l5fa8h		;5f33
l5f35h:
	ld l,b			;5f35
	ld l,a			;5f36
	ld (hl),a			;5f37
l5f38h:
	jr nz,l5faeh		;5f38
	ld l,b			;5f3a
	ld h,l			;5f3b
	jr nz,$+112		;5f3c
	ld (hl),l			;5f3e
	ld l,l			;5f3f
l5f40h:
	ld h,d			;5f40
l5f41h:
	ld h,l			;5f41
l5f42h:
	ld (hl),d			;5f42
	jr nz,l5fb3h		;5f43
	jr nz,l5fb4h		;5f45
	ld h,l			;5f47
	ld (hl),e			;5f48
	ld (hl),e			;5f49
	ld h,c			;5f4a
	ld h,a			;5f4b
	ld h,l			;5f4c
	ld l,00dh		;5f4d
	nop			;5f4f
l5f50h:
	ld c,e			;5f50
	jr z,l5fbch		;5f51
	ld l,h			;5f53
	ld l,h			;5f54
	add hl,hl			;5f55
	jr nz,l5f78h		;5f56
	jr nz,l5f7ah		;5f58
	dec a			;5f5a
	jr nz,$+86		;5f5b
	ld a,c			;5f5d
	ld (hl),b			;5f5e
	ld h,l			;5f5f
	jr nz,l5fadh		;5f60
	jr nz,l5fd2h		;5f62
	inc a			;5f64
	ld h,e			;5f65
	ld (hl),d			;5f66
	ld a,020h		;5f67
	ld (hl),h			;5f69
	ld l,a			;5f6a
	jr nz,l5fd1h		;5f6b
l5f6dh:
	ld h,l			;5f6d
	ld l,h			;5f6e
	ld h,l			;5f6f
	ld (hl),h			;5f70
	ld h,l			;5f71
	jr nz,l5fe8h		;5f72
	ld l,b			;5f74
	ld h,l			;5f75
	jr nz,l5fe6h		;5f76
l5f78h:
	ld (hl),l			;5f78
l5f79h:
	ld l,l			;5f79
l5f7ah:
	ld h,d			;5f7a
l5f7bh:
	ld h,l			;5f7b
l5f7ch:
	ld (hl),d			;5f7c
	jr nz,$+112		;5f7d
	jr nz,$+111		;5f7f
	ld h,l			;5f81
	ld (hl),e			;5f82
	ld (hl),e			;5f83
	ld h,c			;5f84
	ld h,a			;5f85
	ld h,l			;5f86
	jr nz,$+42		;5f87
	ld l,a			;5f89
	ld l,(hl)			;5f8a
	ld l,h			;5f8b
	ld a,c			;5f8c
	jr nz,l6003h		;5f8d
	ld l,a			;5f8f
	jr nz,l6001h		;5f90
	ld (hl),d			;5f92
	jr nz,l5ffbh		;5f93
	ld (hl),d			;5f95
	ld l,a			;5f96
	ld l,l			;5f97
	jr nz,l6013h		;5f98
l5f9ah:
	ld l,a			;5f9a
	ld (hl),l			;5f9b
	add hl,hl			;5f9c
	ld l,00dh		;5f9d
	nop			;5f9f
	ld c,b			;5fa0
	jr z,$+103		;5fa1
	ld l,h			;5fa3
	ld (hl),b			;5fa4
	add hl,hl			;5fa5
	ld l,a			;5fa6
	ld (hl),d			;5fa7
l5fa8h:
	jr nz,$+65		;5fa8
	dec a			;5faa
	jr nz,l6001h		;5fab
l5fadh:
	ld a,c			;5fad
l5faeh:
	ld (hl),b			;5fae
	ld h,l			;5faf
	jr nz,l5ffah		;5fb0
	inc a			;5fb2
l5fb3h:
	ld h,e			;5fb3
l5fb4h:
	ld (hl),d			;5fb4
	ld a,020h		;5fb5
	ld l,a			;5fb7
	ld (hl),d			;5fb8
	jr nz,l5ffah		;5fb9
	inc a			;5fbb
l5fbch:
	ld h,e			;5fbc
	ld (hl),d			;5fbd
	ld a,020h		;5fbe
	ld (hl),h			;5fc0
	ld l,a			;5fc1
	jr nz,$+102		;5fc2
	ld l,c			;5fc4
	ld (hl),e			;5fc5
	ld (hl),b			;5fc6
	ld l,h			;5fc7
	ld h,c			;5fc8
	ld a,c			;5fc9
	jr nz,l6040h		;5fca
	ld l,b			;5fcc
	ld l,c			;5fcd
	ld (hl),e			;5fce
	ld l,00dh		;5fcf
l5fd1h:
	nop			;5fd1
l5fd2h:
	dec c			;5fd2
	dec c			;5fd3
	dec c			;5fd4
	ld c,b			;5fd5
	ld h,l			;5fd6
	ld h,c			;5fd7
	ld (hl),h			;5fd8
	ld l,b			;5fd9
	dec c			;5fda
	ld d,b			;5fdb
	ld l,a			;5fdc
	ld h,e			;5fdd
	ld l,e			;5fde
	ld h,l			;5fdf
	ld (hl),h			;5fe0
	jr nz,l6033h		;5fe1
	ld h,c			;5fe3
	ld h,e			;5fe4
	ld l,e			;5fe5
l5fe6h:
	ld h,l			;5fe6
	ld (hl),h			;5fe7
l5fe8h:
	jr nz,l6032h		;5fe8
	ld c,e			;5fea
	dec l			;5feb
	ld (l2031h),a		;5fec
	dec c			;5fef
	ld b,c			;5ff0
	ld e,b			;5ff1
	ld l,032h		;5ff2
	dec (hl)			;5ff4
	jr nz,l6043h		;5ff5
	ld h,l			;5ff7
	halt			;5ff8
	ld h,l			;5ff9
l5ffah:
	ld l,h			;5ffa
l5ffbh:
	jr nz,l602fh		;5ffb
	jr nz,l6055h		;5ffd
	ld h,l			;5fff
	ld (hl),d			;6000
l6001h:
	ld (hl),e			;6001
	ld l,c			;6002
l6003h:
	ld l,a			;6003
	ld l,(hl)			;6004
	jr nz,l6039h		;6005
	ld l,030h		;6007
	dec c			;6009
	ld d,d			;600a
	ld h,l			;600b
	ld l,h			;600c
	ld h,l			;600d
	ld h,c			;600e
	ld (hl),e			;600f
	ld h,l			;6010
	jr nz,l6044h		;6011
l6013h:
	ld l,031h		;6013
	ld l,034h		;6015
	ld d,h			;6017
	ld b,l			;6018
	jr nz,l604ch		;6019
	ld (l312fh),a		;601b
	jr nc,l604fh		;601e
	jr c,l6059h		;6020
	jr nz,l6051h		;6022
	jr nz,l6059h		;6024
	ld (l204bh),a		;6026
	ld d,d			;6029
	ld b,c			;602a
	ld c,l			;602b
	dec c			;602c
	ld l,l			;602d
	ld h,l			;602e
l602fh:
	ld (hl),e			;602f
	ld (hl),e			;6030
	ld h,c			;6031
l6032h:
	ld h,a			;6032
l6033h:
	ld h,l			;6033
	jr nz,l6098h		;6034
	ld l,a			;6036
	ld h,c			;6037
	ld (hl),d			;6038
l6039h:
	ld h,h			;6039
	jr nz,l6092h		;603a
	ld h,l			;603c
	ld (hl),d			;603d
	jr nz,l6071h		;603e
l6040h:
	ld l,031h		;6040
	scf			;6042
l6043h:
	dec c			;6043
l6044h:
	nop			;6044
	ld b,e			;6045
	ld l,b			;6046
	ld h,l			;6047
	ld h,e			;6048
	ld l,e			;6049
	ld (hl),e			;604a
	ld (hl),l			;604b
l604ch:
	ld l,l			;604c
	and b			;604d
	nop			;604e
l604fh:
	nop			;604f
	nop			;6050
l6051h:
	nop			;6051
	nop			;6052
	nop			;6053
	nop			;6054
l6055h:
	nop			;6055
	nop			;6056
	nop			;6057
	nop			;6058
l6059h:
	nop			;6059
	nop			;605a
	nop			;605b
	nop			;605c
	nop			;605d
	nop			;605e
	nop			;605f
	nop			;6060
	nop			;6061
	nop			;6062
	nop			;6063
	nop			;6064
	nop			;6065
	nop			;6066
	nop			;6067
	nop			;6068
	nop			;6069
	nop			;606a
	nop			;606b
	nop			;606c
	nop			;606d
	nop			;606e
	nop			;606f
	nop			;6070
l6071h:
	nop			;6071
	nop			;6072
	nop			;6073
	nop			;6074
	nop			;6075
	nop			;6076
	nop			;6077
	nop			;6078
	nop			;6079
	nop			;607a
	nop			;607b
	nop			;607c
	nop			;607d
	nop			;607e
	nop			;607f
	nop			;6080
	nop			;6081
	nop			;6082
	nop			;6083
	nop			;6084
	nop			;6085
	nop			;6086
	nop			;6087
	nop			;6088
	nop			;6089
	nop			;608a
	nop			;608b
	nop			;608c
	nop			;608d
	nop			;608e
	nop			;608f
	nop			;6090
	nop			;6091
l6092h:
	nop			;6092
	nop			;6093
	nop			;6094
	nop			;6095
	nop			;6096
	nop			;6097
l6098h:
	nop			;6098
	nop			;6099
	nop			;609a
	nop			;609b
	nop			;609c
	nop			;609d
	nop			;609e
	nop			;609f
	nop			;60a0
	nop			;60a1
	nop			;60a2
	nop			;60a3
	nop			;60a4
	nop			;60a5
	nop			;60a6
	nop			;60a7
	nop			;60a8
	nop			;60a9
	nop			;60aa
	nop			;60ab
	nop			;60ac
	nop			;60ad
	nop			;60ae
	nop			;60af
	nop			;60b0
	nop			;60b1
	nop			;60b2
	nop			;60b3
	nop			;60b4
	nop			;60b5
	nop			;60b6
	nop			;60b7
	nop			;60b8
	nop			;60b9
	nop			;60ba
	nop			;60bb
	nop			;60bc
	nop			;60bd
	nop			;60be
	nop			;60bf
	nop			;60c0
	nop			;60c1
	ld b,e			;60c2
	ld l,a			;60c3
	ld (hl),b			;60c4
	ld a,c			;60c5
	ld (hl),d			;60c6
	ld l,c			;60c7
	ld h,a			;60c8
	ld l,b			;60c9
	ld (hl),h			;60ca
	jr nz,l60f5h		;60cb
	ld h,e			;60cd
	add hl,hl			;60ce
	jr nz,l6102h		;60cf
	add hl,sp			;60d1
	jr c,l6109h		;60d2
	inc l			;60d4
	jr nz,l6108h		;60d5
	add hl,sp			;60d7
	jr c,l6110h		;60d8
	jr nz,l6124h		;60da
	ld l,a			;60dc
	ld (hl),a			;60dd
	ld h,c			;60de
	ld (hl),d			;60df
	ld h,h			;60e0
	jr nz,l612ah		;60e1
	ld l,a			;60e3
	ld l,h			;60e4
	ld h,h			;60e5
	ld (hl),e			;60e6
	ld (hl),h			;60e7
	ld h,l			;60e8
	ld l,c			;60e9
	ld l,(hl)			;60ea
	nop			;60eb
	nop			;60ec
	nop			;60ed
	nop			;60ee
	nop			;60ef
	nop			;60f0
	nop			;60f1
	nop			;60f2
	nop			;60f3
	nop			;60f4
l60f5h:
	nop			;60f5
	nop			;60f6
	nop			;60f7
	nop			;60f8
	nop			;60f9
	nop			;60fa
	nop			;60fb
	nop			;60fc
	nop			;60fd
	nop			;60fe
	nop			;60ff
	nop			;6100
	nop			;6101
l6102h:
	nop			;6102
	nop			;6103
	nop			;6104
	nop			;6105
	nop			;6106
	nop			;6107
l6108h:
	nop			;6108
l6109h:
	nop			;6109
	nop			;610a
	nop			;610b
	nop			;610c
	nop			;610d
	nop			;610e
	nop			;610f
l6110h:
	nop			;6110
	nop			;6111
	nop			;6112
	nop			;6113
	nop			;6114
	nop			;6115
	nop			;6116
	nop			;6117
	nop			;6118
	nop			;6119
	nop			;611a
	nop			;611b
	nop			;611c
	nop			;611d
	nop			;611e
	nop			;611f
	nop			;6120
	nop			;6121
	nop			;6122
	nop			;6123
l6124h:
	nop			;6124
	nop			;6125
	nop			;6126
	nop			;6127
	nop			;6128
	nop			;6129
l612ah:
	nop			;612a
	nop			;612b
	nop			;612c
	nop			;612d
	nop			;612e
	nop			;612f
	nop			;6130
	nop			;6131
	nop			;6132
	nop			;6133
	nop			;6134
	nop			;6135
	nop			;6136
	nop			;6137
	nop			;6138
	nop			;6139
	nop			;613a
	nop			;613b
	nop			;613c
	nop			;613d
	nop			;613e
	nop			;613f
	nop			;6140
	nop			;6141
	nop			;6142
	nop			;6143
	nop			;6144
	nop			;6145
	nop			;6146
	nop			;6147
	nop			;6148
	nop			;6149
	nop			;614a
	nop			;614b
	nop			;614c
	nop			;614d
	nop			;614e
	nop			;614f
	nop			;6150
	nop			;6151
	nop			;6152
	nop			;6153
	nop			;6154
	nop			;6155
	nop			;6156
	nop			;6157
	nop			;6158
	nop			;6159
	nop			;615a
	nop			;615b
	nop			;615c
	nop			;615d
	nop			;615e
	nop			;615f
	nop			;6160
	nop			;6161
	nop			;6162
	nop			;6163
	nop			;6164
	nop			;6165
	nop			;6166
	nop			;6167
	nop			;6168
	nop			;6169
	nop			;616a
	nop			;616b
	nop			;616c
	nop			;616d
	nop			;616e
	nop			;616f
	nop			;6170
	nop			;6171
	nop			;6172
	nop			;6173
	nop			;6174
	nop			;6175
	nop			;6176
	nop			;6177
	nop			;6178
	nop			;6179
	nop			;617a
	nop			;617b
	nop			;617c
	nop			;617d
	nop			;617e
	nop			;617f
	nop			;6180
	nop			;6181
	nop			;6182
	nop			;6183
	nop			;6184
	nop			;6185
	nop			;6186
	nop			;6187
	nop			;6188
	nop			;6189
	nop			;618a
	nop			;618b
	nop			;618c
	nop			;618d
	nop			;618e
	nop			;618f
	nop			;6190
	nop			;6191
	nop			;6192
	nop			;6193
	nop			;6194
	nop			;6195
	nop			;6196
	nop			;6197
	nop			;6198
	nop			;6199
	nop			;619a
	nop			;619b
	nop			;619c
	nop			;619d
	nop			;619e
	nop			;619f
	nop			;61a0
	nop			;61a1
	nop			;61a2
	nop			;61a3
	nop			;61a4
	nop			;61a5
	nop			;61a6
	nop			;61a7
	nop			;61a8
	nop			;61a9
	nop			;61aa
	nop			;61ab
	nop			;61ac
	nop			;61ad
	nop			;61ae
	nop			;61af
	nop			;61b0
	nop			;61b1
	nop			;61b2
	nop			;61b3
	nop			;61b4
	nop			;61b5
	nop			;61b6
	nop			;61b7
	nop			;61b8
	nop			;61b9
	nop			;61ba
	nop			;61bb
	nop			;61bc
	nop			;61bd
	nop			;61be
	nop			;61bf
	nop			;61c0
	nop			;61c1
	nop			;61c2
	nop			;61c3
	nop			;61c4
	nop			;61c5
	nop			;61c6
	nop			;61c7
	nop			;61c8
	nop			;61c9
	nop			;61ca
	nop			;61cb
	nop			;61cc
	nop			;61cd
	nop			;61ce
	nop			;61cf
	nop			;61d0
	nop			;61d1
	nop			;61d2
	nop			;61d3
	nop			;61d4
	nop			;61d5
	nop			;61d6
	nop			;61d7
	nop			;61d8
	nop			;61d9
	nop			;61da
	nop			;61db
	nop			;61dc
	nop			;61dd
	nop			;61de
	nop			;61df
	nop			;61e0
	nop			;61e1
	nop			;61e2
	nop			;61e3
	nop			;61e4
	nop			;61e5
	nop			;61e6
	nop			;61e7
	nop			;61e8
	nop			;61e9
	nop			;61ea
	nop			;61eb
	nop			;61ec
	nop			;61ed
	nop			;61ee
	nop			;61ef
	nop			;61f0
	nop			;61f1
	nop			;61f2
	nop			;61f3
	nop			;61f4
	nop			;61f5
	nop			;61f6
	nop			;61f7
	nop			;61f8
	nop			;61f9
	nop			;61fa
	nop			;61fb
	nop			;61fc
	nop			;61fd
	nop			;61fe
	nop			;61ff
	nop			;6200
	nop			;6201
	nop			;6202
	nop			;6203
	nop			;6204
	nop			;6205
	nop			;6206
	nop			;6207
	nop			;6208
	nop			;6209
	nop			;620a
	nop			;620b
	nop			;620c
	nop			;620d
	nop			;620e
	nop			;620f
	nop			;6210
	nop			;6211
	nop			;6212
	nop			;6213
	nop			;6214
	nop			;6215
	nop			;6216
	nop			;6217
	nop			;6218
	nop			;6219
	nop			;621a
	nop			;621b
	nop			;621c
	nop			;621d
	nop			;621e
	nop			;621f
	nop			;6220
	nop			;6221
	nop			;6222
	nop			;6223
	nop			;6224
	nop			;6225
	nop			;6226
	nop			;6227
	nop			;6228
	nop			;6229
	nop			;622a
	nop			;622b
	nop			;622c
	nop			;622d
	nop			;622e
	nop			;622f
	nop			;6230
	nop			;6231
	nop			;6232
	nop			;6233
	nop			;6234
	nop			;6235
	nop			;6236
	nop			;6237
	nop			;6238
	nop			;6239
	nop			;623a
	nop			;623b
	nop			;623c
	nop			;623d
	nop			;623e
	nop			;623f
	nop			;6240
	nop			;6241
	nop			;6242
	nop			;6243
	nop			;6244
	nop			;6245
	nop			;6246
	nop			;6247
	nop			;6248
	nop			;6249
	nop			;624a
	nop			;624b
	nop			;624c
	nop			;624d
	nop			;624e
	nop			;624f
	nop			;6250
	nop			;6251
	nop			;6252
	nop			;6253
	nop			;6254
	nop			;6255
	nop			;6256
	nop			;6257
	nop			;6258
	nop			;6259
	nop			;625a
	nop			;625b
	nop			;625c
	nop			;625d
	nop			;625e
	nop			;625f
	nop			;6260
	nop			;6261
	nop			;6262
	nop			;6263
	nop			;6264
	nop			;6265
	nop			;6266
	nop			;6267
	nop			;6268
	nop			;6269
	nop			;626a
	nop			;626b
	nop			;626c
	nop			;626d
	nop			;626e
	nop			;626f
	nop			;6270
	nop			;6271
	nop			;6272
	nop			;6273
	nop			;6274
	nop			;6275
	nop			;6276
	nop			;6277
	nop			;6278
	nop			;6279
	nop			;627a
	nop			;627b
	nop			;627c
	nop			;627d
	nop			;627e
	nop			;627f
	nop			;6280
	nop			;6281
	nop			;6282
	nop			;6283
	nop			;6284
	nop			;6285
	nop			;6286
	nop			;6287
	nop			;6288
	nop			;6289
	nop			;628a
	nop			;628b
	nop			;628c
	nop			;628d
	nop			;628e
	nop			;628f
	nop			;6290
	nop			;6291
	nop			;6292
	nop			;6293
	nop			;6294
	nop			;6295
	nop			;6296
	nop			;6297
	nop			;6298
	nop			;6299
	nop			;629a
	nop			;629b
	nop			;629c
	nop			;629d
	nop			;629e
	nop			;629f
	nop			;62a0
	nop			;62a1
	nop			;62a2
	nop			;62a3
	nop			;62a4
	nop			;62a5
	nop			;62a6
	nop			;62a7
	nop			;62a8
	nop			;62a9
	nop			;62aa
	nop			;62ab
	nop			;62ac
	nop			;62ad
	nop			;62ae
	nop			;62af
	nop			;62b0
	nop			;62b1
	nop			;62b2
	nop			;62b3
	nop			;62b4
	nop			;62b5
	nop			;62b6
	nop			;62b7
	nop			;62b8
	nop			;62b9
	nop			;62ba
	nop			;62bb
	nop			;62bc
	nop			;62bd
	nop			;62be
	nop			;62bf
	nop			;62c0
	nop			;62c1
	nop			;62c2
	nop			;62c3
	nop			;62c4
	nop			;62c5
	nop			;62c6
	nop			;62c7
	nop			;62c8
	nop			;62c9
	nop			;62ca
	nop			;62cb
	nop			;62cc
	nop			;62cd
	nop			;62ce
	nop			;62cf
	nop			;62d0
	nop			;62d1
	nop			;62d2
	nop			;62d3
	nop			;62d4
	nop			;62d5
	nop			;62d6
	nop			;62d7
	nop			;62d8
	nop			;62d9
	nop			;62da
	nop			;62db
	nop			;62dc
	nop			;62dd
	nop			;62de
	nop			;62df
	nop			;62e0
	nop			;62e1
	nop			;62e2
	nop			;62e3
	nop			;62e4
	nop			;62e5
	nop			;62e6
	nop			;62e7
	nop			;62e8
	nop			;62e9
	nop			;62ea
	nop			;62eb
	nop			;62ec
	nop			;62ed
	nop			;62ee
	nop			;62ef
	nop			;62f0
	nop			;62f1
	nop			;62f2
	nop			;62f3
	nop			;62f4
	nop			;62f5
	nop			;62f6
	nop			;62f7
	nop			;62f8
	nop			;62f9
	nop			;62fa
	nop			;62fb
	nop			;62fc
	nop			;62fd
	nop			;62fe
	nop			;62ff
	nop			;6300
	nop			;6301
	nop			;6302
	nop			;6303
	nop			;6304
	nop			;6305
	nop			;6306
	nop			;6307
	nop			;6308
	nop			;6309
	nop			;630a
	nop			;630b
	nop			;630c
	nop			;630d
	nop			;630e
	nop			;630f
	nop			;6310
	nop			;6311
	nop			;6312
	nop			;6313
	nop			;6314
	nop			;6315
	nop			;6316
	nop			;6317
	nop			;6318
	nop			;6319
	nop			;631a
	nop			;631b
	nop			;631c
	nop			;631d
	nop			;631e
	nop			;631f
l6320h:
	nop			;6320
	nop			;6321
	nop			;6322
	nop			;6323
	nop			;6324
	nop			;6325
	nop			;6326
	nop			;6327
	nop			;6328
	nop			;6329
	nop			;632a
	nop			;632b
	nop			;632c
	nop			;632d
	nop			;632e
	nop			;632f
	nop			;6330
	nop			;6331
	nop			;6332
	nop			;6333
	nop			;6334
	nop			;6335
	nop			;6336
	nop			;6337
	nop			;6338
	nop			;6339
	nop			;633a
	nop			;633b
	nop			;633c
	nop			;633d
	nop			;633e
	nop			;633f
	nop			;6340
	nop			;6341
	nop			;6342
	nop			;6343
	nop			;6344
	nop			;6345
	nop			;6346
	nop			;6347
	nop			;6348
	nop			;6349
	nop			;634a
	nop			;634b
	nop			;634c
	nop			;634d
	nop			;634e
	nop			;634f
	nop			;6350
	nop			;6351
	nop			;6352
	nop			;6353
	nop			;6354
	nop			;6355
	nop			;6356
	nop			;6357
	nop			;6358
	nop			;6359
	nop			;635a
	nop			;635b
	nop			;635c
	nop			;635d
	nop			;635e
	nop			;635f
	nop			;6360
	nop			;6361
	nop			;6362
	nop			;6363
	nop			;6364
	nop			;6365
	nop			;6366
	nop			;6367
	nop			;6368
	nop			;6369
	nop			;636a
	nop			;636b
	nop			;636c
	nop			;636d
	nop			;636e
	nop			;636f
	nop			;6370
	nop			;6371
	nop			;6372
	nop			;6373
	nop			;6374
	nop			;6375
	nop			;6376
	nop			;6377
	nop			;6378
	nop			;6379
	nop			;637a
	nop			;637b
	nop			;637c
	nop			;637d
	nop			;637e
	nop			;637f
	nop			;6380
	nop			;6381
	nop			;6382
	nop			;6383
	nop			;6384
	nop			;6385
	nop			;6386
	nop			;6387
	nop			;6388
	nop			;6389
	nop			;638a
	nop			;638b
	nop			;638c
	nop			;638d
	nop			;638e
	nop			;638f
	nop			;6390
	nop			;6391
	nop			;6392
	nop			;6393
	nop			;6394
	nop			;6395
	nop			;6396
	nop			;6397
	nop			;6398
	nop			;6399
	nop			;639a
	nop			;639b
	nop			;639c
	nop			;639d
	nop			;639e
	nop			;639f
	nop			;63a0
	nop			;63a1
	nop			;63a2
	nop			;63a3
	nop			;63a4
	nop			;63a5
	nop			;63a6
	nop			;63a7
	nop			;63a8
	nop			;63a9
	nop			;63aa
	nop			;63ab
	nop			;63ac
	nop			;63ad
	nop			;63ae
	nop			;63af
	nop			;63b0
	nop			;63b1
	nop			;63b2
	nop			;63b3
	nop			;63b4
	nop			;63b5
	nop			;63b6
	nop			;63b7
	nop			;63b8
	nop			;63b9
	nop			;63ba
	nop			;63bb
	nop			;63bc
	nop			;63bd
	nop			;63be
	nop			;63bf
	nop			;63c0
	nop			;63c1
	nop			;63c2
	nop			;63c3
	nop			;63c4
	nop			;63c5
	nop			;63c6
	nop			;63c7
	nop			;63c8
	nop			;63c9
	nop			;63ca
	nop			;63cb
	nop			;63cc
	nop			;63cd
	nop			;63ce
	nop			;63cf
	nop			;63d0
	nop			;63d1
	nop			;63d2
	nop			;63d3
	nop			;63d4
	nop			;63d5
	nop			;63d6
	nop			;63d7
	nop			;63d8
	nop			;63d9
	nop			;63da
	nop			;63db
	nop			;63dc
	nop			;63dd
	nop			;63de
	nop			;63df
	nop			;63e0
	nop			;63e1
	nop			;63e2
	nop			;63e3
	nop			;63e4
	nop			;63e5
	nop			;63e6
	nop			;63e7
	nop			;63e8
	nop			;63e9
	nop			;63ea
	nop			;63eb
	nop			;63ec
	nop			;63ed
	nop			;63ee
	nop			;63ef
	nop			;63f0
	nop			;63f1
	nop			;63f2
	nop			;63f3
	nop			;63f4
	nop			;63f5
	nop			;63f6
	nop			;63f7
	nop			;63f8
	nop			;63f9
	nop			;63fa
	nop			;63fb
	nop			;63fc
	nop			;63fd
	nop			;63fe
	nop			;63ff
	nop			;6400
	nop			;6401
	nop			;6402
	nop			;6403
l6404h:
	nop			;6404
l6405h:
	nop			;6405
	nop			;6406
	nop			;6407
	nop			;6408
	nop			;6409
	nop			;640a
l640bh:
	nop			;640b
	nop			;640c
	nop			;640d
	nop			;640e
l640fh:
	nop			;640f
	nop			;6410
	nop			;6411
	nop			;6412
	nop			;6413
	nop			;6414
	nop			;6415
	nop			;6416
	nop			;6417
	nop			;6418
	nop			;6419
	nop			;641a
	nop			;641b
	nop			;641c
	nop			;641d
	nop			;641e
	nop			;641f
	nop			;6420
	nop			;6421
	nop			;6422
	nop			;6423
	nop			;6424
	nop			;6425
	nop			;6426
	nop			;6427
	nop			;6428
	nop			;6429
	nop			;642a
	nop			;642b
	nop			;642c
	nop			;642d
	nop			;642e
	nop			;642f
	nop			;6430
	nop			;6431
	nop			;6432
	nop			;6433
	nop			;6434
	nop			;6435
	nop			;6436
	nop			;6437
	nop			;6438
	nop			;6439
	nop			;643a
	nop			;643b
	nop			;643c
	nop			;643d
	nop			;643e
	nop			;643f
	nop			;6440
	nop			;6441
	nop			;6442
	nop			;6443
	nop			;6444
	nop			;6445
	nop			;6446
	nop			;6447
	nop			;6448
	nop			;6449
	nop			;644a
	nop			;644b
	nop			;644c
	nop			;644d
	nop			;644e
	nop			;644f
	nop			;6450
	nop			;6451
	nop			;6452
	nop			;6453
	nop			;6454
	nop			;6455
	nop			;6456
	nop			;6457
	nop			;6458
	nop			;6459
	nop			;645a
	nop			;645b
	nop			;645c
	nop			;645d
	nop			;645e
	nop			;645f
	nop			;6460
	nop			;6461
	nop			;6462
	nop			;6463
	nop			;6464
	nop			;6465
	nop			;6466
	nop			;6467
	nop			;6468
	nop			;6469
	nop			;646a
	nop			;646b
	nop			;646c
	nop			;646d
	nop			;646e
	nop			;646f
	nop			;6470
	nop			;6471
	nop			;6472
	nop			;6473
	nop			;6474
	nop			;6475
	nop			;6476
	nop			;6477
	nop			;6478
	nop			;6479
	nop			;647a
	nop			;647b
	nop			;647c
	nop			;647d
	nop			;647e
	nop			;647f
	nop			;6480
	nop			;6481
	nop			;6482
	nop			;6483
	nop			;6484
	nop			;6485
	nop			;6486
	nop			;6487
	nop			;6488
	nop			;6489
	nop			;648a
	nop			;648b
	nop			;648c
	nop			;648d
	nop			;648e
	nop			;648f
	nop			;6490
	nop			;6491
	nop			;6492
	nop			;6493
	nop			;6494
	nop			;6495
	nop			;6496
	nop			;6497
	nop			;6498
	nop			;6499
	nop			;649a
	nop			;649b
	nop			;649c
	nop			;649d
	nop			;649e
	nop			;649f
	nop			;64a0
	nop			;64a1
	nop			;64a2
	nop			;64a3
	nop			;64a4
	nop			;64a5
	nop			;64a6
	nop			;64a7
	nop			;64a8
	nop			;64a9
	nop			;64aa
	nop			;64ab
	nop			;64ac
	nop			;64ad
	nop			;64ae
	nop			;64af
	nop			;64b0
	nop			;64b1
	nop			;64b2
	nop			;64b3
	nop			;64b4
	nop			;64b5
	nop			;64b6
	nop			;64b7
	nop			;64b8
	nop			;64b9
	nop			;64ba
	nop			;64bb
	nop			;64bc
	nop			;64bd
	nop			;64be
	nop			;64bf
	nop			;64c0
	nop			;64c1
	nop			;64c2
	nop			;64c3
	nop			;64c4
	nop			;64c5
	nop			;64c6
	nop			;64c7
	nop			;64c8
	nop			;64c9
	nop			;64ca
	nop			;64cb
	nop			;64cc
	nop			;64cd
	nop			;64ce
	nop			;64cf
	nop			;64d0
	nop			;64d1
	nop			;64d2
	nop			;64d3
	nop			;64d4
	nop			;64d5
	nop			;64d6
	nop			;64d7
	nop			;64d8
	nop			;64d9
	nop			;64da
	nop			;64db
	nop			;64dc
	nop			;64dd
	nop			;64de
	nop			;64df
	nop			;64e0
	nop			;64e1
	nop			;64e2
	nop			;64e3
	nop			;64e4
	nop			;64e5
	nop			;64e6
	nop			;64e7
	nop			;64e8
	nop			;64e9
	nop			;64ea
	nop			;64eb
	nop			;64ec
	nop			;64ed
	nop			;64ee
	nop			;64ef
	nop			;64f0
	nop			;64f1
	nop			;64f2
	nop			;64f3
	nop			;64f4
	nop			;64f5
	nop			;64f6
	nop			;64f7
	nop			;64f8
	nop			;64f9
	nop			;64fa
	nop			;64fb
	nop			;64fc
	nop			;64fd
	nop			;64fe
	nop			;64ff
	nop			;6500
	nop			;6501
	nop			;6502
	nop			;6503
	nop			;6504
	nop			;6505
	nop			;6506
	nop			;6507
	nop			;6508
	nop			;6509
	nop			;650a
	nop			;650b
	nop			;650c
	nop			;650d
	nop			;650e
	nop			;650f
	nop			;6510
	nop			;6511
	nop			;6512
	nop			;6513
	nop			;6514
	nop			;6515
	nop			;6516
	nop			;6517
	nop			;6518
	nop			;6519
	nop			;651a
	nop			;651b
	nop			;651c
	nop			;651d
	nop			;651e
	nop			;651f
	nop			;6520
	nop			;6521
	nop			;6522
	nop			;6523
	nop			;6524
	nop			;6525
	nop			;6526
	nop			;6527
	nop			;6528
	nop			;6529
	nop			;652a
	nop			;652b
	nop			;652c
	nop			;652d
	nop			;652e
	nop			;652f
	nop			;6530
	nop			;6531
	nop			;6532
	nop			;6533
	nop			;6534
	nop			;6535
	nop			;6536
	nop			;6537
	nop			;6538
	nop			;6539
	nop			;653a
	nop			;653b
	nop			;653c
	nop			;653d
	nop			;653e
	nop			;653f
	nop			;6540
	nop			;6541
	nop			;6542
	nop			;6543
	nop			;6544
	nop			;6545
	nop			;6546
	nop			;6547
	nop			;6548
	nop			;6549
	nop			;654a
	nop			;654b
	nop			;654c
	nop			;654d
	nop			;654e
	nop			;654f
	nop			;6550
	nop			;6551
	nop			;6552
	nop			;6553
	nop			;6554
	nop			;6555
	nop			;6556
	nop			;6557
	nop			;6558
	nop			;6559
	nop			;655a
	nop			;655b
	nop			;655c
	nop			;655d
	nop			;655e
	nop			;655f
	nop			;6560
	nop			;6561
	nop			;6562
	nop			;6563
	nop			;6564
	nop			;6565
	nop			;6566
	nop			;6567
	nop			;6568
	nop			;6569
	nop			;656a
	nop			;656b
	nop			;656c
	nop			;656d
	nop			;656e
	nop			;656f
	nop			;6570
	nop			;6571
	nop			;6572
	nop			;6573
	nop			;6574
	nop			;6575
	nop			;6576
	nop			;6577
	nop			;6578
	nop			;6579
	nop			;657a
	nop			;657b
	nop			;657c
	nop			;657d
	nop			;657e
	nop			;657f
	nop			;6580
	nop			;6581
	nop			;6582
	nop			;6583
	nop			;6584
	nop			;6585
	nop			;6586
	nop			;6587
	nop			;6588
	nop			;6589
	nop			;658a
	nop			;658b
	nop			;658c
	nop			;658d
	nop			;658e
	nop			;658f
	nop			;6590
	nop			;6591
	nop			;6592
	nop			;6593
	nop			;6594
	nop			;6595
	nop			;6596
	nop			;6597
	nop			;6598
	nop			;6599
	nop			;659a
	nop			;659b
	nop			;659c
	nop			;659d
	nop			;659e
	nop			;659f
	nop			;65a0
	nop			;65a1
	nop			;65a2
	nop			;65a3
	nop			;65a4
	nop			;65a5
	nop			;65a6
	nop			;65a7
	nop			;65a8
	nop			;65a9
	nop			;65aa
	nop			;65ab
	nop			;65ac
	nop			;65ad
	nop			;65ae
	nop			;65af
	nop			;65b0
	nop			;65b1
	nop			;65b2
	nop			;65b3
	nop			;65b4
	nop			;65b5
	nop			;65b6
	nop			;65b7
	nop			;65b8
	nop			;65b9
	nop			;65ba
	nop			;65bb
	nop			;65bc
	nop			;65bd
	nop			;65be
	nop			;65bf
	nop			;65c0
	nop			;65c1
	nop			;65c2
	nop			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	nop			;65c7
	nop			;65c8
	nop			;65c9
	nop			;65ca
	nop			;65cb
	nop			;65cc
	nop			;65cd
	nop			;65ce
	nop			;65cf
	nop			;65d0
	nop			;65d1
	nop			;65d2
	nop			;65d3
	nop			;65d4
	nop			;65d5
	nop			;65d6
	nop			;65d7
	nop			;65d8
	nop			;65d9
	nop			;65da
	nop			;65db
	nop			;65dc
	nop			;65dd
	nop			;65de
	nop			;65df
	nop			;65e0
	nop			;65e1
	nop			;65e2
	nop			;65e3
	nop			;65e4
	nop			;65e5
	nop			;65e6
	nop			;65e7
	nop			;65e8
	nop			;65e9
	nop			;65ea
	nop			;65eb
	nop			;65ec
	nop			;65ed
	nop			;65ee
	nop			;65ef
	nop			;65f0
	nop			;65f1
	nop			;65f2
	nop			;65f3
	nop			;65f4
	nop			;65f5
	nop			;65f6
	nop			;65f7
	nop			;65f8
	nop			;65f9
	nop			;65fa
	nop			;65fb
	nop			;65fc
	nop			;65fd
	nop			;65fe
	nop			;65ff
	nop			;6600
	nop			;6601
	nop			;6602
	nop			;6603
	nop			;6604
	nop			;6605
	nop			;6606
	nop			;6607
	nop			;6608
	nop			;6609
	nop			;660a
	nop			;660b
	nop			;660c
	nop			;660d
	nop			;660e
	nop			;660f
	nop			;6610
	nop			;6611
	nop			;6612
	nop			;6613
	nop			;6614
	nop			;6615
	nop			;6616
	nop			;6617
	nop			;6618
	nop			;6619
	nop			;661a
	nop			;661b
	nop			;661c
	nop			;661d
	nop			;661e
	nop			;661f
	nop			;6620
	nop			;6621
	nop			;6622
	nop			;6623
	nop			;6624
	nop			;6625
	nop			;6626
	nop			;6627
	nop			;6628
	nop			;6629
	nop			;662a
	nop			;662b
	nop			;662c
	nop			;662d
	nop			;662e
	nop			;662f
	nop			;6630
	nop			;6631
	nop			;6632
	nop			;6633
	nop			;6634
	nop			;6635
	nop			;6636
	nop			;6637
	nop			;6638
	nop			;6639
	nop			;663a
	nop			;663b
	nop			;663c
	nop			;663d
	nop			;663e
	nop			;663f
	nop			;6640
	nop			;6641
	nop			;6642
	nop			;6643
	nop			;6644
	nop			;6645
	nop			;6646
	nop			;6647
	nop			;6648
	nop			;6649
	nop			;664a
	nop			;664b
	nop			;664c
	nop			;664d
	nop			;664e
	nop			;664f
	nop			;6650
	nop			;6651
	nop			;6652
	nop			;6653
	nop			;6654
	nop			;6655
	nop			;6656
	nop			;6657
	nop			;6658
	nop			;6659
	nop			;665a
	nop			;665b
	nop			;665c
	nop			;665d
	nop			;665e
	nop			;665f
	nop			;6660
	nop			;6661
	nop			;6662
	nop			;6663
	nop			;6664
	nop			;6665
	nop			;6666
	nop			;6667
	nop			;6668
	nop			;6669
	nop			;666a
	nop			;666b
	nop			;666c
	nop			;666d
	nop			;666e
	nop			;666f
	nop			;6670
	nop			;6671
	nop			;6672
	nop			;6673
	nop			;6674
	nop			;6675
	nop			;6676
	nop			;6677
	nop			;6678
	nop			;6679
	nop			;667a
	nop			;667b
	nop			;667c
	nop			;667d
	nop			;667e
	nop			;667f
	nop			;6680
	nop			;6681
	nop			;6682
	nop			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	nop			;6687
	nop			;6688
	nop			;6689
	nop			;668a
	nop			;668b
	nop			;668c
	nop			;668d
	nop			;668e
	nop			;668f
	nop			;6690
	nop			;6691
	nop			;6692
	nop			;6693
	nop			;6694
	nop			;6695
	nop			;6696
	nop			;6697
	nop			;6698
	nop			;6699
	nop			;669a
	nop			;669b
	nop			;669c
	nop			;669d
	nop			;669e
	nop			;669f
	nop			;66a0
	nop			;66a1
	nop			;66a2
	nop			;66a3
	nop			;66a4
	nop			;66a5
	nop			;66a6
	nop			;66a7
	nop			;66a8
	nop			;66a9
	nop			;66aa
	nop			;66ab
	nop			;66ac
	nop			;66ad
	nop			;66ae
	nop			;66af
	nop			;66b0
	nop			;66b1
	nop			;66b2
	nop			;66b3
	nop			;66b4
	nop			;66b5
	nop			;66b6
	nop			;66b7
	nop			;66b8
	nop			;66b9
	nop			;66ba
	nop			;66bb
	nop			;66bc
	nop			;66bd
	nop			;66be
	nop			;66bf
	nop			;66c0
	nop			;66c1
	nop			;66c2
	nop			;66c3
	nop			;66c4
	nop			;66c5
	nop			;66c6
	nop			;66c7
	nop			;66c8
	nop			;66c9
	nop			;66ca
	nop			;66cb
	nop			;66cc
	nop			;66cd
	nop			;66ce
	nop			;66cf
	nop			;66d0
	nop			;66d1
	nop			;66d2
	nop			;66d3
	nop			;66d4
	nop			;66d5
	nop			;66d6
	nop			;66d7
	nop			;66d8
	nop			;66d9
	nop			;66da
	nop			;66db
	nop			;66dc
	nop			;66dd
	nop			;66de
	nop			;66df
	nop			;66e0
	nop			;66e1
	nop			;66e2
	nop			;66e3
	nop			;66e4
	nop			;66e5
	nop			;66e6
	nop			;66e7
	nop			;66e8
	nop			;66e9
	nop			;66ea
	nop			;66eb
	nop			;66ec
	nop			;66ed
	nop			;66ee
	nop			;66ef
	nop			;66f0
	nop			;66f1
	nop			;66f2
	nop			;66f3
	nop			;66f4
	nop			;66f5
	nop			;66f6
	nop			;66f7
	nop			;66f8
	nop			;66f9
	nop			;66fa
	nop			;66fb
	nop			;66fc
	nop			;66fd
	nop			;66fe
	nop			;66ff
	nop			;6700
	nop			;6701
	nop			;6702
	nop			;6703
	nop			;6704
	nop			;6705
	nop			;6706
l6707h:
	nop			;6707
	nop			;6708
l6709h:
	nop			;6709
l670ah:
	nop			;670a
	nop			;670b
l670ch:
	nop			;670c
l670dh:
	nop			;670d
	nop			;670e
	nop			;670f
	nop			;6710
	nop			;6711
	nop			;6712
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	nop			;6717
	nop			;6718
	nop			;6719
	nop			;671a
	nop			;671b
	nop			;671c
	nop			;671d
	nop			;671e
	nop			;671f
	nop			;6720
	nop			;6721
	nop			;6722
	nop			;6723
	nop			;6724
	nop			;6725
	nop			;6726
	nop			;6727
	nop			;6728
	nop			;6729
	nop			;672a
	nop			;672b
	nop			;672c
	nop			;672d
	nop			;672e
	nop			;672f
	nop			;6730
	nop			;6731
	nop			;6732
	nop			;6733
	nop			;6734
	nop			;6735
	nop			;6736
	nop			;6737
	nop			;6738
	nop			;6739
	nop			;673a
	nop			;673b
	nop			;673c
	nop			;673d
	nop			;673e
	nop			;673f
	nop			;6740
	nop			;6741
	nop			;6742
	nop			;6743
	nop			;6744
	nop			;6745
	nop			;6746
	nop			;6747
	nop			;6748
	nop			;6749
	nop			;674a
	nop			;674b
	nop			;674c
	nop			;674d
	nop			;674e
	nop			;674f
	nop			;6750
	nop			;6751
	nop			;6752
	nop			;6753
	nop			;6754
	nop			;6755
	nop			;6756
	nop			;6757
	nop			;6758
	nop			;6759
	nop			;675a
	nop			;675b
	nop			;675c
	nop			;675d
	nop			;675e
	nop			;675f
	nop			;6760
	nop			;6761
	nop			;6762
	nop			;6763
	nop			;6764
	nop			;6765
	nop			;6766
	nop			;6767
	nop			;6768
	nop			;6769
	nop			;676a
	nop			;676b
	nop			;676c
	nop			;676d
	nop			;676e
	nop			;676f
	nop			;6770
	nop			;6771
	nop			;6772
	nop			;6773
	nop			;6774
	nop			;6775
	nop			;6776
	nop			;6777
	nop			;6778
	nop			;6779
	nop			;677a
	nop			;677b
	nop			;677c
	nop			;677d
	nop			;677e
	nop			;677f
	nop			;6780
	nop			;6781
	nop			;6782
	nop			;6783
	nop			;6784
	nop			;6785
	nop			;6786
	nop			;6787
	nop			;6788
	nop			;6789
	nop			;678a
	nop			;678b
	nop			;678c
	nop			;678d
	nop			;678e
	nop			;678f
	nop			;6790
	nop			;6791
	nop			;6792
	nop			;6793
	nop			;6794
	nop			;6795
	nop			;6796
	nop			;6797
	nop			;6798
	nop			;6799
	nop			;679a
	nop			;679b
	nop			;679c
	nop			;679d
	nop			;679e
	nop			;679f
	nop			;67a0
	nop			;67a1
	nop			;67a2
	nop			;67a3
	nop			;67a4
	nop			;67a5
	nop			;67a6
	nop			;67a7
	nop			;67a8
	nop			;67a9
	nop			;67aa
	nop			;67ab
	nop			;67ac
	nop			;67ad
	nop			;67ae
	nop			;67af
	nop			;67b0
	nop			;67b1
	nop			;67b2
	nop			;67b3
	nop			;67b4
	nop			;67b5
	nop			;67b6
	nop			;67b7
	nop			;67b8
	nop			;67b9
	nop			;67ba
	nop			;67bb
	nop			;67bc
	nop			;67bd
	nop			;67be
	nop			;67bf
	nop			;67c0
	nop			;67c1
	nop			;67c2
	nop			;67c3
	nop			;67c4
	nop			;67c5
	nop			;67c6
	nop			;67c7
	nop			;67c8
	nop			;67c9
	nop			;67ca
	nop			;67cb
	nop			;67cc
	nop			;67cd
	nop			;67ce
	nop			;67cf
	nop			;67d0
	nop			;67d1
	nop			;67d2
	nop			;67d3
	nop			;67d4
	nop			;67d5
	nop			;67d6
	nop			;67d7
	nop			;67d8
	nop			;67d9
	nop			;67da
	nop			;67db
	nop			;67dc
	nop			;67dd
	nop			;67de
	nop			;67df
	nop			;67e0
	nop			;67e1
	nop			;67e2
	nop			;67e3
	nop			;67e4
	nop			;67e5
	nop			;67e6
	nop			;67e7
	nop			;67e8
	nop			;67e9
	nop			;67ea
	nop			;67eb
	nop			;67ec
	nop			;67ed
	nop			;67ee
	nop			;67ef
	nop			;67f0
	nop			;67f1
	nop			;67f2
	nop			;67f3
	nop			;67f4
	nop			;67f5
	nop			;67f6
	nop			;67f7
	nop			;67f8
	nop			;67f9
	nop			;67fa
	nop			;67fb
	nop			;67fc
	nop			;67fd
	nop			;67fe
	nop			;67ff
	nop			;6800
	nop			;6801
	nop			;6802
	nop			;6803
	nop			;6804
	nop			;6805
	nop			;6806
	nop			;6807
	nop			;6808
	nop			;6809
	nop			;680a
	nop			;680b
	nop			;680c
	nop			;680d
	nop			;680e
	nop			;680f
	nop			;6810
	nop			;6811
	nop			;6812
	nop			;6813
	nop			;6814
	nop			;6815
	nop			;6816
	nop			;6817
	nop			;6818
	nop			;6819
	nop			;681a
	nop			;681b
	nop			;681c
	nop			;681d
	nop			;681e
	nop			;681f
	nop			;6820
	nop			;6821
	nop			;6822
	nop			;6823
	nop			;6824
	nop			;6825
	nop			;6826
	nop			;6827
	nop			;6828
	nop			;6829
	nop			;682a
	nop			;682b
	nop			;682c
	nop			;682d
	nop			;682e
	nop			;682f
	nop			;6830
	nop			;6831
	nop			;6832
	nop			;6833
	nop			;6834
	nop			;6835
	nop			;6836
	nop			;6837
	nop			;6838
	nop			;6839
	nop			;683a
	nop			;683b
	nop			;683c
	nop			;683d
	nop			;683e
	nop			;683f
	nop			;6840
	nop			;6841
	nop			;6842
	nop			;6843
	nop			;6844
	nop			;6845
	nop			;6846
	nop			;6847
	nop			;6848
	nop			;6849
	nop			;684a
	nop			;684b
	nop			;684c
	nop			;684d
	nop			;684e
	nop			;684f
	nop			;6850
	nop			;6851
	nop			;6852
	nop			;6853
	nop			;6854
	nop			;6855
	nop			;6856
	nop			;6857
	nop			;6858
	nop			;6859
	nop			;685a
	nop			;685b
	nop			;685c
	nop			;685d
	nop			;685e
	nop			;685f
	nop			;6860
	nop			;6861
	nop			;6862
	nop			;6863
	nop			;6864
	nop			;6865
	nop			;6866
	nop			;6867
	nop			;6868
	nop			;6869
	nop			;686a
	nop			;686b
	nop			;686c
	nop			;686d
	nop			;686e
	nop			;686f
	nop			;6870
	nop			;6871
	nop			;6872
	nop			;6873
	nop			;6874
	nop			;6875
	nop			;6876
	nop			;6877
	nop			;6878
	nop			;6879
	nop			;687a
	nop			;687b
	nop			;687c
	nop			;687d
	nop			;687e
	nop			;687f
	nop			;6880
	nop			;6881
	nop			;6882
	nop			;6883
	nop			;6884
	nop			;6885
	nop			;6886
	nop			;6887
	nop			;6888
	nop			;6889
	nop			;688a
	nop			;688b
	nop			;688c
	nop			;688d
	nop			;688e
	nop			;688f
	nop			;6890
	nop			;6891
	nop			;6892
	nop			;6893
	nop			;6894
	nop			;6895
	nop			;6896
	nop			;6897
	nop			;6898
	nop			;6899
	nop			;689a
	nop			;689b
	nop			;689c
	nop			;689d
	nop			;689e
	nop			;689f
	nop			;68a0
	nop			;68a1
	nop			;68a2
	nop			;68a3
	nop			;68a4
	nop			;68a5
	nop			;68a6
	nop			;68a7
	nop			;68a8
	nop			;68a9
	nop			;68aa
	nop			;68ab
	nop			;68ac
	nop			;68ad
	nop			;68ae
	nop			;68af
	nop			;68b0
	nop			;68b1
	nop			;68b2
	nop			;68b3
	nop			;68b4
	nop			;68b5
	nop			;68b6
	nop			;68b7
	nop			;68b8
	nop			;68b9
	nop			;68ba
	nop			;68bb
	nop			;68bc
	nop			;68bd
	nop			;68be
	nop			;68bf
	nop			;68c0
	nop			;68c1
	nop			;68c2
	nop			;68c3
	nop			;68c4
	nop			;68c5
	nop			;68c6
	nop			;68c7
	nop			;68c8
	nop			;68c9
	nop			;68ca
	nop			;68cb
	nop			;68cc
	nop			;68cd
	nop			;68ce
	nop			;68cf
	nop			;68d0
	nop			;68d1
	nop			;68d2
	nop			;68d3
	nop			;68d4
	nop			;68d5
	nop			;68d6
	nop			;68d7
	nop			;68d8
	nop			;68d9
	nop			;68da
	nop			;68db
	nop			;68dc
	nop			;68dd
	nop			;68de
	nop			;68df
	nop			;68e0
	nop			;68e1
	nop			;68e2
	nop			;68e3
	nop			;68e4
	nop			;68e5
	nop			;68e6
	nop			;68e7
	nop			;68e8
	nop			;68e9
	nop			;68ea
	nop			;68eb
	nop			;68ec
	nop			;68ed
	nop			;68ee
	nop			;68ef
	nop			;68f0
	nop			;68f1
	nop			;68f2
	nop			;68f3
	nop			;68f4
	nop			;68f5
	nop			;68f6
	nop			;68f7
	nop			;68f8
	nop			;68f9
	nop			;68fa
	nop			;68fb
	nop			;68fc
	nop			;68fd
	nop			;68fe
	nop			;68ff
	nop			;6900
	nop			;6901
	nop			;6902
	nop			;6903
	nop			;6904
	nop			;6905
	nop			;6906
	nop			;6907
	nop			;6908
	nop			;6909
	nop			;690a
	nop			;690b
	nop			;690c
	nop			;690d
	nop			;690e
	nop			;690f
	nop			;6910
	nop			;6911
	nop			;6912
	nop			;6913
	nop			;6914
	nop			;6915
	nop			;6916
	nop			;6917
	nop			;6918
	nop			;6919
	nop			;691a
	nop			;691b
	nop			;691c
	nop			;691d
	nop			;691e
	nop			;691f
	nop			;6920
	nop			;6921
	nop			;6922
	nop			;6923
	nop			;6924
	nop			;6925
	nop			;6926
	nop			;6927
	nop			;6928
	nop			;6929
	nop			;692a
	nop			;692b
	nop			;692c
	nop			;692d
	nop			;692e
	nop			;692f
	nop			;6930
	nop			;6931
	nop			;6932
	nop			;6933
	nop			;6934
	nop			;6935
	nop			;6936
	nop			;6937
	nop			;6938
	nop			;6939
	nop			;693a
	nop			;693b
	nop			;693c
	nop			;693d
	nop			;693e
	nop			;693f
	nop			;6940
	nop			;6941
	nop			;6942
	nop			;6943
	nop			;6944
	nop			;6945
	nop			;6946
	nop			;6947
	nop			;6948
	nop			;6949
	nop			;694a
	nop			;694b
	nop			;694c
	nop			;694d
	nop			;694e
	nop			;694f
	nop			;6950
	nop			;6951
	nop			;6952
	nop			;6953
	nop			;6954
	nop			;6955
	nop			;6956
	nop			;6957
	nop			;6958
	nop			;6959
	nop			;695a
	nop			;695b
	nop			;695c
	nop			;695d
	nop			;695e
	nop			;695f
	nop			;6960
	nop			;6961
	nop			;6962
	nop			;6963
	nop			;6964
	nop			;6965
	nop			;6966
	nop			;6967
	nop			;6968
	nop			;6969
	nop			;696a
	nop			;696b
	nop			;696c
	nop			;696d
	nop			;696e
	nop			;696f
	nop			;6970
	nop			;6971
	nop			;6972
	nop			;6973
	nop			;6974
	nop			;6975
	nop			;6976
	nop			;6977
	nop			;6978
	nop			;6979
	nop			;697a
	nop			;697b
	nop			;697c
	nop			;697d
	nop			;697e
	nop			;697f
	nop			;6980
	nop			;6981
	nop			;6982
	nop			;6983
	nop			;6984
	nop			;6985
	nop			;6986
	nop			;6987
	nop			;6988
	nop			;6989
	nop			;698a
	nop			;698b
	nop			;698c
	nop			;698d
	nop			;698e
	nop			;698f
	nop			;6990
	nop			;6991
	nop			;6992
	nop			;6993
	nop			;6994
	nop			;6995
	nop			;6996
	nop			;6997
	nop			;6998
	nop			;6999
	nop			;699a
	nop			;699b
	nop			;699c
	nop			;699d
	nop			;699e
	nop			;699f
	nop			;69a0
	nop			;69a1
	nop			;69a2
	nop			;69a3
	nop			;69a4
	nop			;69a5
	nop			;69a6
	nop			;69a7
	nop			;69a8
	nop			;69a9
	nop			;69aa
	nop			;69ab
	nop			;69ac
	nop			;69ad
	nop			;69ae
	nop			;69af
	nop			;69b0
	nop			;69b1
	nop			;69b2
	nop			;69b3
	nop			;69b4
	nop			;69b5
	nop			;69b6
	nop			;69b7
	nop			;69b8
	nop			;69b9
	nop			;69ba
	nop			;69bb
	nop			;69bc
	nop			;69bd
	nop			;69be
	nop			;69bf
	nop			;69c0
	nop			;69c1
	nop			;69c2
	nop			;69c3
	nop			;69c4
	nop			;69c5
	nop			;69c6
	nop			;69c7
	nop			;69c8
	nop			;69c9
	nop			;69ca
	nop			;69cb
	nop			;69cc
	nop			;69cd
	nop			;69ce
	nop			;69cf
	nop			;69d0
	nop			;69d1
	nop			;69d2
	nop			;69d3
	nop			;69d4
	nop			;69d5
	nop			;69d6
	nop			;69d7
	nop			;69d8
	nop			;69d9
	nop			;69da
	nop			;69db
	nop			;69dc
	nop			;69dd
	nop			;69de
	nop			;69df
	nop			;69e0
	nop			;69e1
	nop			;69e2
	nop			;69e3
	nop			;69e4
	nop			;69e5
	nop			;69e6
	nop			;69e7
	nop			;69e8
	nop			;69e9
	nop			;69ea
	nop			;69eb
	nop			;69ec
	nop			;69ed
	nop			;69ee
	nop			;69ef
	nop			;69f0
	nop			;69f1
	nop			;69f2
	nop			;69f3
	nop			;69f4
	nop			;69f5
	nop			;69f6
	nop			;69f7
	nop			;69f8
	nop			;69f9
	nop			;69fa
	nop			;69fb
	nop			;69fc
	nop			;69fd
	nop			;69fe
	nop			;69ff
	nop			;6a00
	nop			;6a01
	nop			;6a02
	nop			;6a03
	nop			;6a04
	nop			;6a05
	nop			;6a06
	nop			;6a07
	nop			;6a08
	nop			;6a09
	nop			;6a0a
	nop			;6a0b
	nop			;6a0c
	nop			;6a0d
	nop			;6a0e
	nop			;6a0f
	nop			;6a10
	nop			;6a11
	nop			;6a12
	nop			;6a13
	nop			;6a14
	nop			;6a15
	nop			;6a16
	nop			;6a17
	nop			;6a18
	nop			;6a19
	nop			;6a1a
	nop			;6a1b
	nop			;6a1c
	nop			;6a1d
	nop			;6a1e
	nop			;6a1f
	nop			;6a20
	nop			;6a21
	nop			;6a22
	nop			;6a23
	nop			;6a24
	nop			;6a25
	nop			;6a26
	nop			;6a27
	nop			;6a28
	nop			;6a29
	nop			;6a2a
	nop			;6a2b
	nop			;6a2c
	nop			;6a2d
	nop			;6a2e
	nop			;6a2f
	nop			;6a30
	nop			;6a31
	nop			;6a32
	nop			;6a33
	nop			;6a34
	nop			;6a35
	nop			;6a36
	nop			;6a37
	nop			;6a38
	nop			;6a39
	nop			;6a3a
	nop			;6a3b
	nop			;6a3c
	nop			;6a3d
	nop			;6a3e
	nop			;6a3f
	nop			;6a40
	nop			;6a41
	nop			;6a42
	nop			;6a43
	nop			;6a44
	nop			;6a45
	nop			;6a46
	nop			;6a47
	nop			;6a48
	nop			;6a49
	nop			;6a4a
	nop			;6a4b
	nop			;6a4c
	nop			;6a4d
	nop			;6a4e
	nop			;6a4f
	nop			;6a50
	nop			;6a51
	nop			;6a52
	nop			;6a53
	nop			;6a54
	nop			;6a55
	nop			;6a56
	nop			;6a57
	nop			;6a58
	nop			;6a59
	nop			;6a5a
	nop			;6a5b
	nop			;6a5c
	nop			;6a5d
	nop			;6a5e
	nop			;6a5f
	nop			;6a60
	nop			;6a61
	nop			;6a62
	nop			;6a63
	nop			;6a64
	nop			;6a65
	nop			;6a66
	nop			;6a67
	nop			;6a68
	nop			;6a69
	nop			;6a6a
	nop			;6a6b
	nop			;6a6c
	nop			;6a6d
	nop			;6a6e
	nop			;6a6f
	nop			;6a70
	nop			;6a71
	nop			;6a72
	nop			;6a73
	nop			;6a74
	nop			;6a75
	nop			;6a76
	nop			;6a77
	nop			;6a78
	nop			;6a79
	nop			;6a7a
	nop			;6a7b
	nop			;6a7c
	nop			;6a7d
	nop			;6a7e
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	nop			;6a82
	nop			;6a83
	nop			;6a84
	nop			;6a85
	nop			;6a86
	nop			;6a87
	nop			;6a88
	nop			;6a89
	nop			;6a8a
	nop			;6a8b
	nop			;6a8c
	nop			;6a8d
	nop			;6a8e
	nop			;6a8f
	nop			;6a90
	nop			;6a91
	nop			;6a92
	nop			;6a93
	nop			;6a94
	nop			;6a95
	nop			;6a96
	nop			;6a97
	nop			;6a98
	nop			;6a99
	nop			;6a9a
	nop			;6a9b
	nop			;6a9c
	nop			;6a9d
	nop			;6a9e
	nop			;6a9f
	nop			;6aa0
	nop			;6aa1
	nop			;6aa2
	nop			;6aa3
	nop			;6aa4
	nop			;6aa5
	nop			;6aa6
	nop			;6aa7
	nop			;6aa8
	nop			;6aa9
	nop			;6aaa
	nop			;6aab
	nop			;6aac
	nop			;6aad
	nop			;6aae
	nop			;6aaf
	nop			;6ab0
	nop			;6ab1
	nop			;6ab2
	nop			;6ab3
	nop			;6ab4
	nop			;6ab5
	nop			;6ab6
	nop			;6ab7
	nop			;6ab8
	nop			;6ab9
	nop			;6aba
	nop			;6abb
	nop			;6abc
	nop			;6abd
	nop			;6abe
	nop			;6abf
	nop			;6ac0
	nop			;6ac1
	nop			;6ac2
	nop			;6ac3
	nop			;6ac4
	nop			;6ac5
	nop			;6ac6
	nop			;6ac7
	nop			;6ac8
	nop			;6ac9
	nop			;6aca
	nop			;6acb
	nop			;6acc
	nop			;6acd
	nop			;6ace
	nop			;6acf
	nop			;6ad0
	nop			;6ad1
	nop			;6ad2
	nop			;6ad3
	nop			;6ad4
	nop			;6ad5
	nop			;6ad6
	nop			;6ad7
	nop			;6ad8
	nop			;6ad9
	nop			;6ada
	nop			;6adb
	nop			;6adc
	nop			;6add
	nop			;6ade
	nop			;6adf
	nop			;6ae0
	nop			;6ae1
	nop			;6ae2
	nop			;6ae3
	nop			;6ae4
	nop			;6ae5
	nop			;6ae6
	nop			;6ae7
	nop			;6ae8
	nop			;6ae9
	nop			;6aea
	nop			;6aeb
	nop			;6aec
	nop			;6aed
	nop			;6aee
	nop			;6aef
	nop			;6af0
	nop			;6af1
	nop			;6af2
	nop			;6af3
	nop			;6af4
	nop			;6af5
	nop			;6af6
	nop			;6af7
	nop			;6af8
	nop			;6af9
	nop			;6afa
	nop			;6afb
	nop			;6afc
	nop			;6afd
	nop			;6afe
	nop			;6aff
	nop			;6b00
	nop			;6b01
	nop			;6b02
	nop			;6b03
	nop			;6b04
	nop			;6b05
	nop			;6b06
	nop			;6b07
	nop			;6b08
	nop			;6b09
	nop			;6b0a
	nop			;6b0b
	nop			;6b0c
	nop			;6b0d
	nop			;6b0e
	nop			;6b0f
	nop			;6b10
	nop			;6b11
	nop			;6b12
	nop			;6b13
	nop			;6b14
	nop			;6b15
	nop			;6b16
	nop			;6b17
	nop			;6b18
	nop			;6b19
	nop			;6b1a
	nop			;6b1b
	nop			;6b1c
	nop			;6b1d
	nop			;6b1e
	nop			;6b1f
	nop			;6b20
	nop			;6b21
	nop			;6b22
	nop			;6b23
	nop			;6b24
	nop			;6b25
	nop			;6b26
	nop			;6b27
	nop			;6b28
	nop			;6b29
	nop			;6b2a
	nop			;6b2b
	nop			;6b2c
	nop			;6b2d
	nop			;6b2e
	nop			;6b2f
	nop			;6b30
	nop			;6b31
	nop			;6b32
	nop			;6b33
	nop			;6b34
	nop			;6b35
	nop			;6b36
	nop			;6b37
	nop			;6b38
	nop			;6b39
	nop			;6b3a
	nop			;6b3b
	nop			;6b3c
	nop			;6b3d
	nop			;6b3e
	nop			;6b3f
	nop			;6b40
	nop			;6b41
	nop			;6b42
	nop			;6b43
	nop			;6b44
	nop			;6b45
	nop			;6b46
	nop			;6b47
	nop			;6b48
	nop			;6b49
	nop			;6b4a
	nop			;6b4b
	nop			;6b4c
	nop			;6b4d
	nop			;6b4e
	nop			;6b4f
	nop			;6b50
	nop			;6b51
	nop			;6b52
	nop			;6b53
	nop			;6b54
	nop			;6b55
	nop			;6b56
	nop			;6b57
	nop			;6b58
	nop			;6b59
	nop			;6b5a
	nop			;6b5b
	nop			;6b5c
	nop			;6b5d
	nop			;6b5e
	nop			;6b5f
	nop			;6b60
	nop			;6b61
	nop			;6b62
	nop			;6b63
	nop			;6b64
	nop			;6b65
	nop			;6b66
	nop			;6b67
	nop			;6b68
	nop			;6b69
	nop			;6b6a
	nop			;6b6b
	nop			;6b6c
	nop			;6b6d
	nop			;6b6e
	nop			;6b6f
	nop			;6b70
	nop			;6b71
	nop			;6b72
	nop			;6b73
	nop			;6b74
	nop			;6b75
	nop			;6b76
	nop			;6b77
	nop			;6b78
	nop			;6b79
	nop			;6b7a
	nop			;6b7b
	nop			;6b7c
	nop			;6b7d
	nop			;6b7e
	nop			;6b7f
	nop			;6b80
	nop			;6b81
	nop			;6b82
	nop			;6b83
	nop			;6b84
	nop			;6b85
	nop			;6b86
	nop			;6b87
	nop			;6b88
	nop			;6b89
	nop			;6b8a
	nop			;6b8b
	nop			;6b8c
	nop			;6b8d
	nop			;6b8e
	nop			;6b8f
	nop			;6b90
	nop			;6b91
	nop			;6b92
	nop			;6b93
	nop			;6b94
	nop			;6b95
	nop			;6b96
	nop			;6b97
	nop			;6b98
	nop			;6b99
	nop			;6b9a
	nop			;6b9b
	nop			;6b9c
	nop			;6b9d
	nop			;6b9e
	nop			;6b9f
	nop			;6ba0
	nop			;6ba1
	nop			;6ba2
	nop			;6ba3
	nop			;6ba4
	nop			;6ba5
	nop			;6ba6
	nop			;6ba7
	nop			;6ba8
	nop			;6ba9
	nop			;6baa
	nop			;6bab
	nop			;6bac
	nop			;6bad
	nop			;6bae
	nop			;6baf
	nop			;6bb0
	nop			;6bb1
	nop			;6bb2
	nop			;6bb3
	nop			;6bb4
	nop			;6bb5
	nop			;6bb6
	nop			;6bb7
	nop			;6bb8
	nop			;6bb9
	nop			;6bba
	nop			;6bbb
	nop			;6bbc
	nop			;6bbd
	nop			;6bbe
	nop			;6bbf
	nop			;6bc0
	nop			;6bc1
	nop			;6bc2
	nop			;6bc3
	nop			;6bc4
	nop			;6bc5
	nop			;6bc6
	nop			;6bc7
	nop			;6bc8
	nop			;6bc9
	nop			;6bca
	nop			;6bcb
	nop			;6bcc
	nop			;6bcd
	nop			;6bce
	nop			;6bcf
	nop			;6bd0
	nop			;6bd1
	nop			;6bd2
	nop			;6bd3
	nop			;6bd4
	nop			;6bd5
	nop			;6bd6
	nop			;6bd7
	nop			;6bd8
	nop			;6bd9
	nop			;6bda
	nop			;6bdb
	nop			;6bdc
	nop			;6bdd
	nop			;6bde
	nop			;6bdf
	nop			;6be0
	nop			;6be1
	nop			;6be2
	nop			;6be3
	nop			;6be4
	nop			;6be5
	nop			;6be6
	nop			;6be7
	nop			;6be8
	nop			;6be9
	nop			;6bea
	nop			;6beb
	nop			;6bec
	nop			;6bed
	nop			;6bee
	nop			;6bef
	nop			;6bf0
	nop			;6bf1
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	nop			;6bf5
	nop			;6bf6
	nop			;6bf7
	nop			;6bf8
	nop			;6bf9
	nop			;6bfa
	nop			;6bfb
	nop			;6bfc
	nop			;6bfd
	nop			;6bfe
	nop			;6bff
	nop			;6c00
	nop			;6c01
	nop			;6c02
	nop			;6c03
	nop			;6c04
	nop			;6c05
	nop			;6c06
	nop			;6c07
	nop			;6c08
	nop			;6c09
	nop			;6c0a
	nop			;6c0b
	nop			;6c0c
	nop			;6c0d
	nop			;6c0e
	nop			;6c0f
	nop			;6c10
	nop			;6c11
	nop			;6c12
	nop			;6c13
	nop			;6c14
	nop			;6c15
	nop			;6c16
	nop			;6c17
	nop			;6c18
	nop			;6c19
	nop			;6c1a
	nop			;6c1b
	nop			;6c1c
	nop			;6c1d
	nop			;6c1e
	nop			;6c1f
	nop			;6c20
	nop			;6c21
	nop			;6c22
	nop			;6c23
	nop			;6c24
	nop			;6c25
	nop			;6c26
	nop			;6c27
	nop			;6c28
	nop			;6c29
	nop			;6c2a
	nop			;6c2b
	nop			;6c2c
	nop			;6c2d
	nop			;6c2e
	nop			;6c2f
	nop			;6c30
	nop			;6c31
	nop			;6c32
	nop			;6c33
	nop			;6c34
	nop			;6c35
	nop			;6c36
	nop			;6c37
	nop			;6c38
	nop			;6c39
	nop			;6c3a
	nop			;6c3b
	nop			;6c3c
	nop			;6c3d
	nop			;6c3e
	nop			;6c3f
	nop			;6c40
	nop			;6c41
	nop			;6c42
	nop			;6c43
	nop			;6c44
	nop			;6c45
	nop			;6c46
	nop			;6c47
	nop			;6c48
	nop			;6c49
	nop			;6c4a
	nop			;6c4b
	nop			;6c4c
	nop			;6c4d
	nop			;6c4e
	nop			;6c4f
	nop			;6c50
	nop			;6c51
	nop			;6c52
	nop			;6c53
	nop			;6c54
	nop			;6c55
	nop			;6c56
	nop			;6c57
	nop			;6c58
	nop			;6c59
	nop			;6c5a
	nop			;6c5b
	nop			;6c5c
	nop			;6c5d
	nop			;6c5e
	nop			;6c5f
	nop			;6c60
	nop			;6c61
	nop			;6c62
	nop			;6c63
	nop			;6c64
	nop			;6c65
	nop			;6c66
	nop			;6c67
	nop			;6c68
	nop			;6c69
	nop			;6c6a
	nop			;6c6b
	nop			;6c6c
	nop			;6c6d
	nop			;6c6e
	nop			;6c6f
	nop			;6c70
	nop			;6c71
	nop			;6c72
	nop			;6c73
	nop			;6c74
	nop			;6c75
	nop			;6c76
	nop			;6c77
	nop			;6c78
	nop			;6c79
	nop			;6c7a
	nop			;6c7b
	nop			;6c7c
	nop			;6c7d
	nop			;6c7e
	nop			;6c7f
	nop			;6c80
	nop			;6c81
	nop			;6c82
	nop			;6c83
	nop			;6c84
	nop			;6c85
	nop			;6c86
	nop			;6c87
	nop			;6c88
	nop			;6c89
	nop			;6c8a
	nop			;6c8b
	nop			;6c8c
	nop			;6c8d
	nop			;6c8e
	nop			;6c8f
	nop			;6c90
	nop			;6c91
	nop			;6c92
	nop			;6c93
	nop			;6c94
	nop			;6c95
	nop			;6c96
	nop			;6c97
	nop			;6c98
	nop			;6c99
	nop			;6c9a
	nop			;6c9b
	nop			;6c9c
	nop			;6c9d
	nop			;6c9e
	nop			;6c9f
	nop			;6ca0
	nop			;6ca1
	nop			;6ca2
	nop			;6ca3
	nop			;6ca4
	nop			;6ca5
	nop			;6ca6
	nop			;6ca7
	nop			;6ca8
	nop			;6ca9
	nop			;6caa
	nop			;6cab
	nop			;6cac
	nop			;6cad
	nop			;6cae
	nop			;6caf
	nop			;6cb0
	nop			;6cb1
	nop			;6cb2
	nop			;6cb3
	nop			;6cb4
	nop			;6cb5
	nop			;6cb6
	nop			;6cb7
	nop			;6cb8
	nop			;6cb9
	nop			;6cba
	nop			;6cbb
	nop			;6cbc
	nop			;6cbd
	nop			;6cbe
	nop			;6cbf
	nop			;6cc0
	nop			;6cc1
	nop			;6cc2
	nop			;6cc3
	nop			;6cc4
	nop			;6cc5
	nop			;6cc6
	nop			;6cc7
	nop			;6cc8
	nop			;6cc9
	nop			;6cca
	nop			;6ccb
	nop			;6ccc
	nop			;6ccd
	nop			;6cce
	nop			;6ccf
	nop			;6cd0
	nop			;6cd1
	nop			;6cd2
	nop			;6cd3
	nop			;6cd4
	nop			;6cd5
	nop			;6cd6
	nop			;6cd7
	nop			;6cd8
	nop			;6cd9
	nop			;6cda
	nop			;6cdb
	nop			;6cdc
	nop			;6cdd
	nop			;6cde
	nop			;6cdf
	nop			;6ce0
	nop			;6ce1
	nop			;6ce2
	nop			;6ce3
	nop			;6ce4
	nop			;6ce5
	nop			;6ce6
	nop			;6ce7
	nop			;6ce8
	nop			;6ce9
	nop			;6cea
	nop			;6ceb
	nop			;6cec
	nop			;6ced
	nop			;6cee
	nop			;6cef
	nop			;6cf0
	nop			;6cf1
	nop			;6cf2
	nop			;6cf3
	nop			;6cf4
	nop			;6cf5
	nop			;6cf6
	nop			;6cf7
	nop			;6cf8
	nop			;6cf9
	nop			;6cfa
	nop			;6cfb
	nop			;6cfc
	nop			;6cfd
	nop			;6cfe
	nop			;6cff
	nop			;6d00
	nop			;6d01
	nop			;6d02
	nop			;6d03
	nop			;6d04
	nop			;6d05
	nop			;6d06
	nop			;6d07
	nop			;6d08
	nop			;6d09
	nop			;6d0a
	nop			;6d0b
	nop			;6d0c
	nop			;6d0d
	nop			;6d0e
	nop			;6d0f
	nop			;6d10
	nop			;6d11
	nop			;6d12
	nop			;6d13
	nop			;6d14
	nop			;6d15
	nop			;6d16
	nop			;6d17
	nop			;6d18
	nop			;6d19
	nop			;6d1a
	nop			;6d1b
	nop			;6d1c
	nop			;6d1d
	nop			;6d1e
	nop			;6d1f
	nop			;6d20
	nop			;6d21
	nop			;6d22
	nop			;6d23
	nop			;6d24
	nop			;6d25
	nop			;6d26
	nop			;6d27
	nop			;6d28
	nop			;6d29
	nop			;6d2a
	nop			;6d2b
	nop			;6d2c
	nop			;6d2d
	nop			;6d2e
	nop			;6d2f
	nop			;6d30
	nop			;6d31
	nop			;6d32
	nop			;6d33
	nop			;6d34
	nop			;6d35
	nop			;6d36
	nop			;6d37
	nop			;6d38
	nop			;6d39
	nop			;6d3a
	nop			;6d3b
	nop			;6d3c
	nop			;6d3d
	nop			;6d3e
	nop			;6d3f
	nop			;6d40
	nop			;6d41
	nop			;6d42
	nop			;6d43
	nop			;6d44
	nop			;6d45
	nop			;6d46
	nop			;6d47
	nop			;6d48
	nop			;6d49
	nop			;6d4a
	nop			;6d4b
	nop			;6d4c
	nop			;6d4d
	nop			;6d4e
	nop			;6d4f
	nop			;6d50
	nop			;6d51
	nop			;6d52
	nop			;6d53
	nop			;6d54
	nop			;6d55
	nop			;6d56
	nop			;6d57
	nop			;6d58
	nop			;6d59
	nop			;6d5a
	nop			;6d5b
	nop			;6d5c
	nop			;6d5d
	nop			;6d5e
	nop			;6d5f
	nop			;6d60
	nop			;6d61
	nop			;6d62
	nop			;6d63
	nop			;6d64
	nop			;6d65
	nop			;6d66
	nop			;6d67
	nop			;6d68
	nop			;6d69
	nop			;6d6a
	nop			;6d6b
	nop			;6d6c
	nop			;6d6d
	nop			;6d6e
	nop			;6d6f
	nop			;6d70
	nop			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	nop			;6d76
	nop			;6d77
	nop			;6d78
	nop			;6d79
	nop			;6d7a
	nop			;6d7b
	nop			;6d7c
	nop			;6d7d
	nop			;6d7e
	nop			;6d7f
	nop			;6d80
	nop			;6d81
	nop			;6d82
	nop			;6d83
	nop			;6d84
	nop			;6d85
	nop			;6d86
	nop			;6d87
	nop			;6d88
	nop			;6d89
	nop			;6d8a
	nop			;6d8b
	nop			;6d8c
	nop			;6d8d
	nop			;6d8e
	nop			;6d8f
	nop			;6d90
	nop			;6d91
	nop			;6d92
	nop			;6d93
	nop			;6d94
	nop			;6d95
	nop			;6d96
	nop			;6d97
	nop			;6d98
	nop			;6d99
	nop			;6d9a
	nop			;6d9b
	nop			;6d9c
	nop			;6d9d
	nop			;6d9e
	nop			;6d9f
	nop			;6da0
	nop			;6da1
	nop			;6da2
	nop			;6da3
	nop			;6da4
	nop			;6da5
	nop			;6da6
	nop			;6da7
	nop			;6da8
	nop			;6da9
	nop			;6daa
	nop			;6dab
	nop			;6dac
	nop			;6dad
	nop			;6dae
	nop			;6daf
	nop			;6db0
	nop			;6db1
	nop			;6db2
	nop			;6db3
	nop			;6db4
	nop			;6db5
	nop			;6db6
	nop			;6db7
	nop			;6db8
	nop			;6db9
	nop			;6dba
	nop			;6dbb
	nop			;6dbc
	nop			;6dbd
	nop			;6dbe
	nop			;6dbf
	nop			;6dc0
	nop			;6dc1
	nop			;6dc2
	nop			;6dc3
	nop			;6dc4
	nop			;6dc5
	nop			;6dc6
	nop			;6dc7
	nop			;6dc8
	nop			;6dc9
	nop			;6dca
	nop			;6dcb
	nop			;6dcc
	nop			;6dcd
	nop			;6dce
	nop			;6dcf
	nop			;6dd0
	nop			;6dd1
	nop			;6dd2
	nop			;6dd3
	nop			;6dd4
	nop			;6dd5
	nop			;6dd6
	nop			;6dd7
	nop			;6dd8
	nop			;6dd9
	nop			;6dda
	nop			;6ddb
	nop			;6ddc
	nop			;6ddd
	nop			;6dde
	nop			;6ddf
	nop			;6de0
	nop			;6de1
	nop			;6de2
	nop			;6de3
	nop			;6de4
	nop			;6de5
	nop			;6de6
	nop			;6de7
	nop			;6de8
	nop			;6de9
	nop			;6dea
	nop			;6deb
	nop			;6dec
	nop			;6ded
	nop			;6dee
	nop			;6def
	nop			;6df0
	nop			;6df1
	nop			;6df2
	nop			;6df3
	nop			;6df4
	nop			;6df5
	nop			;6df6
	nop			;6df7
	nop			;6df8
	nop			;6df9
	nop			;6dfa
	nop			;6dfb
	nop			;6dfc
	nop			;6dfd
	nop			;6dfe
	nop			;6dff
	nop			;6e00
	nop			;6e01
	nop			;6e02
	nop			;6e03
	nop			;6e04
	nop			;6e05
	nop			;6e06
	nop			;6e07
	nop			;6e08
	nop			;6e09
	nop			;6e0a
	nop			;6e0b
	nop			;6e0c
	nop			;6e0d
	nop			;6e0e
	nop			;6e0f
	nop			;6e10
	nop			;6e11
	nop			;6e12
	nop			;6e13
	nop			;6e14
	nop			;6e15
	nop			;6e16
	nop			;6e17
	nop			;6e18
	nop			;6e19
	nop			;6e1a
	nop			;6e1b
	nop			;6e1c
	nop			;6e1d
	nop			;6e1e
	nop			;6e1f
	nop			;6e20
	nop			;6e21
	nop			;6e22
	nop			;6e23
	nop			;6e24
	nop			;6e25
	nop			;6e26
	nop			;6e27
	nop			;6e28
	nop			;6e29
	nop			;6e2a
	nop			;6e2b
	nop			;6e2c
	nop			;6e2d
	nop			;6e2e
	nop			;6e2f
	nop			;6e30
	nop			;6e31
	nop			;6e32
	nop			;6e33
	nop			;6e34
	nop			;6e35
	nop			;6e36
	nop			;6e37
	nop			;6e38
	nop			;6e39
	nop			;6e3a
	nop			;6e3b
	nop			;6e3c
	nop			;6e3d
	nop			;6e3e
	nop			;6e3f
	nop			;6e40
	nop			;6e41
	nop			;6e42
	nop			;6e43
	nop			;6e44
	nop			;6e45
	nop			;6e46
	nop			;6e47
	nop			;6e48
	nop			;6e49
	nop			;6e4a
	nop			;6e4b
	nop			;6e4c
	nop			;6e4d
	nop			;6e4e
	nop			;6e4f
	nop			;6e50
	nop			;6e51
	nop			;6e52
	nop			;6e53
	nop			;6e54
	nop			;6e55
	nop			;6e56
	nop			;6e57
	nop			;6e58
	nop			;6e59
	nop			;6e5a
	nop			;6e5b
	nop			;6e5c
	nop			;6e5d
	nop			;6e5e
	nop			;6e5f
	nop			;6e60
	nop			;6e61
	nop			;6e62
	nop			;6e63
	nop			;6e64
	nop			;6e65
	nop			;6e66
	nop			;6e67
	nop			;6e68
	nop			;6e69
	nop			;6e6a
	nop			;6e6b
	nop			;6e6c
	nop			;6e6d
	nop			;6e6e
	nop			;6e6f
	nop			;6e70
	nop			;6e71
	nop			;6e72
	nop			;6e73
	nop			;6e74
	nop			;6e75
	nop			;6e76
	nop			;6e77
	nop			;6e78
	nop			;6e79
	nop			;6e7a
	nop			;6e7b
	nop			;6e7c
	nop			;6e7d
	nop			;6e7e
	nop			;6e7f
	nop			;6e80
	nop			;6e81
	nop			;6e82
	nop			;6e83
	nop			;6e84
	nop			;6e85
	nop			;6e86
	nop			;6e87
	nop			;6e88
	nop			;6e89
	nop			;6e8a
	nop			;6e8b
	nop			;6e8c
	nop			;6e8d
	nop			;6e8e
	nop			;6e8f
	nop			;6e90
	nop			;6e91
	nop			;6e92
	nop			;6e93
	nop			;6e94
	nop			;6e95
	nop			;6e96
	nop			;6e97
	nop			;6e98
	nop			;6e99
	nop			;6e9a
	nop			;6e9b
	nop			;6e9c
	nop			;6e9d
	nop			;6e9e
	nop			;6e9f
	nop			;6ea0
	nop			;6ea1
	nop			;6ea2
	nop			;6ea3
	nop			;6ea4
	nop			;6ea5
	nop			;6ea6
	nop			;6ea7
	nop			;6ea8
	nop			;6ea9
	nop			;6eaa
	nop			;6eab
	nop			;6eac
	nop			;6ead
	nop			;6eae
	nop			;6eaf
	nop			;6eb0
	nop			;6eb1
	nop			;6eb2
	nop			;6eb3
	nop			;6eb4
	nop			;6eb5
	nop			;6eb6
	nop			;6eb7
	nop			;6eb8
	nop			;6eb9
	nop			;6eba
	nop			;6ebb
	nop			;6ebc
	nop			;6ebd
	nop			;6ebe
	nop			;6ebf
	nop			;6ec0
	nop			;6ec1
	nop			;6ec2
	nop			;6ec3
	nop			;6ec4
	nop			;6ec5
	nop			;6ec6
	nop			;6ec7
	nop			;6ec8
	nop			;6ec9
	nop			;6eca
	nop			;6ecb
	nop			;6ecc
	nop			;6ecd
	nop			;6ece
	nop			;6ecf
	nop			;6ed0
	nop			;6ed1
	nop			;6ed2
	nop			;6ed3
	nop			;6ed4
	nop			;6ed5
	nop			;6ed6
	nop			;6ed7
	nop			;6ed8
	nop			;6ed9
	nop			;6eda
	nop			;6edb
	nop			;6edc
	nop			;6edd
	nop			;6ede
	nop			;6edf
	nop			;6ee0
	nop			;6ee1
	nop			;6ee2
	nop			;6ee3
	nop			;6ee4
	nop			;6ee5
	nop			;6ee6
	nop			;6ee7
	nop			;6ee8
	nop			;6ee9
	nop			;6eea
	nop			;6eeb
	nop			;6eec
	nop			;6eed
	nop			;6eee
	nop			;6eef
	nop			;6ef0
	nop			;6ef1
	nop			;6ef2
	nop			;6ef3
	nop			;6ef4
	nop			;6ef5
	nop			;6ef6
	nop			;6ef7
	nop			;6ef8
	nop			;6ef9
	nop			;6efa
	nop			;6efb
	nop			;6efc
	nop			;6efd
	nop			;6efe
	nop			;6eff
	nop			;6f00
	nop			;6f01
	nop			;6f02
	nop			;6f03
	nop			;6f04
	nop			;6f05
	nop			;6f06
	nop			;6f07
	nop			;6f08
	nop			;6f09
	nop			;6f0a
	nop			;6f0b
	nop			;6f0c
	nop			;6f0d
	nop			;6f0e
	nop			;6f0f
	nop			;6f10
	nop			;6f11
	nop			;6f12
	nop			;6f13
	nop			;6f14
	nop			;6f15
	nop			;6f16
	nop			;6f17
	nop			;6f18
	nop			;6f19
	nop			;6f1a
	nop			;6f1b
	nop			;6f1c
	nop			;6f1d
	nop			;6f1e
	nop			;6f1f
	nop			;6f20
	nop			;6f21
	nop			;6f22
	nop			;6f23
	nop			;6f24
	nop			;6f25
	nop			;6f26
	nop			;6f27
	nop			;6f28
	nop			;6f29
	nop			;6f2a
	nop			;6f2b
	nop			;6f2c
	nop			;6f2d
	nop			;6f2e
	nop			;6f2f
	nop			;6f30
	nop			;6f31
	nop			;6f32
	nop			;6f33
	nop			;6f34
	nop			;6f35
	nop			;6f36
	nop			;6f37
	nop			;6f38
	nop			;6f39
	nop			;6f3a
	nop			;6f3b
	nop			;6f3c
	nop			;6f3d
	nop			;6f3e
	nop			;6f3f
	nop			;6f40
	nop			;6f41
	nop			;6f42
	nop			;6f43
	nop			;6f44
	nop			;6f45
	nop			;6f46
	nop			;6f47
	nop			;6f48
	nop			;6f49
	nop			;6f4a
	nop			;6f4b
	nop			;6f4c
	nop			;6f4d
	nop			;6f4e
	nop			;6f4f
	nop			;6f50
	nop			;6f51
	nop			;6f52
	nop			;6f53
	nop			;6f54
	nop			;6f55
	nop			;6f56
	nop			;6f57
	nop			;6f58
	nop			;6f59
	nop			;6f5a
	nop			;6f5b
	nop			;6f5c
	nop			;6f5d
	nop			;6f5e
	nop			;6f5f
	nop			;6f60
	nop			;6f61
	nop			;6f62
	nop			;6f63
	nop			;6f64
	nop			;6f65
	nop			;6f66
	nop			;6f67
	nop			;6f68
	nop			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	nop			;6f6d
	nop			;6f6e
	nop			;6f6f
	nop			;6f70
	nop			;6f71
	nop			;6f72
	nop			;6f73
	nop			;6f74
	nop			;6f75
	nop			;6f76
	nop			;6f77
	nop			;6f78
	nop			;6f79
	nop			;6f7a
	nop			;6f7b
	nop			;6f7c
	nop			;6f7d
	nop			;6f7e
	nop			;6f7f
	nop			;6f80
	nop			;6f81
	nop			;6f82
	nop			;6f83
	nop			;6f84
	nop			;6f85
	nop			;6f86
	nop			;6f87
	nop			;6f88
	nop			;6f89
	nop			;6f8a
	nop			;6f8b
	nop			;6f8c
	nop			;6f8d
	nop			;6f8e
	nop			;6f8f
	nop			;6f90
	nop			;6f91
	nop			;6f92
	nop			;6f93
	nop			;6f94
	nop			;6f95
	nop			;6f96
	nop			;6f97
	nop			;6f98
	nop			;6f99
	nop			;6f9a
	nop			;6f9b
	nop			;6f9c
	nop			;6f9d
	nop			;6f9e
	nop			;6f9f
	nop			;6fa0
	nop			;6fa1
	nop			;6fa2
	nop			;6fa3
	nop			;6fa4
	nop			;6fa5
	nop			;6fa6
	nop			;6fa7
	nop			;6fa8
	nop			;6fa9
	nop			;6faa
	nop			;6fab
	nop			;6fac
	nop			;6fad
	nop			;6fae
	nop			;6faf
	nop			;6fb0
	nop			;6fb1
	nop			;6fb2
	nop			;6fb3
	nop			;6fb4
	nop			;6fb5
	nop			;6fb6
	nop			;6fb7
	nop			;6fb8
	nop			;6fb9
	nop			;6fba
	nop			;6fbb
	nop			;6fbc
	nop			;6fbd
	nop			;6fbe
	nop			;6fbf
	nop			;6fc0
	nop			;6fc1
	nop			;6fc2
	nop			;6fc3
	nop			;6fc4
	nop			;6fc5
	nop			;6fc6
	nop			;6fc7
	nop			;6fc8
	nop			;6fc9
	nop			;6fca
	nop			;6fcb
	nop			;6fcc
	nop			;6fcd
	nop			;6fce
	nop			;6fcf
	nop			;6fd0
	nop			;6fd1
	nop			;6fd2
	nop			;6fd3
	nop			;6fd4
	nop			;6fd5
	nop			;6fd6
	nop			;6fd7
	nop			;6fd8
	nop			;6fd9
	nop			;6fda
	nop			;6fdb
	nop			;6fdc
	nop			;6fdd
	nop			;6fde
	nop			;6fdf
	nop			;6fe0
	nop			;6fe1
	nop			;6fe2
	nop			;6fe3
	nop			;6fe4
	nop			;6fe5
	nop			;6fe6
	nop			;6fe7
	nop			;6fe8
	nop			;6fe9
	nop			;6fea
	nop			;6feb
	nop			;6fec
	nop			;6fed
	nop			;6fee
	nop			;6fef
	nop			;6ff0
	nop			;6ff1
	nop			;6ff2
	nop			;6ff3
	nop			;6ff4
	nop			;6ff5
	nop			;6ff6
	nop			;6ff7
	nop			;6ff8
	nop			;6ff9
	nop			;6ffa
	nop			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	nop			;6fff
l7000h:
	push hl			;7000
	ld d,d			;7001
	xor e			;7002
	ld d,d			;7003
	ld e,e			;7004
	ld d,e			;7005
	add a,e			;7006
	ld d,h			;7007
	ld c,l			;7008
	ld d,c			;7009
	call c,sub_544fh		;700a
	ld d,b			;700d
	and c			;700e
	ld d,b			;700f
	ld a,(bc)			;7010
	inc b			;7011
	or (hl)			;7012
	dec b			;7013
	or (hl)			;7014
	dec b			;7015
	or (hl)			;7016
	dec b			;7017
l7018h:
	rst 38h			;7018
	rst 38h			;7019
	rst 38h			;701a
	rst 38h			;701b
	rst 38h			;701c
	rst 38h			;701d
	rst 38h			;701e
	rst 38h			;701f
	rst 38h			;7020
	rst 38h			;7021
	rst 38h			;7022
	rst 38h			;7023
	rst 38h			;7024
	rst 38h			;7025
	rst 38h			;7026
	rst 38h			;7027
	rst 38h			;7028
	rst 38h			;7029
	rst 38h			;702a
	rst 38h			;702b
	rst 38h			;702c
	rst 38h			;702d
	rst 38h			;702e
	rst 38h			;702f
	rst 38h			;7030
	rst 38h			;7031
	rst 38h			;7032
	rst 38h			;7033
	rst 38h			;7034
	rst 38h			;7035
	rst 38h			;7036
	rst 38h			;7037
	rst 38h			;7038
	rst 38h			;7039
	rst 38h			;703a
	rst 38h			;703b
	rst 38h			;703c
	rst 38h			;703d
	rst 38h			;703e
	rst 38h			;703f
	rst 38h			;7040
	rst 38h			;7041
	rst 38h			;7042
	rst 38h			;7043
	rst 38h			;7044
	rst 38h			;7045
	rst 38h			;7046
	rst 38h			;7047
	rst 38h			;7048
	rst 38h			;7049
	rst 38h			;704a
	rst 38h			;704b
	rst 38h			;704c
	rst 38h			;704d
	rst 38h			;704e
	rst 38h			;704f
	rst 38h			;7050
	rst 38h			;7051
	rst 38h			;7052
	rst 38h			;7053
	rst 38h			;7054
	rst 38h			;7055
	rst 38h			;7056
	rst 38h			;7057
	rst 38h			;7058
	rst 38h			;7059
	rst 38h			;705a
	rst 38h			;705b
	rst 38h			;705c
	rst 38h			;705d
	rst 38h			;705e
	rst 38h			;705f
	rst 38h			;7060
	rst 38h			;7061
	rst 38h			;7062
	rst 38h			;7063
	rst 38h			;7064
	rst 38h			;7065
	rst 38h			;7066
	rst 38h			;7067
	rst 38h			;7068
	rst 38h			;7069
	rst 38h			;706a
	rst 38h			;706b
	rst 38h			;706c
	rst 38h			;706d
	rst 38h			;706e
	rst 38h			;706f
	rst 38h			;7070
	rst 38h			;7071
	rst 38h			;7072
	rst 38h			;7073
	rst 38h			;7074
	rst 38h			;7075
	rst 38h			;7076
	rst 38h			;7077
	rst 38h			;7078
	rst 38h			;7079
	rst 38h			;707a
	rst 38h			;707b
	rst 38h			;707c
	rst 38h			;707d
	rst 38h			;707e
	rst 38h			;707f
	rst 38h			;7080
	rst 38h			;7081
	rst 38h			;7082
	rst 38h			;7083
	rst 38h			;7084
	rst 38h			;7085
	rst 38h			;7086
	rst 38h			;7087
	rst 38h			;7088
	rst 38h			;7089
	rst 38h			;708a
	rst 38h			;708b
	rst 38h			;708c
	rst 38h			;708d
	rst 38h			;708e
	rst 38h			;708f
	rst 38h			;7090
	rst 38h			;7091
	rst 38h			;7092
	rst 38h			;7093
	rst 38h			;7094
	rst 38h			;7095
	rst 38h			;7096
	rst 38h			;7097
	rst 38h			;7098
	rst 38h			;7099
	rst 38h			;709a
	rst 38h			;709b
	rst 38h			;709c
	rst 38h			;709d
	rst 38h			;709e
	rst 38h			;709f
	rst 38h			;70a0
	rst 38h			;70a1
	rst 38h			;70a2
	rst 38h			;70a3
	rst 38h			;70a4
	rst 38h			;70a5
	rst 38h			;70a6
	rst 38h			;70a7
	rst 38h			;70a8
	rst 38h			;70a9
	rst 38h			;70aa
	rst 38h			;70ab
	rst 38h			;70ac
	rst 38h			;70ad
	rst 38h			;70ae
	rst 38h			;70af
	rst 38h			;70b0
	rst 38h			;70b1
	rst 38h			;70b2
	rst 38h			;70b3
	rst 38h			;70b4
	rst 38h			;70b5
	rst 38h			;70b6
	rst 38h			;70b7
	rst 38h			;70b8
	rst 38h			;70b9
	rst 38h			;70ba
	rst 38h			;70bb
	rst 38h			;70bc
	rst 38h			;70bd
	rst 38h			;70be
	rst 38h			;70bf
	rst 38h			;70c0
	rst 38h			;70c1
	rst 38h			;70c2
	rst 38h			;70c3
	rst 38h			;70c4
	rst 38h			;70c5
	rst 38h			;70c6
	rst 38h			;70c7
	rst 38h			;70c8
	rst 38h			;70c9
	rst 38h			;70ca
	rst 38h			;70cb
	rst 38h			;70cc
	rst 38h			;70cd
	rst 38h			;70ce
	rst 38h			;70cf
	rst 38h			;70d0
	rst 38h			;70d1
	rst 38h			;70d2
	rst 38h			;70d3
	rst 38h			;70d4
	rst 38h			;70d5
	rst 38h			;70d6
	rst 38h			;70d7
	rst 38h			;70d8
	rst 38h			;70d9
	rst 38h			;70da
	rst 38h			;70db
	rst 38h			;70dc
	rst 38h			;70dd
	rst 38h			;70de
	rst 38h			;70df
	rst 38h			;70e0
	rst 38h			;70e1
	rst 38h			;70e2
	rst 38h			;70e3
	rst 38h			;70e4
	rst 38h			;70e5
	rst 38h			;70e6
	rst 38h			;70e7
	rst 38h			;70e8
	rst 38h			;70e9
	rst 38h			;70ea
	rst 38h			;70eb
	rst 38h			;70ec
	rst 38h			;70ed
	rst 38h			;70ee
	rst 38h			;70ef
	rst 38h			;70f0
	rst 38h			;70f1
	rst 38h			;70f2
	rst 38h			;70f3
	rst 38h			;70f4
	rst 38h			;70f5
	rst 38h			;70f6
	rst 38h			;70f7
	rst 38h			;70f8
	rst 38h			;70f9
	rst 38h			;70fa
	rst 38h			;70fb
	rst 38h			;70fc
	rst 38h			;70fd
	rst 38h			;70fe
	rst 38h			;70ff
	rst 38h			;7100
	rst 38h			;7101
	rst 38h			;7102
	rst 38h			;7103
	rst 38h			;7104
	rst 38h			;7105
	rst 38h			;7106
	rst 38h			;7107
	rst 38h			;7108
	rst 38h			;7109
	rst 38h			;710a
	rst 38h			;710b
	rst 38h			;710c
	rst 38h			;710d
	rst 38h			;710e
	rst 38h			;710f
	rst 38h			;7110
	rst 38h			;7111
	rst 38h			;7112
	rst 38h			;7113
	rst 38h			;7114
	rst 38h			;7115
	rst 38h			;7116
	rst 38h			;7117
	rst 38h			;7118
	rst 38h			;7119
	rst 38h			;711a
	rst 38h			;711b
	rst 38h			;711c
	rst 38h			;711d
	rst 38h			;711e
	rst 38h			;711f
	rst 38h			;7120
	rst 38h			;7121
	rst 38h			;7122
	rst 38h			;7123
	rst 38h			;7124
	rst 38h			;7125
	rst 38h			;7126
	rst 38h			;7127
	rst 38h			;7128
	rst 38h			;7129
	rst 38h			;712a
	rst 38h			;712b
	rst 38h			;712c
	rst 38h			;712d
	rst 38h			;712e
	rst 38h			;712f
	rst 38h			;7130
	rst 38h			;7131
	rst 38h			;7132
	rst 38h			;7133
	rst 38h			;7134
	rst 38h			;7135
	rst 38h			;7136
	rst 38h			;7137
	rst 38h			;7138
	rst 38h			;7139
	rst 38h			;713a
	rst 38h			;713b
	rst 38h			;713c
	rst 38h			;713d
	rst 38h			;713e
	rst 38h			;713f
	rst 38h			;7140
	rst 38h			;7141
	rst 38h			;7142
	rst 38h			;7143
	rst 38h			;7144
	rst 38h			;7145
	rst 38h			;7146
	rst 38h			;7147
	rst 38h			;7148
	rst 38h			;7149
	rst 38h			;714a
	rst 38h			;714b
	rst 38h			;714c
	rst 38h			;714d
	rst 38h			;714e
	rst 38h			;714f
	rst 38h			;7150
	rst 38h			;7151
	rst 38h			;7152
	rst 38h			;7153
	rst 38h			;7154
	rst 38h			;7155
	rst 38h			;7156
	rst 38h			;7157
	rst 38h			;7158
	rst 38h			;7159
	rst 38h			;715a
	rst 38h			;715b
	rst 38h			;715c
	rst 38h			;715d
	rst 38h			;715e
	rst 38h			;715f
	rst 38h			;7160
	rst 38h			;7161
	rst 38h			;7162
	rst 38h			;7163
	rst 38h			;7164
	rst 38h			;7165
	rst 38h			;7166
	rst 38h			;7167
	rst 38h			;7168
	rst 38h			;7169
	rst 38h			;716a
	rst 38h			;716b
	rst 38h			;716c
	rst 38h			;716d
	rst 38h			;716e
	rst 38h			;716f
	rst 38h			;7170
	rst 38h			;7171
	rst 38h			;7172
	rst 38h			;7173
	rst 38h			;7174
	rst 38h			;7175
	rst 38h			;7176
	rst 38h			;7177
	rst 38h			;7178
	rst 38h			;7179
	rst 38h			;717a
	rst 38h			;717b
	rst 38h			;717c
	rst 38h			;717d
	rst 38h			;717e
	rst 38h			;717f
	rst 38h			;7180
	rst 38h			;7181
	rst 38h			;7182
	rst 38h			;7183
	rst 38h			;7184
	rst 38h			;7185
	rst 38h			;7186
	rst 38h			;7187
	rst 38h			;7188
	rst 38h			;7189
	rst 38h			;718a
	rst 38h			;718b
	rst 38h			;718c
	rst 38h			;718d
	rst 38h			;718e
	rst 38h			;718f
	rst 38h			;7190
	rst 38h			;7191
	rst 38h			;7192
	rst 38h			;7193
	rst 38h			;7194
	rst 38h			;7195
	rst 38h			;7196
	rst 38h			;7197
	rst 38h			;7198
	rst 38h			;7199
	rst 38h			;719a
	rst 38h			;719b
	rst 38h			;719c
	rst 38h			;719d
	rst 38h			;719e
	rst 38h			;719f
	rst 38h			;71a0
	rst 38h			;71a1
	rst 38h			;71a2
	rst 38h			;71a3
	rst 38h			;71a4
	rst 38h			;71a5
	rst 38h			;71a6
	rst 38h			;71a7
	rst 38h			;71a8
	rst 38h			;71a9
	rst 38h			;71aa
	rst 38h			;71ab
	rst 38h			;71ac
	rst 38h			;71ad
	rst 38h			;71ae
	rst 38h			;71af
	rst 38h			;71b0
	rst 38h			;71b1
	rst 38h			;71b2
	rst 38h			;71b3
	rst 38h			;71b4
	rst 38h			;71b5
	rst 38h			;71b6
	rst 38h			;71b7
	rst 38h			;71b8
	rst 38h			;71b9
	rst 38h			;71ba
	rst 38h			;71bb
	rst 38h			;71bc
	rst 38h			;71bd
	rst 38h			;71be
	rst 38h			;71bf
	rst 38h			;71c0
	rst 38h			;71c1
	rst 38h			;71c2
	rst 38h			;71c3
	rst 38h			;71c4
	rst 38h			;71c5
	rst 38h			;71c6
	rst 38h			;71c7
	rst 38h			;71c8
	rst 38h			;71c9
	rst 38h			;71ca
	rst 38h			;71cb
	rst 38h			;71cc
	rst 38h			;71cd
	rst 38h			;71ce
	rst 38h			;71cf
	rst 38h			;71d0
	rst 38h			;71d1
	rst 38h			;71d2
	rst 38h			;71d3
	rst 38h			;71d4
	rst 38h			;71d5
	rst 38h			;71d6
	rst 38h			;71d7
	rst 38h			;71d8
	rst 38h			;71d9
	rst 38h			;71da
	rst 38h			;71db
	rst 38h			;71dc
	rst 38h			;71dd
	rst 38h			;71de
	rst 38h			;71df
	rst 38h			;71e0
	rst 38h			;71e1
	rst 38h			;71e2
	rst 38h			;71e3
	rst 38h			;71e4
	rst 38h			;71e5
	rst 38h			;71e6
	rst 38h			;71e7
	rst 38h			;71e8
	rst 38h			;71e9
	rst 38h			;71ea
	rst 38h			;71eb
	rst 38h			;71ec
	rst 38h			;71ed
	rst 38h			;71ee
	rst 38h			;71ef
	rst 38h			;71f0
	rst 38h			;71f1
	rst 38h			;71f2
	rst 38h			;71f3
	rst 38h			;71f4
	rst 38h			;71f5
	rst 38h			;71f6
	rst 38h			;71f7
	rst 38h			;71f8
	rst 38h			;71f9
	rst 38h			;71fa
	rst 38h			;71fb
	rst 38h			;71fc
	rst 38h			;71fd
	rst 38h			;71fe
	rst 38h			;71ff
	rst 38h			;7200
	rst 38h			;7201
	rst 38h			;7202
	rst 38h			;7203
	rst 38h			;7204
	rst 38h			;7205
	rst 38h			;7206
	rst 38h			;7207
	rst 38h			;7208
	rst 38h			;7209
	rst 38h			;720a
	rst 38h			;720b
	rst 38h			;720c
	rst 38h			;720d
	rst 38h			;720e
	rst 38h			;720f
	rst 38h			;7210
	rst 38h			;7211
	rst 38h			;7212
	rst 38h			;7213
	rst 38h			;7214
	rst 38h			;7215
	rst 38h			;7216
	rst 38h			;7217
	rst 38h			;7218
	rst 38h			;7219
	rst 38h			;721a
	rst 38h			;721b
	rst 38h			;721c
	rst 38h			;721d
	rst 38h			;721e
	rst 38h			;721f
	rst 38h			;7220
	rst 38h			;7221
	rst 38h			;7222
	rst 38h			;7223
	rst 38h			;7224
	rst 38h			;7225
	rst 38h			;7226
	rst 38h			;7227
	rst 38h			;7228
	rst 38h			;7229
	rst 38h			;722a
	rst 38h			;722b
	rst 38h			;722c
	rst 38h			;722d
	rst 38h			;722e
	rst 38h			;722f
	rst 38h			;7230
	rst 38h			;7231
	rst 38h			;7232
	rst 38h			;7233
	rst 38h			;7234
	rst 38h			;7235
	rst 38h			;7236
	rst 38h			;7237
	rst 38h			;7238
	rst 38h			;7239
	rst 38h			;723a
	rst 38h			;723b
	rst 38h			;723c
	rst 38h			;723d
	rst 38h			;723e
	rst 38h			;723f
	rst 38h			;7240
	rst 38h			;7241
	rst 38h			;7242
	rst 38h			;7243
	rst 38h			;7244
	rst 38h			;7245
	rst 38h			;7246
	rst 38h			;7247
	rst 38h			;7248
	rst 38h			;7249
	rst 38h			;724a
	rst 38h			;724b
	rst 38h			;724c
	rst 38h			;724d
	rst 38h			;724e
	rst 38h			;724f
	rst 38h			;7250
	rst 38h			;7251
	rst 38h			;7252
	rst 38h			;7253
	rst 38h			;7254
	rst 38h			;7255
	rst 38h			;7256
	rst 38h			;7257
	rst 38h			;7258
	rst 38h			;7259
	rst 38h			;725a
	rst 38h			;725b
	rst 38h			;725c
	rst 38h			;725d
	rst 38h			;725e
	rst 38h			;725f
	rst 38h			;7260
	rst 38h			;7261
	rst 38h			;7262
	rst 38h			;7263
	rst 38h			;7264
	rst 38h			;7265
	rst 38h			;7266
	rst 38h			;7267
	rst 38h			;7268
	rst 38h			;7269
	rst 38h			;726a
	rst 38h			;726b
	rst 38h			;726c
	rst 38h			;726d
	rst 38h			;726e
	rst 38h			;726f
	rst 38h			;7270
	rst 38h			;7271
	rst 38h			;7272
	rst 38h			;7273
	rst 38h			;7274
	rst 38h			;7275
	rst 38h			;7276
	rst 38h			;7277
	rst 38h			;7278
	rst 38h			;7279
	rst 38h			;727a
	rst 38h			;727b
	rst 38h			;727c
	rst 38h			;727d
	rst 38h			;727e
	rst 38h			;727f
	rst 38h			;7280
	rst 38h			;7281
	rst 38h			;7282
	rst 38h			;7283
	rst 38h			;7284
	rst 38h			;7285
	rst 38h			;7286
	rst 38h			;7287
	rst 38h			;7288
	rst 38h			;7289
	rst 38h			;728a
	rst 38h			;728b
	rst 38h			;728c
	rst 38h			;728d
	rst 38h			;728e
	rst 38h			;728f
	rst 38h			;7290
	rst 38h			;7291
	rst 38h			;7292
	rst 38h			;7293
	rst 38h			;7294
	rst 38h			;7295
	rst 38h			;7296
	rst 38h			;7297
	rst 38h			;7298
	rst 38h			;7299
	rst 38h			;729a
	rst 38h			;729b
	rst 38h			;729c
	rst 38h			;729d
	rst 38h			;729e
	rst 38h			;729f
	rst 38h			;72a0
	rst 38h			;72a1
	rst 38h			;72a2
	rst 38h			;72a3
	rst 38h			;72a4
	rst 38h			;72a5
	rst 38h			;72a6
	rst 38h			;72a7
	rst 38h			;72a8
	rst 38h			;72a9
	rst 38h			;72aa
	rst 38h			;72ab
	rst 38h			;72ac
	rst 38h			;72ad
	rst 38h			;72ae
	rst 38h			;72af
	rst 38h			;72b0
	rst 38h			;72b1
	rst 38h			;72b2
	rst 38h			;72b3
	rst 38h			;72b4
	rst 38h			;72b5
	rst 38h			;72b6
	rst 38h			;72b7
	rst 38h			;72b8
	rst 38h			;72b9
	rst 38h			;72ba
	rst 38h			;72bb
	rst 38h			;72bc
	rst 38h			;72bd
	rst 38h			;72be
	rst 38h			;72bf
	rst 38h			;72c0
	rst 38h			;72c1
	rst 38h			;72c2
	rst 38h			;72c3
	rst 38h			;72c4
	rst 38h			;72c5
	rst 38h			;72c6
	rst 38h			;72c7
	rst 38h			;72c8
	rst 38h			;72c9
	rst 38h			;72ca
	rst 38h			;72cb
	rst 38h			;72cc
	rst 38h			;72cd
	rst 38h			;72ce
	rst 38h			;72cf
	rst 38h			;72d0
	rst 38h			;72d1
	rst 38h			;72d2
	rst 38h			;72d3
	rst 38h			;72d4
	rst 38h			;72d5
	rst 38h			;72d6
	rst 38h			;72d7
	rst 38h			;72d8
	rst 38h			;72d9
	rst 38h			;72da
	rst 38h			;72db
	rst 38h			;72dc
	rst 38h			;72dd
	rst 38h			;72de
	rst 38h			;72df
	rst 38h			;72e0
	rst 38h			;72e1
	rst 38h			;72e2
	rst 38h			;72e3
	rst 38h			;72e4
	rst 38h			;72e5
	rst 38h			;72e6
	rst 38h			;72e7
	rst 38h			;72e8
	rst 38h			;72e9
	rst 38h			;72ea
	rst 38h			;72eb
	rst 38h			;72ec
	rst 38h			;72ed
	rst 38h			;72ee
	rst 38h			;72ef
	rst 38h			;72f0
	rst 38h			;72f1
	rst 38h			;72f2
	rst 38h			;72f3
	rst 38h			;72f4
	rst 38h			;72f5
	rst 38h			;72f6
	rst 38h			;72f7
	rst 38h			;72f8
	rst 38h			;72f9
	rst 38h			;72fa
	rst 38h			;72fb
	rst 38h			;72fc
	rst 38h			;72fd
	rst 38h			;72fe
	rst 38h			;72ff
	rst 38h			;7300
	rst 38h			;7301
	rst 38h			;7302
	rst 38h			;7303
	rst 38h			;7304
	rst 38h			;7305
	rst 38h			;7306
	rst 38h			;7307
	rst 38h			;7308
	rst 38h			;7309
	rst 38h			;730a
	rst 38h			;730b
	rst 38h			;730c
	rst 38h			;730d
	rst 38h			;730e
	rst 38h			;730f
	rst 38h			;7310
	rst 38h			;7311
	rst 38h			;7312
	rst 38h			;7313
	rst 38h			;7314
	rst 38h			;7315
	rst 38h			;7316
	rst 38h			;7317
	rst 38h			;7318
	rst 38h			;7319
	rst 38h			;731a
	rst 38h			;731b
	rst 38h			;731c
	rst 38h			;731d
	rst 38h			;731e
	rst 38h			;731f
	rst 38h			;7320
	rst 38h			;7321
	rst 38h			;7322
	rst 38h			;7323
	rst 38h			;7324
	rst 38h			;7325
	rst 38h			;7326
	rst 38h			;7327
	rst 38h			;7328
	rst 38h			;7329
	rst 38h			;732a
	rst 38h			;732b
	rst 38h			;732c
	rst 38h			;732d
	rst 38h			;732e
	rst 38h			;732f
	rst 38h			;7330
	rst 38h			;7331
	rst 38h			;7332
	rst 38h			;7333
	rst 38h			;7334
	rst 38h			;7335
	rst 38h			;7336
	rst 38h			;7337
	rst 38h			;7338
	rst 38h			;7339
	rst 38h			;733a
	rst 38h			;733b
	rst 38h			;733c
	rst 38h			;733d
	rst 38h			;733e
	rst 38h			;733f
	rst 38h			;7340
	rst 38h			;7341
	rst 38h			;7342
	rst 38h			;7343
	rst 38h			;7344
	rst 38h			;7345
	rst 38h			;7346
	rst 38h			;7347
	rst 38h			;7348
	rst 38h			;7349
	rst 38h			;734a
	rst 38h			;734b
	rst 38h			;734c
	rst 38h			;734d
	rst 38h			;734e
	rst 38h			;734f
	rst 38h			;7350
	rst 38h			;7351
	rst 38h			;7352
	rst 38h			;7353
	rst 38h			;7354
	rst 38h			;7355
	rst 38h			;7356
	rst 38h			;7357
	rst 38h			;7358
	rst 38h			;7359
	rst 38h			;735a
	rst 38h			;735b
	rst 38h			;735c
	rst 38h			;735d
	rst 38h			;735e
	rst 38h			;735f
	rst 38h			;7360
	rst 38h			;7361
	rst 38h			;7362
	rst 38h			;7363
	rst 38h			;7364
	rst 38h			;7365
	rst 38h			;7366
	rst 38h			;7367
	rst 38h			;7368
	rst 38h			;7369
	rst 38h			;736a
	rst 38h			;736b
	rst 38h			;736c
	rst 38h			;736d
	rst 38h			;736e
	rst 38h			;736f
	rst 38h			;7370
	rst 38h			;7371
	rst 38h			;7372
	rst 38h			;7373
	rst 38h			;7374
	rst 38h			;7375
	rst 38h			;7376
	rst 38h			;7377
	rst 38h			;7378
	rst 38h			;7379
	rst 38h			;737a
	rst 38h			;737b
	rst 38h			;737c
	rst 38h			;737d
	rst 38h			;737e
	rst 38h			;737f
	rst 38h			;7380
	rst 38h			;7381
	rst 38h			;7382
	rst 38h			;7383
	rst 38h			;7384
	rst 38h			;7385
	rst 38h			;7386
	rst 38h			;7387
	rst 38h			;7388
	rst 38h			;7389
	rst 38h			;738a
	rst 38h			;738b
	rst 38h			;738c
	rst 38h			;738d
	rst 38h			;738e
	rst 38h			;738f
	rst 38h			;7390
	rst 38h			;7391
	rst 38h			;7392
	rst 38h			;7393
	rst 38h			;7394
	rst 38h			;7395
	rst 38h			;7396
	rst 38h			;7397
	rst 38h			;7398
	rst 38h			;7399
	rst 38h			;739a
	rst 38h			;739b
	rst 38h			;739c
	rst 38h			;739d
	rst 38h			;739e
	rst 38h			;739f
	rst 38h			;73a0
	rst 38h			;73a1
	rst 38h			;73a2
	rst 38h			;73a3
	rst 38h			;73a4
	rst 38h			;73a5
	rst 38h			;73a6
	rst 38h			;73a7
	rst 38h			;73a8
	rst 38h			;73a9
	rst 38h			;73aa
	rst 38h			;73ab
	rst 38h			;73ac
	rst 38h			;73ad
	rst 38h			;73ae
	rst 38h			;73af
	rst 38h			;73b0
	rst 38h			;73b1
	rst 38h			;73b2
	rst 38h			;73b3
	rst 38h			;73b4
	rst 38h			;73b5
	rst 38h			;73b6
	rst 38h			;73b7
	rst 38h			;73b8
	rst 38h			;73b9
	rst 38h			;73ba
	rst 38h			;73bb
	rst 38h			;73bc
	rst 38h			;73bd
	rst 38h			;73be
	rst 38h			;73bf
	rst 38h			;73c0
	rst 38h			;73c1
	rst 38h			;73c2
	rst 38h			;73c3
	rst 38h			;73c4
	rst 38h			;73c5
	rst 38h			;73c6
	rst 38h			;73c7
	rst 38h			;73c8
	rst 38h			;73c9
	rst 38h			;73ca
	rst 38h			;73cb
	rst 38h			;73cc
	rst 38h			;73cd
	rst 38h			;73ce
	rst 38h			;73cf
	rst 38h			;73d0
	rst 38h			;73d1
	rst 38h			;73d2
	rst 38h			;73d3
	rst 38h			;73d4
	rst 38h			;73d5
	rst 38h			;73d6
	rst 38h			;73d7
	rst 38h			;73d8
	rst 38h			;73d9
	rst 38h			;73da
	rst 38h			;73db
	rst 38h			;73dc
	rst 38h			;73dd
	rst 38h			;73de
	rst 38h			;73df
	rst 38h			;73e0
	rst 38h			;73e1
	rst 38h			;73e2
	rst 38h			;73e3
	rst 38h			;73e4
	rst 38h			;73e5
	rst 38h			;73e6
	rst 38h			;73e7
	rst 38h			;73e8
	rst 38h			;73e9
	rst 38h			;73ea
	rst 38h			;73eb
	rst 38h			;73ec
	rst 38h			;73ed
	rst 38h			;73ee
	rst 38h			;73ef
	rst 38h			;73f0
	rst 38h			;73f1
	rst 38h			;73f2
	rst 38h			;73f3
	rst 38h			;73f4
	rst 38h			;73f5
	rst 38h			;73f6
	rst 38h			;73f7
	rst 38h			;73f8
	rst 38h			;73f9
	rst 38h			;73fa
	rst 38h			;73fb
	rst 38h			;73fc
	rst 38h			;73fd
	rst 38h			;73fe
	rst 38h			;73ff
	rst 38h			;7400
	rst 38h			;7401
	rst 38h			;7402
	rst 38h			;7403
	rst 38h			;7404
	rst 38h			;7405
	rst 38h			;7406
	rst 38h			;7407
	rst 38h			;7408
	rst 38h			;7409
	rst 38h			;740a
	rst 38h			;740b
	rst 38h			;740c
	rst 38h			;740d
	rst 38h			;740e
	rst 38h			;740f
	rst 38h			;7410
	rst 38h			;7411
	rst 38h			;7412
	rst 38h			;7413
	rst 38h			;7414
	rst 38h			;7415
	rst 38h			;7416
	rst 38h			;7417
	rst 38h			;7418
	rst 38h			;7419
	rst 38h			;741a
	rst 38h			;741b
	rst 38h			;741c
	rst 38h			;741d
	rst 38h			;741e
	rst 38h			;741f
	rst 38h			;7420
	rst 38h			;7421
	rst 38h			;7422
	rst 38h			;7423
	rst 38h			;7424
	rst 38h			;7425
	rst 38h			;7426
	rst 38h			;7427
	rst 38h			;7428
	rst 38h			;7429
	rst 38h			;742a
	rst 38h			;742b
	rst 38h			;742c
	rst 38h			;742d
	rst 38h			;742e
	rst 38h			;742f
	rst 38h			;7430
	rst 38h			;7431
	rst 38h			;7432
	rst 38h			;7433
	rst 38h			;7434
	rst 38h			;7435
	rst 38h			;7436
	rst 38h			;7437
	rst 38h			;7438
	rst 38h			;7439
	rst 38h			;743a
	rst 38h			;743b
	rst 38h			;743c
	rst 38h			;743d
	rst 38h			;743e
	rst 38h			;743f
	rst 38h			;7440
	rst 38h			;7441
	rst 38h			;7442
	rst 38h			;7443
	rst 38h			;7444
	rst 38h			;7445
	rst 38h			;7446
	rst 38h			;7447
	rst 38h			;7448
	rst 38h			;7449
	rst 38h			;744a
	rst 38h			;744b
	rst 38h			;744c
	rst 38h			;744d
	rst 38h			;744e
	rst 38h			;744f
	rst 38h			;7450
	rst 38h			;7451
	rst 38h			;7452
	rst 38h			;7453
	rst 38h			;7454
	rst 38h			;7455
	rst 38h			;7456
	rst 38h			;7457
	rst 38h			;7458
	rst 38h			;7459
	rst 38h			;745a
	rst 38h			;745b
	rst 38h			;745c
	rst 38h			;745d
	rst 38h			;745e
	rst 38h			;745f
	rst 38h			;7460
	rst 38h			;7461
	rst 38h			;7462
	rst 38h			;7463
	rst 38h			;7464
	rst 38h			;7465
	rst 38h			;7466
	rst 38h			;7467
	rst 38h			;7468
	rst 38h			;7469
	rst 38h			;746a
	rst 38h			;746b
	rst 38h			;746c
	rst 38h			;746d
	rst 38h			;746e
	rst 38h			;746f
	rst 38h			;7470
	rst 38h			;7471
	rst 38h			;7472
	rst 38h			;7473
	rst 38h			;7474
	rst 38h			;7475
	rst 38h			;7476
	rst 38h			;7477
	rst 38h			;7478
	rst 38h			;7479
	rst 38h			;747a
	rst 38h			;747b
	rst 38h			;747c
	rst 38h			;747d
	rst 38h			;747e
	rst 38h			;747f
	rst 38h			;7480
	rst 38h			;7481
	rst 38h			;7482
	rst 38h			;7483
	rst 38h			;7484
	rst 38h			;7485
	rst 38h			;7486
	rst 38h			;7487
	rst 38h			;7488
	rst 38h			;7489
	rst 38h			;748a
	rst 38h			;748b
	rst 38h			;748c
	rst 38h			;748d
	rst 38h			;748e
	rst 38h			;748f
	rst 38h			;7490
	rst 38h			;7491
	rst 38h			;7492
	rst 38h			;7493
	rst 38h			;7494
	rst 38h			;7495
	rst 38h			;7496
	rst 38h			;7497
	rst 38h			;7498
	rst 38h			;7499
	rst 38h			;749a
	rst 38h			;749b
	rst 38h			;749c
	rst 38h			;749d
	rst 38h			;749e
	rst 38h			;749f
	rst 38h			;74a0
	rst 38h			;74a1
	rst 38h			;74a2
	rst 38h			;74a3
	rst 38h			;74a4
	rst 38h			;74a5
	rst 38h			;74a6
	rst 38h			;74a7
	rst 38h			;74a8
	rst 38h			;74a9
	rst 38h			;74aa
	rst 38h			;74ab
	rst 38h			;74ac
	rst 38h			;74ad
	rst 38h			;74ae
	rst 38h			;74af
	rst 38h			;74b0
	rst 38h			;74b1
	rst 38h			;74b2
	rst 38h			;74b3
	rst 38h			;74b4
	rst 38h			;74b5
	rst 38h			;74b6
	rst 38h			;74b7
	rst 38h			;74b8
	rst 38h			;74b9
	rst 38h			;74ba
	rst 38h			;74bb
	rst 38h			;74bc
	rst 38h			;74bd
	rst 38h			;74be
	rst 38h			;74bf
	rst 38h			;74c0
	rst 38h			;74c1
	rst 38h			;74c2
	rst 38h			;74c3
	rst 38h			;74c4
	rst 38h			;74c5
	rst 38h			;74c6
	rst 38h			;74c7
	rst 38h			;74c8
	rst 38h			;74c9
	rst 38h			;74ca
	rst 38h			;74cb
	rst 38h			;74cc
	rst 38h			;74cd
	rst 38h			;74ce
	rst 38h			;74cf
	rst 38h			;74d0
	rst 38h			;74d1
	rst 38h			;74d2
	rst 38h			;74d3
	rst 38h			;74d4
	rst 38h			;74d5
	rst 38h			;74d6
	rst 38h			;74d7
	rst 38h			;74d8
	rst 38h			;74d9
	rst 38h			;74da
	rst 38h			;74db
	rst 38h			;74dc
	rst 38h			;74dd
	rst 38h			;74de
	rst 38h			;74df
	rst 38h			;74e0
	rst 38h			;74e1
	rst 38h			;74e2
	rst 38h			;74e3
	rst 38h			;74e4
	rst 38h			;74e5
	rst 38h			;74e6
	rst 38h			;74e7
	rst 38h			;74e8
	rst 38h			;74e9
	rst 38h			;74ea
	rst 38h			;74eb
	rst 38h			;74ec
	rst 38h			;74ed
	rst 38h			;74ee
	rst 38h			;74ef
	rst 38h			;74f0
	rst 38h			;74f1
	rst 38h			;74f2
	rst 38h			;74f3
	rst 38h			;74f4
	rst 38h			;74f5
	rst 38h			;74f6
	rst 38h			;74f7
	rst 38h			;74f8
	rst 38h			;74f9
	rst 38h			;74fa
	rst 38h			;74fb
	rst 38h			;74fc
	rst 38h			;74fd
	rst 38h			;74fe
	rst 38h			;74ff
	rst 38h			;7500
	rst 38h			;7501
	rst 38h			;7502
	rst 38h			;7503
	rst 38h			;7504
	rst 38h			;7505
	rst 38h			;7506
	rst 38h			;7507
	rst 38h			;7508
	rst 38h			;7509
	rst 38h			;750a
	rst 38h			;750b
	rst 38h			;750c
	rst 38h			;750d
	rst 38h			;750e
	rst 38h			;750f
	rst 38h			;7510
	rst 38h			;7511
	rst 38h			;7512
	rst 38h			;7513
	rst 38h			;7514
	rst 38h			;7515
	rst 38h			;7516
	rst 38h			;7517
	rst 38h			;7518
	rst 38h			;7519
	rst 38h			;751a
	rst 38h			;751b
	rst 38h			;751c
	rst 38h			;751d
	rst 38h			;751e
	rst 38h			;751f
	rst 38h			;7520
	rst 38h			;7521
	rst 38h			;7522
	rst 38h			;7523
	rst 38h			;7524
	rst 38h			;7525
	rst 38h			;7526
	rst 38h			;7527
	rst 38h			;7528
	rst 38h			;7529
	rst 38h			;752a
	rst 38h			;752b
	rst 38h			;752c
	rst 38h			;752d
	rst 38h			;752e
	rst 38h			;752f
	rst 38h			;7530
	rst 38h			;7531
	rst 38h			;7532
	rst 38h			;7533
	rst 38h			;7534
	rst 38h			;7535
	rst 38h			;7536
	rst 38h			;7537
	rst 38h			;7538
	rst 38h			;7539
	rst 38h			;753a
	rst 38h			;753b
	rst 38h			;753c
	rst 38h			;753d
	rst 38h			;753e
	rst 38h			;753f
	rst 38h			;7540
	rst 38h			;7541
	rst 38h			;7542
	rst 38h			;7543
	rst 38h			;7544
	rst 38h			;7545
	rst 38h			;7546
	rst 38h			;7547
	rst 38h			;7548
	rst 38h			;7549
	rst 38h			;754a
	rst 38h			;754b
	rst 38h			;754c
	rst 38h			;754d
	rst 38h			;754e
	rst 38h			;754f
	rst 38h			;7550
	rst 38h			;7551
	rst 38h			;7552
l7553h:
	rst 38h			;7553
	rst 38h			;7554
	rst 38h			;7555
	rst 38h			;7556
	rst 38h			;7557
	rst 38h			;7558
	rst 38h			;7559
	rst 38h			;755a
	rst 38h			;755b
	rst 38h			;755c
	rst 38h			;755d
	rst 38h			;755e
	rst 38h			;755f
	rst 38h			;7560
	rst 38h			;7561
	rst 38h			;7562
	rst 38h			;7563
	rst 38h			;7564
	rst 38h			;7565
	rst 38h			;7566
	rst 38h			;7567
	rst 38h			;7568
	rst 38h			;7569
	rst 38h			;756a
	rst 38h			;756b
	rst 38h			;756c
	rst 38h			;756d
	rst 38h			;756e
	rst 38h			;756f
	rst 38h			;7570
	rst 38h			;7571
	rst 38h			;7572
	rst 38h			;7573
	rst 38h			;7574
	rst 38h			;7575
	rst 38h			;7576
	rst 38h			;7577
	rst 38h			;7578
	rst 38h			;7579
	rst 38h			;757a
	rst 38h			;757b
	rst 38h			;757c
	rst 38h			;757d
	rst 38h			;757e
	rst 38h			;757f
	rst 38h			;7580
	rst 38h			;7581
	rst 38h			;7582
	rst 38h			;7583
	rst 38h			;7584
	rst 38h			;7585
	rst 38h			;7586
	rst 38h			;7587
	rst 38h			;7588
	rst 38h			;7589
	rst 38h			;758a
	rst 38h			;758b
	rst 38h			;758c
	rst 38h			;758d
	rst 38h			;758e
	rst 38h			;758f
	rst 38h			;7590
	rst 38h			;7591
	rst 38h			;7592
	rst 38h			;7593
	rst 38h			;7594
	rst 38h			;7595
	rst 38h			;7596
	rst 38h			;7597
	rst 38h			;7598
	rst 38h			;7599
	rst 38h			;759a
	rst 38h			;759b
	rst 38h			;759c
	rst 38h			;759d
	rst 38h			;759e
	rst 38h			;759f
	rst 38h			;75a0
	rst 38h			;75a1
	rst 38h			;75a2
	rst 38h			;75a3
	rst 38h			;75a4
	rst 38h			;75a5
	rst 38h			;75a6
	rst 38h			;75a7
	rst 38h			;75a8
	rst 38h			;75a9
	rst 38h			;75aa
	rst 38h			;75ab
	rst 38h			;75ac
	rst 38h			;75ad
	rst 38h			;75ae
	rst 38h			;75af
	rst 38h			;75b0
	rst 38h			;75b1
	rst 38h			;75b2
	rst 38h			;75b3
	rst 38h			;75b4
	rst 38h			;75b5
	rst 38h			;75b6
	rst 38h			;75b7
	rst 38h			;75b8
	rst 38h			;75b9
	rst 38h			;75ba
	rst 38h			;75bb
	rst 38h			;75bc
	rst 38h			;75bd
	rst 38h			;75be
	rst 38h			;75bf
	rst 38h			;75c0
	rst 38h			;75c1
	rst 38h			;75c2
	rst 38h			;75c3
	rst 38h			;75c4
	rst 38h			;75c5
	rst 38h			;75c6
	rst 38h			;75c7
	rst 38h			;75c8
	rst 38h			;75c9
	rst 38h			;75ca
	rst 38h			;75cb
	rst 38h			;75cc
	rst 38h			;75cd
	rst 38h			;75ce
	rst 38h			;75cf
	rst 38h			;75d0
	rst 38h			;75d1
	rst 38h			;75d2
	rst 38h			;75d3
	rst 38h			;75d4
	rst 38h			;75d5
	rst 38h			;75d6
	rst 38h			;75d7
	rst 38h			;75d8
	rst 38h			;75d9
	rst 38h			;75da
	rst 38h			;75db
	rst 38h			;75dc
	rst 38h			;75dd
	rst 38h			;75de
	rst 38h			;75df
	rst 38h			;75e0
	rst 38h			;75e1
	rst 38h			;75e2
	rst 38h			;75e3
	rst 38h			;75e4
	rst 38h			;75e5
	rst 38h			;75e6
	rst 38h			;75e7
	rst 38h			;75e8
	rst 38h			;75e9
	rst 38h			;75ea
	rst 38h			;75eb
	rst 38h			;75ec
	rst 38h			;75ed
	rst 38h			;75ee
	rst 38h			;75ef
	rst 38h			;75f0
	rst 38h			;75f1
	rst 38h			;75f2
	rst 38h			;75f3
	rst 38h			;75f4
	rst 38h			;75f5
	rst 38h			;75f6
	rst 38h			;75f7
	rst 38h			;75f8
	rst 38h			;75f9
	rst 38h			;75fa
	rst 38h			;75fb
	rst 38h			;75fc
	rst 38h			;75fd
	rst 38h			;75fe
	rst 38h			;75ff
	rst 38h			;7600
	rst 38h			;7601
	rst 38h			;7602
	rst 38h			;7603
	rst 38h			;7604
	rst 38h			;7605
	rst 38h			;7606
	rst 38h			;7607
	rst 38h			;7608
	rst 38h			;7609
	rst 38h			;760a
	rst 38h			;760b
	rst 38h			;760c
	rst 38h			;760d
	rst 38h			;760e
	rst 38h			;760f
	rst 38h			;7610
	rst 38h			;7611
	rst 38h			;7612
	rst 38h			;7613
	rst 38h			;7614
	rst 38h			;7615
	rst 38h			;7616
	rst 38h			;7617
	rst 38h			;7618
	rst 38h			;7619
	rst 38h			;761a
	rst 38h			;761b
	rst 38h			;761c
	rst 38h			;761d
	rst 38h			;761e
	rst 38h			;761f
	rst 38h			;7620
	rst 38h			;7621
	rst 38h			;7622
	rst 38h			;7623
	rst 38h			;7624
	rst 38h			;7625
	rst 38h			;7626
	rst 38h			;7627
	rst 38h			;7628
	rst 38h			;7629
	rst 38h			;762a
	rst 38h			;762b
	rst 38h			;762c
	rst 38h			;762d
	rst 38h			;762e
	rst 38h			;762f
	rst 38h			;7630
	rst 38h			;7631
	rst 38h			;7632
	rst 38h			;7633
	rst 38h			;7634
	rst 38h			;7635
	rst 38h			;7636
	rst 38h			;7637
	rst 38h			;7638
	rst 38h			;7639
	rst 38h			;763a
	rst 38h			;763b
	rst 38h			;763c
	rst 38h			;763d
	rst 38h			;763e
	rst 38h			;763f
	rst 38h			;7640
	rst 38h			;7641
	rst 38h			;7642
	rst 38h			;7643
	rst 38h			;7644
	rst 38h			;7645
	rst 38h			;7646
	rst 38h			;7647
	rst 38h			;7648
	rst 38h			;7649
	rst 38h			;764a
	rst 38h			;764b
	rst 38h			;764c
	rst 38h			;764d
	rst 38h			;764e
	rst 38h			;764f
	rst 38h			;7650
	rst 38h			;7651
	rst 38h			;7652
	rst 38h			;7653
	rst 38h			;7654
	rst 38h			;7655
	rst 38h			;7656
	rst 38h			;7657
	rst 38h			;7658
	rst 38h			;7659
	rst 38h			;765a
	rst 38h			;765b
	rst 38h			;765c
	rst 38h			;765d
	rst 38h			;765e
	rst 38h			;765f
	rst 38h			;7660
	rst 38h			;7661
	rst 38h			;7662
	rst 38h			;7663
	rst 38h			;7664
	rst 38h			;7665
	rst 38h			;7666
	rst 38h			;7667
	rst 38h			;7668
	rst 38h			;7669
	rst 38h			;766a
	rst 38h			;766b
	rst 38h			;766c
	rst 38h			;766d
	rst 38h			;766e
	rst 38h			;766f
	rst 38h			;7670
	rst 38h			;7671
	rst 38h			;7672
	rst 38h			;7673
	rst 38h			;7674
	rst 38h			;7675
	rst 38h			;7676
	rst 38h			;7677
	rst 38h			;7678
	rst 38h			;7679
	rst 38h			;767a
	rst 38h			;767b
	rst 38h			;767c
	rst 38h			;767d
	rst 38h			;767e
	rst 38h			;767f
	rst 38h			;7680
	rst 38h			;7681
	rst 38h			;7682
	rst 38h			;7683
	rst 38h			;7684
	rst 38h			;7685
	rst 38h			;7686
	rst 38h			;7687
	rst 38h			;7688
	rst 38h			;7689
	rst 38h			;768a
	rst 38h			;768b
	rst 38h			;768c
	rst 38h			;768d
	rst 38h			;768e
	rst 38h			;768f
	rst 38h			;7690
	rst 38h			;7691
	rst 38h			;7692
	rst 38h			;7693
	rst 38h			;7694
	rst 38h			;7695
	rst 38h			;7696
	rst 38h			;7697
	rst 38h			;7698
	rst 38h			;7699
	rst 38h			;769a
	rst 38h			;769b
	rst 38h			;769c
	rst 38h			;769d
	rst 38h			;769e
	rst 38h			;769f
	rst 38h			;76a0
	rst 38h			;76a1
	rst 38h			;76a2
	rst 38h			;76a3
	rst 38h			;76a4
	rst 38h			;76a5
	rst 38h			;76a6
	rst 38h			;76a7
	rst 38h			;76a8
	rst 38h			;76a9
	rst 38h			;76aa
	rst 38h			;76ab
	rst 38h			;76ac
	rst 38h			;76ad
	rst 38h			;76ae
	rst 38h			;76af
	rst 38h			;76b0
	rst 38h			;76b1
	rst 38h			;76b2
	rst 38h			;76b3
	rst 38h			;76b4
	rst 38h			;76b5
	rst 38h			;76b6
	rst 38h			;76b7
	rst 38h			;76b8
	rst 38h			;76b9
	rst 38h			;76ba
	rst 38h			;76bb
	rst 38h			;76bc
	rst 38h			;76bd
	rst 38h			;76be
	rst 38h			;76bf
	rst 38h			;76c0
	rst 38h			;76c1
	rst 38h			;76c2
	rst 38h			;76c3
	rst 38h			;76c4
	rst 38h			;76c5
	rst 38h			;76c6
	rst 38h			;76c7
	rst 38h			;76c8
	rst 38h			;76c9
	rst 38h			;76ca
	rst 38h			;76cb
	rst 38h			;76cc
	rst 38h			;76cd
	rst 38h			;76ce
	rst 38h			;76cf
	rst 38h			;76d0
	rst 38h			;76d1
	rst 38h			;76d2
	rst 38h			;76d3
	rst 38h			;76d4
	rst 38h			;76d5
	rst 38h			;76d6
	rst 38h			;76d7
	rst 38h			;76d8
	rst 38h			;76d9
	rst 38h			;76da
	rst 38h			;76db
	rst 38h			;76dc
	rst 38h			;76dd
	rst 38h			;76de
	rst 38h			;76df
	rst 38h			;76e0
	rst 38h			;76e1
	rst 38h			;76e2
	rst 38h			;76e3
	rst 38h			;76e4
	rst 38h			;76e5
	rst 38h			;76e6
	rst 38h			;76e7
	rst 38h			;76e8
	rst 38h			;76e9
	rst 38h			;76ea
	rst 38h			;76eb
	rst 38h			;76ec
	rst 38h			;76ed
	rst 38h			;76ee
	rst 38h			;76ef
	rst 38h			;76f0
	rst 38h			;76f1
	rst 38h			;76f2
	rst 38h			;76f3
	rst 38h			;76f4
	rst 38h			;76f5
	rst 38h			;76f6
	rst 38h			;76f7
	rst 38h			;76f8
	rst 38h			;76f9
	rst 38h			;76fa
	rst 38h			;76fb
	rst 38h			;76fc
	rst 38h			;76fd
	rst 38h			;76fe
	rst 38h			;76ff
	rst 38h			;7700
	rst 38h			;7701
	rst 38h			;7702
	rst 38h			;7703
	rst 38h			;7704
	rst 38h			;7705
	rst 38h			;7706
	rst 38h			;7707
	rst 38h			;7708
	rst 38h			;7709
	rst 38h			;770a
	rst 38h			;770b
	rst 38h			;770c
	rst 38h			;770d
	rst 38h			;770e
	rst 38h			;770f
	rst 38h			;7710
	rst 38h			;7711
	rst 38h			;7712
	rst 38h			;7713
	rst 38h			;7714
	rst 38h			;7715
	rst 38h			;7716
	rst 38h			;7717
	rst 38h			;7718
	rst 38h			;7719
	rst 38h			;771a
	rst 38h			;771b
	rst 38h			;771c
	rst 38h			;771d
	rst 38h			;771e
	rst 38h			;771f
	rst 38h			;7720
	rst 38h			;7721
	rst 38h			;7722
	rst 38h			;7723
	rst 38h			;7724
	rst 38h			;7725
	rst 38h			;7726
	rst 38h			;7727
	rst 38h			;7728
	rst 38h			;7729
	rst 38h			;772a
	rst 38h			;772b
	rst 38h			;772c
	rst 38h			;772d
	rst 38h			;772e
	rst 38h			;772f
	rst 38h			;7730
	rst 38h			;7731
	rst 38h			;7732
	rst 38h			;7733
	rst 38h			;7734
	rst 38h			;7735
	rst 38h			;7736
	rst 38h			;7737
	rst 38h			;7738
	rst 38h			;7739
	rst 38h			;773a
	rst 38h			;773b
	rst 38h			;773c
	rst 38h			;773d
	rst 38h			;773e
	rst 38h			;773f
	rst 38h			;7740
	rst 38h			;7741
	rst 38h			;7742
	rst 38h			;7743
	rst 38h			;7744
	rst 38h			;7745
	rst 38h			;7746
	rst 38h			;7747
	rst 38h			;7748
	rst 38h			;7749
	rst 38h			;774a
	rst 38h			;774b
	rst 38h			;774c
	rst 38h			;774d
	rst 38h			;774e
	rst 38h			;774f
	rst 38h			;7750
	rst 38h			;7751
	rst 38h			;7752
	rst 38h			;7753
	rst 38h			;7754
	rst 38h			;7755
	rst 38h			;7756
	rst 38h			;7757
	rst 38h			;7758
	rst 38h			;7759
	rst 38h			;775a
	rst 38h			;775b
	rst 38h			;775c
	rst 38h			;775d
	rst 38h			;775e
	rst 38h			;775f
	rst 38h			;7760
	rst 38h			;7761
	rst 38h			;7762
	rst 38h			;7763
	rst 38h			;7764
	rst 38h			;7765
	rst 38h			;7766
	rst 38h			;7767
	rst 38h			;7768
	rst 38h			;7769
	rst 38h			;776a
	rst 38h			;776b
	rst 38h			;776c
	rst 38h			;776d
	rst 38h			;776e
	rst 38h			;776f
	rst 38h			;7770
	rst 38h			;7771
	rst 38h			;7772
	rst 38h			;7773
	rst 38h			;7774
	rst 38h			;7775
	rst 38h			;7776
	rst 38h			;7777
	rst 38h			;7778
	rst 38h			;7779
	rst 38h			;777a
	rst 38h			;777b
	rst 38h			;777c
	rst 38h			;777d
	rst 38h			;777e
	rst 38h			;777f
	rst 38h			;7780
	rst 38h			;7781
	rst 38h			;7782
	rst 38h			;7783
	rst 38h			;7784
	rst 38h			;7785
	rst 38h			;7786
	rst 38h			;7787
	rst 38h			;7788
	rst 38h			;7789
	rst 38h			;778a
	rst 38h			;778b
	rst 38h			;778c
	rst 38h			;778d
	rst 38h			;778e
	rst 38h			;778f
	rst 38h			;7790
	rst 38h			;7791
	rst 38h			;7792
	rst 38h			;7793
	rst 38h			;7794
	rst 38h			;7795
	rst 38h			;7796
	rst 38h			;7797
	rst 38h			;7798
	rst 38h			;7799
	rst 38h			;779a
	rst 38h			;779b
	rst 38h			;779c
	rst 38h			;779d
	rst 38h			;779e
	rst 38h			;779f
	rst 38h			;77a0
	rst 38h			;77a1
	rst 38h			;77a2
	rst 38h			;77a3
	rst 38h			;77a4
	rst 38h			;77a5
	rst 38h			;77a6
	rst 38h			;77a7
	rst 38h			;77a8
	rst 38h			;77a9
	rst 38h			;77aa
	rst 38h			;77ab
	rst 38h			;77ac
	rst 38h			;77ad
	rst 38h			;77ae
	rst 38h			;77af
	rst 38h			;77b0
	rst 38h			;77b1
	rst 38h			;77b2
	rst 38h			;77b3
	rst 38h			;77b4
	rst 38h			;77b5
	rst 38h			;77b6
	rst 38h			;77b7
	rst 38h			;77b8
	rst 38h			;77b9
	rst 38h			;77ba
	rst 38h			;77bb
	rst 38h			;77bc
	rst 38h			;77bd
	rst 38h			;77be
	rst 38h			;77bf
	rst 38h			;77c0
	rst 38h			;77c1
	rst 38h			;77c2
	rst 38h			;77c3
	rst 38h			;77c4
	rst 38h			;77c5
	rst 38h			;77c6
	rst 38h			;77c7
	rst 38h			;77c8
	rst 38h			;77c9
	rst 38h			;77ca
	rst 38h			;77cb
	rst 38h			;77cc
	rst 38h			;77cd
	rst 38h			;77ce
	rst 38h			;77cf
	rst 38h			;77d0
	rst 38h			;77d1
	rst 38h			;77d2
	rst 38h			;77d3
	rst 38h			;77d4
	rst 38h			;77d5
	rst 38h			;77d6
	rst 38h			;77d7
	rst 38h			;77d8
	rst 38h			;77d9
	rst 38h			;77da
	rst 38h			;77db
	rst 38h			;77dc
	rst 38h			;77dd
	rst 38h			;77de
	rst 38h			;77df
	rst 38h			;77e0
	rst 38h			;77e1
	rst 38h			;77e2
	rst 38h			;77e3
	rst 38h			;77e4
	rst 38h			;77e5
	rst 38h			;77e6
	rst 38h			;77e7
	rst 38h			;77e8
	rst 38h			;77e9
	rst 38h			;77ea
	rst 38h			;77eb
	rst 38h			;77ec
	rst 38h			;77ed
	rst 38h			;77ee
	rst 38h			;77ef
	rst 38h			;77f0
	rst 38h			;77f1
	rst 38h			;77f2
	rst 38h			;77f3
	rst 38h			;77f4
	rst 38h			;77f5
	rst 38h			;77f6
	rst 38h			;77f7
	rst 38h			;77f8
	rst 38h			;77f9
	rst 38h			;77fa
	rst 38h			;77fb
	rst 38h			;77fc
	rst 38h			;77fd
	rst 38h			;77fe
	rst 38h			;77ff
	rst 38h			;7800
	rst 38h			;7801
	rst 38h			;7802
	rst 38h			;7803
	rst 38h			;7804
	rst 38h			;7805
	rst 38h			;7806
	rst 38h			;7807
	rst 38h			;7808
	rst 38h			;7809
	rst 38h			;780a
	rst 38h			;780b
	rst 38h			;780c
	rst 38h			;780d
	rst 38h			;780e
	rst 38h			;780f
	rst 38h			;7810
	rst 38h			;7811
	rst 38h			;7812
	rst 38h			;7813
	rst 38h			;7814
	rst 38h			;7815
	rst 38h			;7816
	rst 38h			;7817
	rst 38h			;7818
	rst 38h			;7819
	rst 38h			;781a
	rst 38h			;781b
	rst 38h			;781c
	rst 38h			;781d
	rst 38h			;781e
	rst 38h			;781f
	rst 38h			;7820
	rst 38h			;7821
	rst 38h			;7822
	rst 38h			;7823
	rst 38h			;7824
	rst 38h			;7825
	rst 38h			;7826
	rst 38h			;7827
	rst 38h			;7828
	rst 38h			;7829
	rst 38h			;782a
	rst 38h			;782b
	rst 38h			;782c
	rst 38h			;782d
	rst 38h			;782e
	rst 38h			;782f
	rst 38h			;7830
	rst 38h			;7831
	rst 38h			;7832
	rst 38h			;7833
	rst 38h			;7834
	rst 38h			;7835
	rst 38h			;7836
	rst 38h			;7837
	rst 38h			;7838
	rst 38h			;7839
	rst 38h			;783a
	rst 38h			;783b
	rst 38h			;783c
	rst 38h			;783d
	rst 38h			;783e
	rst 38h			;783f
	rst 38h			;7840
	rst 38h			;7841
	rst 38h			;7842
	rst 38h			;7843
	rst 38h			;7844
	rst 38h			;7845
	rst 38h			;7846
	rst 38h			;7847
	rst 38h			;7848
	rst 38h			;7849
	rst 38h			;784a
	rst 38h			;784b
	rst 38h			;784c
	rst 38h			;784d
	rst 38h			;784e
	rst 38h			;784f
	rst 38h			;7850
	rst 38h			;7851
	rst 38h			;7852
	rst 38h			;7853
	rst 38h			;7854
	rst 38h			;7855
	rst 38h			;7856
	rst 38h			;7857
	rst 38h			;7858
	rst 38h			;7859
	rst 38h			;785a
	rst 38h			;785b
	rst 38h			;785c
	rst 38h			;785d
	rst 38h			;785e
	rst 38h			;785f
	rst 38h			;7860
	rst 38h			;7861
	rst 38h			;7862
	rst 38h			;7863
	rst 38h			;7864
	rst 38h			;7865
	rst 38h			;7866
	rst 38h			;7867
	rst 38h			;7868
	rst 38h			;7869
	rst 38h			;786a
	rst 38h			;786b
	rst 38h			;786c
	rst 38h			;786d
	rst 38h			;786e
	rst 38h			;786f
	rst 38h			;7870
	rst 38h			;7871
	rst 38h			;7872
	rst 38h			;7873
	rst 38h			;7874
	rst 38h			;7875
	rst 38h			;7876
	rst 38h			;7877
	rst 38h			;7878
	rst 38h			;7879
	rst 38h			;787a
	rst 38h			;787b
	rst 38h			;787c
	rst 38h			;787d
	rst 38h			;787e
	rst 38h			;787f
	rst 38h			;7880
	rst 38h			;7881
	rst 38h			;7882
	rst 38h			;7883
	rst 38h			;7884
	rst 38h			;7885
	rst 38h			;7886
	rst 38h			;7887
	rst 38h			;7888
	rst 38h			;7889
	rst 38h			;788a
	rst 38h			;788b
	rst 38h			;788c
	rst 38h			;788d
	rst 38h			;788e
	rst 38h			;788f
	rst 38h			;7890
	rst 38h			;7891
	rst 38h			;7892
	rst 38h			;7893
	rst 38h			;7894
	rst 38h			;7895
	rst 38h			;7896
	rst 38h			;7897
	rst 38h			;7898
	rst 38h			;7899
	rst 38h			;789a
	rst 38h			;789b
	rst 38h			;789c
	rst 38h			;789d
	rst 38h			;789e
	rst 38h			;789f
	rst 38h			;78a0
	rst 38h			;78a1
	rst 38h			;78a2
	rst 38h			;78a3
	rst 38h			;78a4
	rst 38h			;78a5
	rst 38h			;78a6
	rst 38h			;78a7
	rst 38h			;78a8
	rst 38h			;78a9
	rst 38h			;78aa
	rst 38h			;78ab
	rst 38h			;78ac
	rst 38h			;78ad
	rst 38h			;78ae
	rst 38h			;78af
	rst 38h			;78b0
	rst 38h			;78b1
	rst 38h			;78b2
	rst 38h			;78b3
	rst 38h			;78b4
	rst 38h			;78b5
	rst 38h			;78b6
	rst 38h			;78b7
	rst 38h			;78b8
	rst 38h			;78b9
	rst 38h			;78ba
	rst 38h			;78bb
	rst 38h			;78bc
	rst 38h			;78bd
sub_78beh:
	rst 38h			;78be
	rst 38h			;78bf
	rst 38h			;78c0
	rst 38h			;78c1
	rst 38h			;78c2
	rst 38h			;78c3
	rst 38h			;78c4
	rst 38h			;78c5
	rst 38h			;78c6
	rst 38h			;78c7
	rst 38h			;78c8
	rst 38h			;78c9
	rst 38h			;78ca
	rst 38h			;78cb
	rst 38h			;78cc
	rst 38h			;78cd
	rst 38h			;78ce
	rst 38h			;78cf
	rst 38h			;78d0
	rst 38h			;78d1
	rst 38h			;78d2
	rst 38h			;78d3
	rst 38h			;78d4
	rst 38h			;78d5
	rst 38h			;78d6
	rst 38h			;78d7
	rst 38h			;78d8
	rst 38h			;78d9
	rst 38h			;78da
	rst 38h			;78db
	rst 38h			;78dc
	rst 38h			;78dd
	rst 38h			;78de
	rst 38h			;78df
	rst 38h			;78e0
	rst 38h			;78e1
	rst 38h			;78e2
	rst 38h			;78e3
	rst 38h			;78e4
	rst 38h			;78e5
	rst 38h			;78e6
	rst 38h			;78e7
	rst 38h			;78e8
	rst 38h			;78e9
	rst 38h			;78ea
	rst 38h			;78eb
	rst 38h			;78ec
	rst 38h			;78ed
	rst 38h			;78ee
	rst 38h			;78ef
	rst 38h			;78f0
	rst 38h			;78f1
	rst 38h			;78f2
	rst 38h			;78f3
	rst 38h			;78f4
	rst 38h			;78f5
	rst 38h			;78f6
	rst 38h			;78f7
	rst 38h			;78f8
	rst 38h			;78f9
	rst 38h			;78fa
	rst 38h			;78fb
	rst 38h			;78fc
	rst 38h			;78fd
	rst 38h			;78fe
	rst 38h			;78ff
	rst 38h			;7900
	rst 38h			;7901
	rst 38h			;7902
	rst 38h			;7903
	rst 38h			;7904
	rst 38h			;7905
	rst 38h			;7906
	rst 38h			;7907
	rst 38h			;7908
	rst 38h			;7909
	rst 38h			;790a
	rst 38h			;790b
	rst 38h			;790c
	rst 38h			;790d
	rst 38h			;790e
	rst 38h			;790f
	rst 38h			;7910
	rst 38h			;7911
	rst 38h			;7912
	rst 38h			;7913
	rst 38h			;7914
	rst 38h			;7915
	rst 38h			;7916
	rst 38h			;7917
	rst 38h			;7918
	rst 38h			;7919
	rst 38h			;791a
	rst 38h			;791b
	rst 38h			;791c
	rst 38h			;791d
	rst 38h			;791e
	rst 38h			;791f
	rst 38h			;7920
	rst 38h			;7921
	rst 38h			;7922
	rst 38h			;7923
	rst 38h			;7924
	rst 38h			;7925
	rst 38h			;7926
	rst 38h			;7927
	rst 38h			;7928
	rst 38h			;7929
	rst 38h			;792a
	rst 38h			;792b
	rst 38h			;792c
	rst 38h			;792d
	rst 38h			;792e
	rst 38h			;792f
	rst 38h			;7930
	rst 38h			;7931
	rst 38h			;7932
	rst 38h			;7933
	rst 38h			;7934
	rst 38h			;7935
	rst 38h			;7936
	rst 38h			;7937
	rst 38h			;7938
	rst 38h			;7939
	rst 38h			;793a
	rst 38h			;793b
	rst 38h			;793c
	rst 38h			;793d
	rst 38h			;793e
	rst 38h			;793f
	rst 38h			;7940
	rst 38h			;7941
	rst 38h			;7942
	rst 38h			;7943
	rst 38h			;7944
	rst 38h			;7945
	rst 38h			;7946
	rst 38h			;7947
	rst 38h			;7948
	rst 38h			;7949
	rst 38h			;794a
	rst 38h			;794b
	rst 38h			;794c
	rst 38h			;794d
	rst 38h			;794e
	rst 38h			;794f
	rst 38h			;7950
	rst 38h			;7951
	rst 38h			;7952
	rst 38h			;7953
	rst 38h			;7954
	rst 38h			;7955
	rst 38h			;7956
	rst 38h			;7957
	rst 38h			;7958
	rst 38h			;7959
	rst 38h			;795a
	rst 38h			;795b
	rst 38h			;795c
	rst 38h			;795d
	rst 38h			;795e
	rst 38h			;795f
	rst 38h			;7960
	rst 38h			;7961
	rst 38h			;7962
	rst 38h			;7963
	rst 38h			;7964
	rst 38h			;7965
	rst 38h			;7966
	rst 38h			;7967
	rst 38h			;7968
	rst 38h			;7969
	rst 38h			;796a
	rst 38h			;796b
	rst 38h			;796c
	rst 38h			;796d
	rst 38h			;796e
	rst 38h			;796f
	rst 38h			;7970
	rst 38h			;7971
	rst 38h			;7972
	rst 38h			;7973
	rst 38h			;7974
	rst 38h			;7975
	rst 38h			;7976
	rst 38h			;7977
	rst 38h			;7978
	rst 38h			;7979
	rst 38h			;797a
	rst 38h			;797b
	rst 38h			;797c
	rst 38h			;797d
	rst 38h			;797e
	rst 38h			;797f
	rst 38h			;7980
	rst 38h			;7981
	rst 38h			;7982
	rst 38h			;7983
	rst 38h			;7984
	rst 38h			;7985
	rst 38h			;7986
	rst 38h			;7987
	rst 38h			;7988
	rst 38h			;7989
	rst 38h			;798a
	rst 38h			;798b
	rst 38h			;798c
	rst 38h			;798d
	rst 38h			;798e
	rst 38h			;798f
	rst 38h			;7990
	rst 38h			;7991
	rst 38h			;7992
	rst 38h			;7993
	rst 38h			;7994
	rst 38h			;7995
	rst 38h			;7996
	rst 38h			;7997
	rst 38h			;7998
	rst 38h			;7999
	rst 38h			;799a
	rst 38h			;799b
	rst 38h			;799c
	rst 38h			;799d
	rst 38h			;799e
	rst 38h			;799f
	rst 38h			;79a0
	rst 38h			;79a1
	rst 38h			;79a2
	rst 38h			;79a3
	rst 38h			;79a4
	rst 38h			;79a5
	rst 38h			;79a6
	rst 38h			;79a7
	rst 38h			;79a8
	rst 38h			;79a9
	rst 38h			;79aa
	rst 38h			;79ab
	rst 38h			;79ac
	rst 38h			;79ad
	rst 38h			;79ae
	rst 38h			;79af
	rst 38h			;79b0
	rst 38h			;79b1
	rst 38h			;79b2
	rst 38h			;79b3
	rst 38h			;79b4
	rst 38h			;79b5
	rst 38h			;79b6
	rst 38h			;79b7
	rst 38h			;79b8
	rst 38h			;79b9
	rst 38h			;79ba
	rst 38h			;79bb
	rst 38h			;79bc
	rst 38h			;79bd
	rst 38h			;79be
	rst 38h			;79bf
	rst 38h			;79c0
	rst 38h			;79c1
	rst 38h			;79c2
	rst 38h			;79c3
	rst 38h			;79c4
	rst 38h			;79c5
	rst 38h			;79c6
	rst 38h			;79c7
	rst 38h			;79c8
	rst 38h			;79c9
	rst 38h			;79ca
	rst 38h			;79cb
	rst 38h			;79cc
	rst 38h			;79cd
	rst 38h			;79ce
	rst 38h			;79cf
	rst 38h			;79d0
	rst 38h			;79d1
	rst 38h			;79d2
	rst 38h			;79d3
	rst 38h			;79d4
	rst 38h			;79d5
	rst 38h			;79d6
	rst 38h			;79d7
	rst 38h			;79d8
	rst 38h			;79d9
	rst 38h			;79da
	rst 38h			;79db
	rst 38h			;79dc
	rst 38h			;79dd
	rst 38h			;79de
	rst 38h			;79df
	rst 38h			;79e0
	rst 38h			;79e1
	rst 38h			;79e2
	rst 38h			;79e3
	rst 38h			;79e4
	rst 38h			;79e5
	rst 38h			;79e6
	rst 38h			;79e7
	rst 38h			;79e8
	rst 38h			;79e9
	rst 38h			;79ea
	rst 38h			;79eb
	rst 38h			;79ec
	rst 38h			;79ed
	rst 38h			;79ee
	rst 38h			;79ef
	rst 38h			;79f0
	rst 38h			;79f1
	rst 38h			;79f2
	rst 38h			;79f3
	rst 38h			;79f4
	rst 38h			;79f5
	rst 38h			;79f6
	rst 38h			;79f7
	rst 38h			;79f8
	rst 38h			;79f9
	rst 38h			;79fa
	rst 38h			;79fb
	rst 38h			;79fc
	rst 38h			;79fd
	rst 38h			;79fe
	rst 38h			;79ff
	rst 38h			;7a00
	rst 38h			;7a01
	rst 38h			;7a02
	rst 38h			;7a03
	rst 38h			;7a04
	rst 38h			;7a05
	rst 38h			;7a06
	rst 38h			;7a07
	rst 38h			;7a08
	rst 38h			;7a09
	rst 38h			;7a0a
	rst 38h			;7a0b
	rst 38h			;7a0c
	rst 38h			;7a0d
	rst 38h			;7a0e
	rst 38h			;7a0f
	rst 38h			;7a10
	rst 38h			;7a11
	rst 38h			;7a12
	rst 38h			;7a13
	rst 38h			;7a14
	rst 38h			;7a15
	rst 38h			;7a16
	rst 38h			;7a17
	rst 38h			;7a18
	rst 38h			;7a19
	rst 38h			;7a1a
	rst 38h			;7a1b
	rst 38h			;7a1c
	rst 38h			;7a1d
	rst 38h			;7a1e
	rst 38h			;7a1f
	rst 38h			;7a20
	rst 38h			;7a21
	rst 38h			;7a22
	rst 38h			;7a23
	rst 38h			;7a24
	rst 38h			;7a25
	rst 38h			;7a26
	rst 38h			;7a27
	rst 38h			;7a28
	rst 38h			;7a29
	rst 38h			;7a2a
	rst 38h			;7a2b
	rst 38h			;7a2c
	rst 38h			;7a2d
	rst 38h			;7a2e
	rst 38h			;7a2f
	rst 38h			;7a30
	rst 38h			;7a31
	rst 38h			;7a32
	rst 38h			;7a33
	rst 38h			;7a34
	rst 38h			;7a35
	rst 38h			;7a36
	rst 38h			;7a37
	rst 38h			;7a38
	rst 38h			;7a39
	rst 38h			;7a3a
	rst 38h			;7a3b
	rst 38h			;7a3c
	rst 38h			;7a3d
	rst 38h			;7a3e
	rst 38h			;7a3f
	rst 38h			;7a40
	rst 38h			;7a41
	rst 38h			;7a42
	rst 38h			;7a43
	rst 38h			;7a44
	rst 38h			;7a45
	rst 38h			;7a46
	rst 38h			;7a47
	rst 38h			;7a48
	rst 38h			;7a49
	rst 38h			;7a4a
	rst 38h			;7a4b
	rst 38h			;7a4c
	rst 38h			;7a4d
	rst 38h			;7a4e
	rst 38h			;7a4f
	rst 38h			;7a50
	rst 38h			;7a51
	rst 38h			;7a52
	rst 38h			;7a53
	rst 38h			;7a54
	rst 38h			;7a55
	rst 38h			;7a56
	rst 38h			;7a57
	rst 38h			;7a58
	rst 38h			;7a59
	rst 38h			;7a5a
	rst 38h			;7a5b
	rst 38h			;7a5c
	rst 38h			;7a5d
	rst 38h			;7a5e
	rst 38h			;7a5f
	rst 38h			;7a60
	rst 38h			;7a61
	rst 38h			;7a62
	rst 38h			;7a63
	rst 38h			;7a64
	rst 38h			;7a65
	rst 38h			;7a66
	rst 38h			;7a67
	rst 38h			;7a68
	rst 38h			;7a69
	rst 38h			;7a6a
	rst 38h			;7a6b
	rst 38h			;7a6c
	rst 38h			;7a6d
	rst 38h			;7a6e
	rst 38h			;7a6f
	rst 38h			;7a70
	rst 38h			;7a71
	rst 38h			;7a72
	rst 38h			;7a73
	rst 38h			;7a74
	rst 38h			;7a75
	rst 38h			;7a76
	rst 38h			;7a77
	rst 38h			;7a78
	rst 38h			;7a79
	rst 38h			;7a7a
	rst 38h			;7a7b
	rst 38h			;7a7c
	rst 38h			;7a7d
	rst 38h			;7a7e
	rst 38h			;7a7f
	rst 38h			;7a80
	rst 38h			;7a81
	rst 38h			;7a82
	rst 38h			;7a83
	rst 38h			;7a84
	rst 38h			;7a85
	rst 38h			;7a86
	rst 38h			;7a87
	rst 38h			;7a88
	rst 38h			;7a89
	rst 38h			;7a8a
	rst 38h			;7a8b
	rst 38h			;7a8c
	rst 38h			;7a8d
	rst 38h			;7a8e
	rst 38h			;7a8f
	rst 38h			;7a90
	rst 38h			;7a91
	rst 38h			;7a92
	rst 38h			;7a93
	rst 38h			;7a94
	rst 38h			;7a95
	rst 38h			;7a96
	rst 38h			;7a97
	rst 38h			;7a98
	rst 38h			;7a99
	rst 38h			;7a9a
	rst 38h			;7a9b
	rst 38h			;7a9c
	rst 38h			;7a9d
	rst 38h			;7a9e
	rst 38h			;7a9f
	rst 38h			;7aa0
	rst 38h			;7aa1
	rst 38h			;7aa2
	rst 38h			;7aa3
	rst 38h			;7aa4
	rst 38h			;7aa5
	rst 38h			;7aa6
	rst 38h			;7aa7
	rst 38h			;7aa8
	rst 38h			;7aa9
	rst 38h			;7aaa
	rst 38h			;7aab
	rst 38h			;7aac
	rst 38h			;7aad
	rst 38h			;7aae
	rst 38h			;7aaf
	rst 38h			;7ab0
	rst 38h			;7ab1
	rst 38h			;7ab2
	rst 38h			;7ab3
	rst 38h			;7ab4
	rst 38h			;7ab5
	rst 38h			;7ab6
	rst 38h			;7ab7
	rst 38h			;7ab8
	rst 38h			;7ab9
	rst 38h			;7aba
	rst 38h			;7abb
	rst 38h			;7abc
	rst 38h			;7abd
	rst 38h			;7abe
	rst 38h			;7abf
	rst 38h			;7ac0
	rst 38h			;7ac1
	rst 38h			;7ac2
	rst 38h			;7ac3
	rst 38h			;7ac4
	rst 38h			;7ac5
	rst 38h			;7ac6
	rst 38h			;7ac7
	rst 38h			;7ac8
	rst 38h			;7ac9
	rst 38h			;7aca
	rst 38h			;7acb
	rst 38h			;7acc
	rst 38h			;7acd
	rst 38h			;7ace
	rst 38h			;7acf
	rst 38h			;7ad0
	rst 38h			;7ad1
	rst 38h			;7ad2
	rst 38h			;7ad3
	rst 38h			;7ad4
	rst 38h			;7ad5
	rst 38h			;7ad6
	rst 38h			;7ad7
	rst 38h			;7ad8
	rst 38h			;7ad9
	rst 38h			;7ada
	rst 38h			;7adb
	rst 38h			;7adc
	rst 38h			;7add
	rst 38h			;7ade
	rst 38h			;7adf
	rst 38h			;7ae0
	rst 38h			;7ae1
	rst 38h			;7ae2
	rst 38h			;7ae3
	rst 38h			;7ae4
	rst 38h			;7ae5
	rst 38h			;7ae6
	rst 38h			;7ae7
	rst 38h			;7ae8
	rst 38h			;7ae9
	rst 38h			;7aea
	rst 38h			;7aeb
	rst 38h			;7aec
	rst 38h			;7aed
	rst 38h			;7aee
	rst 38h			;7aef
	rst 38h			;7af0
	rst 38h			;7af1
	rst 38h			;7af2
	rst 38h			;7af3
	rst 38h			;7af4
	rst 38h			;7af5
	rst 38h			;7af6
	rst 38h			;7af7
	rst 38h			;7af8
	rst 38h			;7af9
	rst 38h			;7afa
	rst 38h			;7afb
	rst 38h			;7afc
	rst 38h			;7afd
	rst 38h			;7afe
	rst 38h			;7aff
	rst 38h			;7b00
	rst 38h			;7b01
	rst 38h			;7b02
	rst 38h			;7b03
	rst 38h			;7b04
	rst 38h			;7b05
	rst 38h			;7b06
	rst 38h			;7b07
	rst 38h			;7b08
	rst 38h			;7b09
	rst 38h			;7b0a
	rst 38h			;7b0b
	rst 38h			;7b0c
	rst 38h			;7b0d
	rst 38h			;7b0e
	rst 38h			;7b0f
	rst 38h			;7b10
	rst 38h			;7b11
	rst 38h			;7b12
	rst 38h			;7b13
	rst 38h			;7b14
	rst 38h			;7b15
	rst 38h			;7b16
	rst 38h			;7b17
	rst 38h			;7b18
	rst 38h			;7b19
	rst 38h			;7b1a
	rst 38h			;7b1b
	rst 38h			;7b1c
	rst 38h			;7b1d
	rst 38h			;7b1e
	rst 38h			;7b1f
	rst 38h			;7b20
	rst 38h			;7b21
	rst 38h			;7b22
	rst 38h			;7b23
	rst 38h			;7b24
	rst 38h			;7b25
	rst 38h			;7b26
	rst 38h			;7b27
	rst 38h			;7b28
	rst 38h			;7b29
	rst 38h			;7b2a
	rst 38h			;7b2b
	rst 38h			;7b2c
	rst 38h			;7b2d
	rst 38h			;7b2e
	rst 38h			;7b2f
	rst 38h			;7b30
	rst 38h			;7b31
	rst 38h			;7b32
	rst 38h			;7b33
	rst 38h			;7b34
	rst 38h			;7b35
	rst 38h			;7b36
	rst 38h			;7b37
	rst 38h			;7b38
	rst 38h			;7b39
	rst 38h			;7b3a
	rst 38h			;7b3b
	rst 38h			;7b3c
	rst 38h			;7b3d
	rst 38h			;7b3e
	rst 38h			;7b3f
	rst 38h			;7b40
	rst 38h			;7b41
	rst 38h			;7b42
	rst 38h			;7b43
	rst 38h			;7b44
	rst 38h			;7b45
	rst 38h			;7b46
	rst 38h			;7b47
	rst 38h			;7b48
	rst 38h			;7b49
	rst 38h			;7b4a
	rst 38h			;7b4b
	rst 38h			;7b4c
	rst 38h			;7b4d
	rst 38h			;7b4e
	rst 38h			;7b4f
	rst 38h			;7b50
	rst 38h			;7b51
	rst 38h			;7b52
	rst 38h			;7b53
	rst 38h			;7b54
	rst 38h			;7b55
	rst 38h			;7b56
	rst 38h			;7b57
	rst 38h			;7b58
	rst 38h			;7b59
	rst 38h			;7b5a
	rst 38h			;7b5b
	rst 38h			;7b5c
	rst 38h			;7b5d
	rst 38h			;7b5e
	rst 38h			;7b5f
	rst 38h			;7b60
	rst 38h			;7b61
	rst 38h			;7b62
	rst 38h			;7b63
	rst 38h			;7b64
	rst 38h			;7b65
	rst 38h			;7b66
	rst 38h			;7b67
	rst 38h			;7b68
	rst 38h			;7b69
	rst 38h			;7b6a
	rst 38h			;7b6b
	rst 38h			;7b6c
	rst 38h			;7b6d
	rst 38h			;7b6e
	rst 38h			;7b6f
	rst 38h			;7b70
	rst 38h			;7b71
	rst 38h			;7b72
	rst 38h			;7b73
	rst 38h			;7b74
	rst 38h			;7b75
	rst 38h			;7b76
	rst 38h			;7b77
	rst 38h			;7b78
	rst 38h			;7b79
	rst 38h			;7b7a
	rst 38h			;7b7b
	rst 38h			;7b7c
	rst 38h			;7b7d
	rst 38h			;7b7e
	rst 38h			;7b7f
	rst 38h			;7b80
	rst 38h			;7b81
	rst 38h			;7b82
	rst 38h			;7b83
	rst 38h			;7b84
	rst 38h			;7b85
	rst 38h			;7b86
	rst 38h			;7b87
	rst 38h			;7b88
	rst 38h			;7b89
	rst 38h			;7b8a
	rst 38h			;7b8b
	rst 38h			;7b8c
	rst 38h			;7b8d
	rst 38h			;7b8e
	rst 38h			;7b8f
	rst 38h			;7b90
	rst 38h			;7b91
	rst 38h			;7b92
	rst 38h			;7b93
	rst 38h			;7b94
	rst 38h			;7b95
	rst 38h			;7b96
	rst 38h			;7b97
	rst 38h			;7b98
	rst 38h			;7b99
	rst 38h			;7b9a
	rst 38h			;7b9b
	rst 38h			;7b9c
	rst 38h			;7b9d
	rst 38h			;7b9e
	rst 38h			;7b9f
	rst 38h			;7ba0
	rst 38h			;7ba1
	rst 38h			;7ba2
	rst 38h			;7ba3
	rst 38h			;7ba4
	rst 38h			;7ba5
	rst 38h			;7ba6
	rst 38h			;7ba7
	rst 38h			;7ba8
	rst 38h			;7ba9
	rst 38h			;7baa
	rst 38h			;7bab
	rst 38h			;7bac
	rst 38h			;7bad
	rst 38h			;7bae
	rst 38h			;7baf
	rst 38h			;7bb0
	rst 38h			;7bb1
	rst 38h			;7bb2
	rst 38h			;7bb3
	rst 38h			;7bb4
	rst 38h			;7bb5
	rst 38h			;7bb6
	rst 38h			;7bb7
	rst 38h			;7bb8
	rst 38h			;7bb9
	rst 38h			;7bba
	rst 38h			;7bbb
	rst 38h			;7bbc
	rst 38h			;7bbd
	rst 38h			;7bbe
	rst 38h			;7bbf
	rst 38h			;7bc0
	rst 38h			;7bc1
	rst 38h			;7bc2
	rst 38h			;7bc3
	rst 38h			;7bc4
	rst 38h			;7bc5
	rst 38h			;7bc6
	rst 38h			;7bc7
	rst 38h			;7bc8
	rst 38h			;7bc9
	rst 38h			;7bca
	rst 38h			;7bcb
	rst 38h			;7bcc
	rst 38h			;7bcd
	rst 38h			;7bce
	rst 38h			;7bcf
	rst 38h			;7bd0
	rst 38h			;7bd1
	rst 38h			;7bd2
	rst 38h			;7bd3
	rst 38h			;7bd4
	rst 38h			;7bd5
	rst 38h			;7bd6
	rst 38h			;7bd7
	rst 38h			;7bd8
	rst 38h			;7bd9
	rst 38h			;7bda
	rst 38h			;7bdb
	rst 38h			;7bdc
	rst 38h			;7bdd
	rst 38h			;7bde
	rst 38h			;7bdf
	rst 38h			;7be0
	rst 38h			;7be1
	rst 38h			;7be2
	rst 38h			;7be3
	rst 38h			;7be4
	rst 38h			;7be5
	rst 38h			;7be6
	rst 38h			;7be7
	rst 38h			;7be8
	rst 38h			;7be9
	rst 38h			;7bea
	rst 38h			;7beb
	rst 38h			;7bec
	rst 38h			;7bed
	rst 38h			;7bee
	rst 38h			;7bef
	rst 38h			;7bf0
	rst 38h			;7bf1
	rst 38h			;7bf2
	rst 38h			;7bf3
	rst 38h			;7bf4
	rst 38h			;7bf5
	rst 38h			;7bf6
	rst 38h			;7bf7
	rst 38h			;7bf8
	rst 38h			;7bf9
	rst 38h			;7bfa
	rst 38h			;7bfb
	rst 38h			;7bfc
	rst 38h			;7bfd
	rst 38h			;7bfe
	rst 38h			;7bff
	rst 38h			;7c00
	rst 38h			;7c01
	rst 38h			;7c02
	rst 38h			;7c03
	rst 38h			;7c04
	rst 38h			;7c05
	rst 38h			;7c06
	rst 38h			;7c07
	rst 38h			;7c08
	rst 38h			;7c09
	rst 38h			;7c0a
	rst 38h			;7c0b
	rst 38h			;7c0c
	rst 38h			;7c0d
	rst 38h			;7c0e
	rst 38h			;7c0f
	rst 38h			;7c10
	rst 38h			;7c11
	rst 38h			;7c12
	rst 38h			;7c13
	rst 38h			;7c14
	rst 38h			;7c15
	rst 38h			;7c16
	rst 38h			;7c17
	rst 38h			;7c18
	rst 38h			;7c19
	rst 38h			;7c1a
	rst 38h			;7c1b
	rst 38h			;7c1c
	rst 38h			;7c1d
	rst 38h			;7c1e
	rst 38h			;7c1f
	rst 38h			;7c20
	rst 38h			;7c21
	rst 38h			;7c22
	rst 38h			;7c23
	rst 38h			;7c24
	rst 38h			;7c25
	rst 38h			;7c26
	rst 38h			;7c27
	rst 38h			;7c28
	rst 38h			;7c29
	rst 38h			;7c2a
	rst 38h			;7c2b
	rst 38h			;7c2c
	rst 38h			;7c2d
	rst 38h			;7c2e
	rst 38h			;7c2f
	rst 38h			;7c30
	rst 38h			;7c31
	rst 38h			;7c32
	rst 38h			;7c33
	rst 38h			;7c34
	rst 38h			;7c35
	rst 38h			;7c36
	rst 38h			;7c37
	rst 38h			;7c38
	rst 38h			;7c39
	rst 38h			;7c3a
	rst 38h			;7c3b
	rst 38h			;7c3c
	rst 38h			;7c3d
	rst 38h			;7c3e
	rst 38h			;7c3f
	rst 38h			;7c40
	rst 38h			;7c41
	rst 38h			;7c42
	rst 38h			;7c43
	rst 38h			;7c44
	rst 38h			;7c45
	rst 38h			;7c46
	rst 38h			;7c47
	rst 38h			;7c48
	rst 38h			;7c49
	rst 38h			;7c4a
	rst 38h			;7c4b
	rst 38h			;7c4c
	rst 38h			;7c4d
	rst 38h			;7c4e
	rst 38h			;7c4f
	rst 38h			;7c50
	rst 38h			;7c51
	rst 38h			;7c52
	rst 38h			;7c53
	rst 38h			;7c54
	rst 38h			;7c55
	rst 38h			;7c56
	rst 38h			;7c57
	rst 38h			;7c58
	rst 38h			;7c59
	rst 38h			;7c5a
	rst 38h			;7c5b
	rst 38h			;7c5c
	rst 38h			;7c5d
	rst 38h			;7c5e
	rst 38h			;7c5f
	rst 38h			;7c60
	rst 38h			;7c61
	rst 38h			;7c62
	rst 38h			;7c63
	rst 38h			;7c64
	rst 38h			;7c65
	rst 38h			;7c66
	rst 38h			;7c67
	rst 38h			;7c68
	rst 38h			;7c69
	rst 38h			;7c6a
	rst 38h			;7c6b
	rst 38h			;7c6c
	rst 38h			;7c6d
	rst 38h			;7c6e
	rst 38h			;7c6f
	rst 38h			;7c70
	rst 38h			;7c71
	rst 38h			;7c72
	rst 38h			;7c73
	rst 38h			;7c74
	rst 38h			;7c75
	rst 38h			;7c76
	rst 38h			;7c77
	rst 38h			;7c78
	rst 38h			;7c79
	rst 38h			;7c7a
	rst 38h			;7c7b
	rst 38h			;7c7c
	rst 38h			;7c7d
	rst 38h			;7c7e
	rst 38h			;7c7f
	rst 38h			;7c80
	rst 38h			;7c81
	rst 38h			;7c82
	rst 38h			;7c83
	rst 38h			;7c84
	rst 38h			;7c85
	rst 38h			;7c86
	rst 38h			;7c87
	rst 38h			;7c88
	rst 38h			;7c89
	rst 38h			;7c8a
	rst 38h			;7c8b
	rst 38h			;7c8c
	rst 38h			;7c8d
	rst 38h			;7c8e
	rst 38h			;7c8f
	rst 38h			;7c90
	rst 38h			;7c91
	rst 38h			;7c92
	rst 38h			;7c93
	rst 38h			;7c94
	rst 38h			;7c95
	rst 38h			;7c96
	rst 38h			;7c97
	rst 38h			;7c98
	rst 38h			;7c99
	rst 38h			;7c9a
	rst 38h			;7c9b
	rst 38h			;7c9c
	rst 38h			;7c9d
	rst 38h			;7c9e
	rst 38h			;7c9f
	rst 38h			;7ca0
	rst 38h			;7ca1
	rst 38h			;7ca2
	rst 38h			;7ca3
	rst 38h			;7ca4
	rst 38h			;7ca5
	rst 38h			;7ca6
	rst 38h			;7ca7
	rst 38h			;7ca8
	rst 38h			;7ca9
	rst 38h			;7caa
	rst 38h			;7cab
	rst 38h			;7cac
	rst 38h			;7cad
	rst 38h			;7cae
	rst 38h			;7caf
	rst 38h			;7cb0
	rst 38h			;7cb1
	rst 38h			;7cb2
	rst 38h			;7cb3
	rst 38h			;7cb4
	rst 38h			;7cb5
	rst 38h			;7cb6
	rst 38h			;7cb7
	rst 38h			;7cb8
	rst 38h			;7cb9
	rst 38h			;7cba
	rst 38h			;7cbb
	rst 38h			;7cbc
	rst 38h			;7cbd
	rst 38h			;7cbe
	rst 38h			;7cbf
	rst 38h			;7cc0
	rst 38h			;7cc1
	rst 38h			;7cc2
	rst 38h			;7cc3
	rst 38h			;7cc4
	rst 38h			;7cc5
	rst 38h			;7cc6
	rst 38h			;7cc7
	rst 38h			;7cc8
	rst 38h			;7cc9
	rst 38h			;7cca
	rst 38h			;7ccb
	rst 38h			;7ccc
	rst 38h			;7ccd
	rst 38h			;7cce
	rst 38h			;7ccf
	rst 38h			;7cd0
	rst 38h			;7cd1
	rst 38h			;7cd2
	rst 38h			;7cd3
	rst 38h			;7cd4
	rst 38h			;7cd5
	rst 38h			;7cd6
	rst 38h			;7cd7
	rst 38h			;7cd8
	rst 38h			;7cd9
	rst 38h			;7cda
	rst 38h			;7cdb
	rst 38h			;7cdc
	rst 38h			;7cdd
	rst 38h			;7cde
	rst 38h			;7cdf
	rst 38h			;7ce0
	rst 38h			;7ce1
	rst 38h			;7ce2
	rst 38h			;7ce3
	rst 38h			;7ce4
	rst 38h			;7ce5
	rst 38h			;7ce6
	rst 38h			;7ce7
	rst 38h			;7ce8
	rst 38h			;7ce9
	rst 38h			;7cea
	rst 38h			;7ceb
	rst 38h			;7cec
	rst 38h			;7ced
	rst 38h			;7cee
	rst 38h			;7cef
	rst 38h			;7cf0
	rst 38h			;7cf1
	rst 38h			;7cf2
	rst 38h			;7cf3
	rst 38h			;7cf4
	rst 38h			;7cf5
	rst 38h			;7cf6
	rst 38h			;7cf7
	rst 38h			;7cf8
	rst 38h			;7cf9
	rst 38h			;7cfa
	rst 38h			;7cfb
	rst 38h			;7cfc
	rst 38h			;7cfd
	rst 38h			;7cfe
	rst 38h			;7cff
	rst 38h			;7d00
	rst 38h			;7d01
	rst 38h			;7d02
	rst 38h			;7d03
	rst 38h			;7d04
	rst 38h			;7d05
	rst 38h			;7d06
	rst 38h			;7d07
	rst 38h			;7d08
	rst 38h			;7d09
	rst 38h			;7d0a
	rst 38h			;7d0b
	rst 38h			;7d0c
	rst 38h			;7d0d
	rst 38h			;7d0e
	rst 38h			;7d0f
	rst 38h			;7d10
	rst 38h			;7d11
	rst 38h			;7d12
	rst 38h			;7d13
	rst 38h			;7d14
	rst 38h			;7d15
	rst 38h			;7d16
	rst 38h			;7d17
	rst 38h			;7d18
	rst 38h			;7d19
	rst 38h			;7d1a
	rst 38h			;7d1b
	rst 38h			;7d1c
	rst 38h			;7d1d
	rst 38h			;7d1e
	rst 38h			;7d1f
	rst 38h			;7d20
	rst 38h			;7d21
	rst 38h			;7d22
	rst 38h			;7d23
	rst 38h			;7d24
	rst 38h			;7d25
	rst 38h			;7d26
	rst 38h			;7d27
	rst 38h			;7d28
	rst 38h			;7d29
	rst 38h			;7d2a
	rst 38h			;7d2b
	rst 38h			;7d2c
	rst 38h			;7d2d
	rst 38h			;7d2e
	rst 38h			;7d2f
	rst 38h			;7d30
	rst 38h			;7d31
	rst 38h			;7d32
	rst 38h			;7d33
	rst 38h			;7d34
	rst 38h			;7d35
	rst 38h			;7d36
	rst 38h			;7d37
	rst 38h			;7d38
	rst 38h			;7d39
	rst 38h			;7d3a
	rst 38h			;7d3b
	rst 38h			;7d3c
	rst 38h			;7d3d
	rst 38h			;7d3e
	rst 38h			;7d3f
	rst 38h			;7d40
	rst 38h			;7d41
	rst 38h			;7d42
	rst 38h			;7d43
	rst 38h			;7d44
	rst 38h			;7d45
	rst 38h			;7d46
	rst 38h			;7d47
	rst 38h			;7d48
	rst 38h			;7d49
	rst 38h			;7d4a
	rst 38h			;7d4b
	rst 38h			;7d4c
	rst 38h			;7d4d
	rst 38h			;7d4e
	rst 38h			;7d4f
	rst 38h			;7d50
	rst 38h			;7d51
	rst 38h			;7d52
	rst 38h			;7d53
	rst 38h			;7d54
	rst 38h			;7d55
	rst 38h			;7d56
	rst 38h			;7d57
	rst 38h			;7d58
	rst 38h			;7d59
	rst 38h			;7d5a
	rst 38h			;7d5b
	rst 38h			;7d5c
	rst 38h			;7d5d
	rst 38h			;7d5e
	rst 38h			;7d5f
	rst 38h			;7d60
	rst 38h			;7d61
	rst 38h			;7d62
	rst 38h			;7d63
	rst 38h			;7d64
	rst 38h			;7d65
	rst 38h			;7d66
	rst 38h			;7d67
	rst 38h			;7d68
	rst 38h			;7d69
	rst 38h			;7d6a
	rst 38h			;7d6b
	rst 38h			;7d6c
	rst 38h			;7d6d
	rst 38h			;7d6e
	rst 38h			;7d6f
	rst 38h			;7d70
	rst 38h			;7d71
	rst 38h			;7d72
	rst 38h			;7d73
	rst 38h			;7d74
	rst 38h			;7d75
	rst 38h			;7d76
	rst 38h			;7d77
	rst 38h			;7d78
	rst 38h			;7d79
	rst 38h			;7d7a
	rst 38h			;7d7b
	rst 38h			;7d7c
	rst 38h			;7d7d
	rst 38h			;7d7e
	rst 38h			;7d7f
	rst 38h			;7d80
	rst 38h			;7d81
	rst 38h			;7d82
	rst 38h			;7d83
	rst 38h			;7d84
	rst 38h			;7d85
	rst 38h			;7d86
	rst 38h			;7d87
	rst 38h			;7d88
	rst 38h			;7d89
	rst 38h			;7d8a
	rst 38h			;7d8b
	rst 38h			;7d8c
	rst 38h			;7d8d
	rst 38h			;7d8e
	rst 38h			;7d8f
	rst 38h			;7d90
	rst 38h			;7d91
	rst 38h			;7d92
	rst 38h			;7d93
	rst 38h			;7d94
	rst 38h			;7d95
	rst 38h			;7d96
	rst 38h			;7d97
	rst 38h			;7d98
	rst 38h			;7d99
	rst 38h			;7d9a
	rst 38h			;7d9b
	rst 38h			;7d9c
	rst 38h			;7d9d
	rst 38h			;7d9e
	rst 38h			;7d9f
	rst 38h			;7da0
	rst 38h			;7da1
	rst 38h			;7da2
	rst 38h			;7da3
	rst 38h			;7da4
	rst 38h			;7da5
	rst 38h			;7da6
	rst 38h			;7da7
	rst 38h			;7da8
	rst 38h			;7da9
	rst 38h			;7daa
	rst 38h			;7dab
	rst 38h			;7dac
	rst 38h			;7dad
	rst 38h			;7dae
	rst 38h			;7daf
	rst 38h			;7db0
	rst 38h			;7db1
	rst 38h			;7db2
	rst 38h			;7db3
	rst 38h			;7db4
	rst 38h			;7db5
	rst 38h			;7db6
	rst 38h			;7db7
	rst 38h			;7db8
	rst 38h			;7db9
	rst 38h			;7dba
	rst 38h			;7dbb
	rst 38h			;7dbc
	rst 38h			;7dbd
	rst 38h			;7dbe
	rst 38h			;7dbf
	rst 38h			;7dc0
	rst 38h			;7dc1
	rst 38h			;7dc2
	rst 38h			;7dc3
	rst 38h			;7dc4
	rst 38h			;7dc5
	rst 38h			;7dc6
	rst 38h			;7dc7
	rst 38h			;7dc8
	rst 38h			;7dc9
	rst 38h			;7dca
	rst 38h			;7dcb
	rst 38h			;7dcc
	rst 38h			;7dcd
	rst 38h			;7dce
	rst 38h			;7dcf
	rst 38h			;7dd0
	rst 38h			;7dd1
	rst 38h			;7dd2
	rst 38h			;7dd3
	rst 38h			;7dd4
	rst 38h			;7dd5
	rst 38h			;7dd6
	rst 38h			;7dd7
	rst 38h			;7dd8
	rst 38h			;7dd9
	rst 38h			;7dda
	rst 38h			;7ddb
	rst 38h			;7ddc
	rst 38h			;7ddd
	rst 38h			;7dde
	rst 38h			;7ddf
	rst 38h			;7de0
	rst 38h			;7de1
	rst 38h			;7de2
	rst 38h			;7de3
	rst 38h			;7de4
	rst 38h			;7de5
	rst 38h			;7de6
	rst 38h			;7de7
	rst 38h			;7de8
	rst 38h			;7de9
	rst 38h			;7dea
	rst 38h			;7deb
	rst 38h			;7dec
	rst 38h			;7ded
	rst 38h			;7dee
	rst 38h			;7def
	rst 38h			;7df0
	rst 38h			;7df1
	rst 38h			;7df2
	rst 38h			;7df3
	rst 38h			;7df4
	rst 38h			;7df5
	rst 38h			;7df6
	rst 38h			;7df7
	rst 38h			;7df8
	rst 38h			;7df9
	rst 38h			;7dfa
	rst 38h			;7dfb
	rst 38h			;7dfc
	rst 38h			;7dfd
	rst 38h			;7dfe
	rst 38h			;7dff
	rst 38h			;7e00
	rst 38h			;7e01
	rst 38h			;7e02
	rst 38h			;7e03
	rst 38h			;7e04
	rst 38h			;7e05
	rst 38h			;7e06
	rst 38h			;7e07
	rst 38h			;7e08
	rst 38h			;7e09
	rst 38h			;7e0a
	rst 38h			;7e0b
	rst 38h			;7e0c
	rst 38h			;7e0d
	rst 38h			;7e0e
	rst 38h			;7e0f
	rst 38h			;7e10
	rst 38h			;7e11
	rst 38h			;7e12
	rst 38h			;7e13
	rst 38h			;7e14
	rst 38h			;7e15
	rst 38h			;7e16
	rst 38h			;7e17
	rst 38h			;7e18
	rst 38h			;7e19
	rst 38h			;7e1a
	rst 38h			;7e1b
	rst 38h			;7e1c
	rst 38h			;7e1d
	rst 38h			;7e1e
	rst 38h			;7e1f
	rst 38h			;7e20
	rst 38h			;7e21
	rst 38h			;7e22
	rst 38h			;7e23
	rst 38h			;7e24
	rst 38h			;7e25
	rst 38h			;7e26
	rst 38h			;7e27
	rst 38h			;7e28
	rst 38h			;7e29
	rst 38h			;7e2a
	rst 38h			;7e2b
	rst 38h			;7e2c
	rst 38h			;7e2d
	rst 38h			;7e2e
	rst 38h			;7e2f
	rst 38h			;7e30
	rst 38h			;7e31
	rst 38h			;7e32
	rst 38h			;7e33
	rst 38h			;7e34
	rst 38h			;7e35
	rst 38h			;7e36
	rst 38h			;7e37
	rst 38h			;7e38
	rst 38h			;7e39
	rst 38h			;7e3a
	rst 38h			;7e3b
	rst 38h			;7e3c
	rst 38h			;7e3d
	rst 38h			;7e3e
	rst 38h			;7e3f
	rst 38h			;7e40
	rst 38h			;7e41
	rst 38h			;7e42
	rst 38h			;7e43
	rst 38h			;7e44
	rst 38h			;7e45
	rst 38h			;7e46
	rst 38h			;7e47
	rst 38h			;7e48
	rst 38h			;7e49
	rst 38h			;7e4a
	rst 38h			;7e4b
	rst 38h			;7e4c
	rst 38h			;7e4d
	rst 38h			;7e4e
	rst 38h			;7e4f
	rst 38h			;7e50
	rst 38h			;7e51
	rst 38h			;7e52
	rst 38h			;7e53
	rst 38h			;7e54
	rst 38h			;7e55
	rst 38h			;7e56
	rst 38h			;7e57
	rst 38h			;7e58
	rst 38h			;7e59
	rst 38h			;7e5a
	rst 38h			;7e5b
	rst 38h			;7e5c
	rst 38h			;7e5d
	rst 38h			;7e5e
	rst 38h			;7e5f
	rst 38h			;7e60
	rst 38h			;7e61
	rst 38h			;7e62
	rst 38h			;7e63
	rst 38h			;7e64
	rst 38h			;7e65
	rst 38h			;7e66
	rst 38h			;7e67
	rst 38h			;7e68
	rst 38h			;7e69
	rst 38h			;7e6a
	rst 38h			;7e6b
	rst 38h			;7e6c
	rst 38h			;7e6d
	rst 38h			;7e6e
	rst 38h			;7e6f
	rst 38h			;7e70
	rst 38h			;7e71
	rst 38h			;7e72
	rst 38h			;7e73
	rst 38h			;7e74
	rst 38h			;7e75
	rst 38h			;7e76
	rst 38h			;7e77
	rst 38h			;7e78
	rst 38h			;7e79
	rst 38h			;7e7a
	rst 38h			;7e7b
	rst 38h			;7e7c
	rst 38h			;7e7d
	rst 38h			;7e7e
	rst 38h			;7e7f
	rst 38h			;7e80
	rst 38h			;7e81
	rst 38h			;7e82
	rst 38h			;7e83
	rst 38h			;7e84
	rst 38h			;7e85
	rst 38h			;7e86
	rst 38h			;7e87
	rst 38h			;7e88
	rst 38h			;7e89
	rst 38h			;7e8a
	rst 38h			;7e8b
	rst 38h			;7e8c
	rst 38h			;7e8d
	rst 38h			;7e8e
	rst 38h			;7e8f
	rst 38h			;7e90
	rst 38h			;7e91
	rst 38h			;7e92
	rst 38h			;7e93
	rst 38h			;7e94
	rst 38h			;7e95
	rst 38h			;7e96
	rst 38h			;7e97
	rst 38h			;7e98
	rst 38h			;7e99
	rst 38h			;7e9a
	rst 38h			;7e9b
	rst 38h			;7e9c
	rst 38h			;7e9d
	rst 38h			;7e9e
	rst 38h			;7e9f
	rst 38h			;7ea0
	rst 38h			;7ea1
	rst 38h			;7ea2
	rst 38h			;7ea3
	rst 38h			;7ea4
	rst 38h			;7ea5
	rst 38h			;7ea6
	rst 38h			;7ea7
	rst 38h			;7ea8
	rst 38h			;7ea9
	rst 38h			;7eaa
	rst 38h			;7eab
	rst 38h			;7eac
	rst 38h			;7ead
	rst 38h			;7eae
	rst 38h			;7eaf
	rst 38h			;7eb0
	rst 38h			;7eb1
	rst 38h			;7eb2
	rst 38h			;7eb3
	rst 38h			;7eb4
	rst 38h			;7eb5
	rst 38h			;7eb6
	rst 38h			;7eb7
	rst 38h			;7eb8
	rst 38h			;7eb9
	rst 38h			;7eba
	rst 38h			;7ebb
	rst 38h			;7ebc
	rst 38h			;7ebd
	rst 38h			;7ebe
	rst 38h			;7ebf
	rst 38h			;7ec0
	rst 38h			;7ec1
	rst 38h			;7ec2
	rst 38h			;7ec3
	rst 38h			;7ec4
	rst 38h			;7ec5
	rst 38h			;7ec6
	rst 38h			;7ec7
	rst 38h			;7ec8
	rst 38h			;7ec9
	rst 38h			;7eca
	rst 38h			;7ecb
	rst 38h			;7ecc
	rst 38h			;7ecd
	rst 38h			;7ece
	rst 38h			;7ecf
	rst 38h			;7ed0
	rst 38h			;7ed1
	rst 38h			;7ed2
	rst 38h			;7ed3
	rst 38h			;7ed4
	rst 38h			;7ed5
	rst 38h			;7ed6
	rst 38h			;7ed7
	rst 38h			;7ed8
	rst 38h			;7ed9
	rst 38h			;7eda
	rst 38h			;7edb
	rst 38h			;7edc
	rst 38h			;7edd
	rst 38h			;7ede
	rst 38h			;7edf
	rst 38h			;7ee0
	rst 38h			;7ee1
	rst 38h			;7ee2
	rst 38h			;7ee3
	rst 38h			;7ee4
	rst 38h			;7ee5
	rst 38h			;7ee6
	rst 38h			;7ee7
	rst 38h			;7ee8
	rst 38h			;7ee9
	rst 38h			;7eea
	rst 38h			;7eeb
	rst 38h			;7eec
	rst 38h			;7eed
	rst 38h			;7eee
	rst 38h			;7eef
	rst 38h			;7ef0
	rst 38h			;7ef1
	rst 38h			;7ef2
	rst 38h			;7ef3
	rst 38h			;7ef4
	rst 38h			;7ef5
	rst 38h			;7ef6
	rst 38h			;7ef7
	rst 38h			;7ef8
	rst 38h			;7ef9
	rst 38h			;7efa
	rst 38h			;7efb
	rst 38h			;7efc
l7efdh:
	rst 38h			;7efd
	rst 38h			;7efe
	rst 38h			;7eff
	rst 38h			;7f00
	rst 38h			;7f01
	rst 38h			;7f02
	rst 38h			;7f03
	rst 38h			;7f04
	rst 38h			;7f05
	rst 38h			;7f06
	rst 38h			;7f07
	rst 38h			;7f08
	rst 38h			;7f09
	rst 38h			;7f0a
	rst 38h			;7f0b
	rst 38h			;7f0c
	rst 38h			;7f0d
	rst 38h			;7f0e
	rst 38h			;7f0f
	rst 38h			;7f10
	rst 38h			;7f11
	rst 38h			;7f12
	rst 38h			;7f13
	rst 38h			;7f14
	rst 38h			;7f15
	rst 38h			;7f16
	rst 38h			;7f17
	rst 38h			;7f18
	rst 38h			;7f19
	rst 38h			;7f1a
	rst 38h			;7f1b
	rst 38h			;7f1c
	rst 38h			;7f1d
	rst 38h			;7f1e
	rst 38h			;7f1f
	rst 38h			;7f20
	rst 38h			;7f21
	rst 38h			;7f22
	rst 38h			;7f23
	rst 38h			;7f24
	rst 38h			;7f25
	rst 38h			;7f26
	rst 38h			;7f27
	rst 38h			;7f28
	rst 38h			;7f29
	rst 38h			;7f2a
	rst 38h			;7f2b
	rst 38h			;7f2c
	rst 38h			;7f2d
	rst 38h			;7f2e
	rst 38h			;7f2f
	rst 38h			;7f30
	rst 38h			;7f31
	rst 38h			;7f32
	rst 38h			;7f33
	rst 38h			;7f34
	rst 38h			;7f35
	rst 38h			;7f36
	rst 38h			;7f37
	rst 38h			;7f38
	rst 38h			;7f39
	rst 38h			;7f3a
	rst 38h			;7f3b
	rst 38h			;7f3c
	rst 38h			;7f3d
	rst 38h			;7f3e
	rst 38h			;7f3f
	rst 38h			;7f40
	rst 38h			;7f41
	rst 38h			;7f42
	rst 38h			;7f43
	rst 38h			;7f44
	rst 38h			;7f45
	rst 38h			;7f46
	rst 38h			;7f47
	rst 38h			;7f48
	rst 38h			;7f49
	rst 38h			;7f4a
	rst 38h			;7f4b
	rst 38h			;7f4c
	rst 38h			;7f4d
	rst 38h			;7f4e
	rst 38h			;7f4f
	rst 38h			;7f50
	rst 38h			;7f51
	rst 38h			;7f52
	rst 38h			;7f53
	rst 38h			;7f54
	rst 38h			;7f55
	rst 38h			;7f56
	rst 38h			;7f57
	rst 38h			;7f58
	rst 38h			;7f59
	rst 38h			;7f5a
	rst 38h			;7f5b
	rst 38h			;7f5c
	rst 38h			;7f5d
	rst 38h			;7f5e
	rst 38h			;7f5f
	rst 38h			;7f60
	rst 38h			;7f61
	rst 38h			;7f62
	rst 38h			;7f63
	rst 38h			;7f64
	rst 38h			;7f65
	rst 38h			;7f66
	rst 38h			;7f67
	rst 38h			;7f68
	rst 38h			;7f69
	rst 38h			;7f6a
	rst 38h			;7f6b
	rst 38h			;7f6c
	rst 38h			;7f6d
	rst 38h			;7f6e
	rst 38h			;7f6f
	rst 38h			;7f70
	rst 38h			;7f71
	rst 38h			;7f72
	rst 38h			;7f73
	rst 38h			;7f74
	rst 38h			;7f75
	rst 38h			;7f76
	rst 38h			;7f77
	rst 38h			;7f78
	rst 38h			;7f79
	rst 38h			;7f7a
	rst 38h			;7f7b
	rst 38h			;7f7c
	rst 38h			;7f7d
	rst 38h			;7f7e
	rst 38h			;7f7f
	rst 38h			;7f80
	rst 38h			;7f81
	rst 38h			;7f82
	rst 38h			;7f83
	rst 38h			;7f84
	rst 38h			;7f85
	rst 38h			;7f86
	rst 38h			;7f87
	rst 38h			;7f88
	rst 38h			;7f89
	rst 38h			;7f8a
	rst 38h			;7f8b
	rst 38h			;7f8c
	rst 38h			;7f8d
	rst 38h			;7f8e
	rst 38h			;7f8f
	rst 38h			;7f90
	rst 38h			;7f91
	rst 38h			;7f92
	rst 38h			;7f93
	rst 38h			;7f94
	rst 38h			;7f95
	rst 38h			;7f96
	rst 38h			;7f97
	rst 38h			;7f98
	rst 38h			;7f99
	rst 38h			;7f9a
	rst 38h			;7f9b
	rst 38h			;7f9c
	rst 38h			;7f9d
	rst 38h			;7f9e
	rst 38h			;7f9f
	rst 38h			;7fa0
	rst 38h			;7fa1
	rst 38h			;7fa2
	rst 38h			;7fa3
	rst 38h			;7fa4
	rst 38h			;7fa5
	rst 38h			;7fa6
	rst 38h			;7fa7
	rst 38h			;7fa8
	rst 38h			;7fa9
	rst 38h			;7faa
	rst 38h			;7fab
	rst 38h			;7fac
	rst 38h			;7fad
	rst 38h			;7fae
	rst 38h			;7faf
	rst 38h			;7fb0
	rst 38h			;7fb1
	rst 38h			;7fb2
	rst 38h			;7fb3
	rst 38h			;7fb4
	rst 38h			;7fb5
	rst 38h			;7fb6
	rst 38h			;7fb7
	rst 38h			;7fb8
	rst 38h			;7fb9
	rst 38h			;7fba
	rst 38h			;7fbb
	rst 38h			;7fbc
	rst 38h			;7fbd
	rst 38h			;7fbe
	rst 38h			;7fbf
	rst 38h			;7fc0
	rst 38h			;7fc1
	rst 38h			;7fc2
	rst 38h			;7fc3
	rst 38h			;7fc4
	rst 38h			;7fc5
	rst 38h			;7fc6
	rst 38h			;7fc7
	rst 38h			;7fc8
	rst 38h			;7fc9
	rst 38h			;7fca
	rst 38h			;7fcb
	rst 38h			;7fcc
	rst 38h			;7fcd
	rst 38h			;7fce
	rst 38h			;7fcf
	rst 38h			;7fd0
	rst 38h			;7fd1
	rst 38h			;7fd2
	rst 38h			;7fd3
	rst 38h			;7fd4
	rst 38h			;7fd5
	rst 38h			;7fd6
	rst 38h			;7fd7
	rst 38h			;7fd8
	rst 38h			;7fd9
	rst 38h			;7fda
	rst 38h			;7fdb
	rst 38h			;7fdc
	rst 38h			;7fdd
	rst 38h			;7fde
	rst 38h			;7fdf
	rst 38h			;7fe0
	rst 38h			;7fe1
	rst 38h			;7fe2
	rst 38h			;7fe3
	rst 38h			;7fe4
	rst 38h			;7fe5
	rst 38h			;7fe6
	rst 38h			;7fe7
	rst 38h			;7fe8
	rst 38h			;7fe9
	rst 38h			;7fea
	rst 38h			;7feb
	rst 38h			;7fec
	rst 38h			;7fed
	rst 38h			;7fee
	rst 38h			;7fef
	rst 38h			;7ff0
	rst 38h			;7ff1
	rst 38h			;7ff2
	rst 38h			;7ff3
	rst 38h			;7ff4
	rst 38h			;7ff5
	rst 38h			;7ff6
	rst 38h			;7ff7
	rst 38h			;7ff8
	rst 38h			;7ff9
	rst 38h			;7ffa
	rst 38h			;7ffb
	rst 38h			;7ffc
	rst 38h			;7ffd
	rst 38h			;7ffe
	rst 38h			;7fff
