.386
.model flat, C    
option casemap :none

.code

_neg proc
	mov al, dl
	neg al
	ret
_neg endp

_morfkey proc key:DWORD

	sub esp, 8

	pushad

	mov byte ptr [ebp-5h], 0h
	mov edi, 0
	mov ebx, key

@L00000001:
	movzx eax, byte ptr [ebx+edi]
	mov esi, 1h

@L00000002:
	movzx edx, al
	cmp edx, 0FFh
	ja @L00000746
	jmp dword ptr [edx*4h+@L00000003]

@L00000003:
	dd @L00000004
	dd @L00000005
	dd @L00000006
	dd @L00000007
	dd @L00000008
	dd @L00000015
	dd @L00000022
	dd @L00000023
	dd @L00000024
	dd @L00000025
	dd @L00000026
	dd @L00000027
	dd @L00000028
	dd @L00000035
	dd @L00000042
	dd @L00000049
	dd @L00000050
	dd @L00000051
	dd @L00000052
	dd @L00000053
	dd @L00000054
	dd @L00000055
	dd @L00000062
	dd @L00000063
	dd @L00000064
	dd @L00000071
	dd @L00000072
	dd @L00000073
	dd @L00000080
	dd @L00000081
	dd @L00000088
	dd @L00000089
	dd @L00000096
	dd @L00000103
	dd @L00000104
	dd @L00000105
	dd @L00000112
	dd @L00000113
	dd @L00000120
	dd @L00000121
	dd @L00000128
	dd @L00000129
	dd @L00000130
	dd @L00000131
	dd @L00000138
	dd @L00000139
	dd @L00000140
	dd @L00000141
	dd @L00000148
	dd @L00000155
	dd @L00000156
	dd @L00000163
	dd @L00000164
	dd @L00000171
	dd @L00000172
	dd @L00000179
	dd @L00000180
	dd @L00000181
	dd @L00000182
	dd @L00000183
	dd @L00000184
	dd @L00000191
	dd @L00000198
	dd @L00000205
	dd @L00000212
	dd @L00000213
	dd @L00000220
	dd @L00000221
	dd @L00000222
	dd @L00000223
	dd @L00000224
	dd @L00000225
	dd @L00000232
	dd @L00000233
	dd @L00000234
	dd @L00000235
	dd @L00000242
	dd @L00000243
	dd @L00000250
	dd @L00000251
	dd @L00000252
	dd @L00000253
	dd @L00000254
	dd @L00000255
	dd @L00000262
	dd @L00000263
	dd @L00000270
	dd @L00000271
	dd @L00000272
	dd @L00000279
	dd @L00000280
	dd @L00000281
	dd @L00000282
	dd @L00000289
	dd @L00000290
	dd @L00000297
	dd @L00000304
	dd @L00000311
	dd @L00000318
	dd @L00000319
	dd @L00000326
	dd @L00000327
	dd @L00000328
	dd @L00000329
	dd @L00000330
	dd @L00000331
	dd @L00000332
	dd @L00000339
	dd @L00000340
	dd @L00000341
	dd @L00000342
	dd @L00000349
	dd @L00000356
	dd @L00000357
	dd @L00000358
	dd @L00000365
	dd @L00000366
	dd @L00000373
	dd @L00000374
	dd @L00000375
	dd @L00000376
	dd @L00000377
	dd @L00000384
	dd @L00000391
	dd @L00000392
	dd @L00000393
	dd @L00000400
	dd @L00000401
	dd @L00000408
	dd @L00000409
	dd @L00000410
	dd @L00000411
	dd @L00000412
	dd @L00000419
	dd @L00000420
	dd @L00000421
	dd @L00000428
	dd @L00000429
	dd @L00000430
	dd @L00000431
	dd @L00000432
	dd @L00000433
	dd @L00000434
	dd @L00000441
	dd @L00000448
	dd @L00000455
	dd @L00000462
	dd @L00000463
	dd @L00000464
	dd @L00000465
	dd @L00000466
	dd @L00000467
	dd @L00000468
	dd @L00000475
	dd @L00000476
	dd @L00000483
	dd @L00000484
	dd @L00000485
	dd @L00000492
	dd @L00000493
	dd @L00000494
	dd @L00000495
	dd @L00000496
	dd @L00000497
	dd @L00000498
	dd @L00000505
	dd @L00000506
	dd @L00000507
	dd @L00000514
	dd @L00000515
	dd @L00000516
	dd @L00000517
	dd @L00000518
	dd @L00000525
	dd @L00000532
	dd @L00000533
	dd @L00000534
	dd @L00000541
	dd @L00000548
	dd @L00000549
	dd @L00000550
	dd @L00000551
	dd @L00000558
	dd @L00000559
	dd @L00000560
	dd @L00000561
	dd @L00000562
	dd @L00000563
	dd @L00000564
	dd @L00000565
	dd @L00000572
	dd @L00000573
	dd @L00000574
	dd @L00000575
	dd @L00000576
	dd @L00000577
	dd @L00000578
	dd @L00000579
	dd @L00000580
	dd @L00000581
	dd @L00000582
	dd @L00000583
	dd @L00000584
	dd @L00000591
	dd @L00000592
	dd @L00000593
	dd @L00000594
	dd @L00000601
	dd @L00000602
	dd @L00000609
	dd @L00000616
	dd @L00000617
	dd @L00000624
	dd @L00000625
	dd @L00000632
	dd @L00000633
	dd @L00000634
	dd @L00000641
	dd @L00000642
	dd @L00000649
	dd @L00000650
	dd @L00000651
	dd @L00000652
	dd @L00000653
	dd @L00000660
	dd @L00000661
	dd @L00000662
	dd @L00000669
	dd @L00000670
	dd @L00000671
	dd @L00000678
	dd @L00000685
	dd @L00000686
	dd @L00000687
	dd @L00000688
	dd @L00000689
	dd @L00000690
	dd @L00000691
	dd @L00000698
	dd @L00000699
	dd @L00000706
	dd @L00000707
	dd @L00000708
	dd @L00000715
	dd @L00000716
	dd @L00000717
	dd @L00000718
	dd @L00000719
	dd @L00000720
	dd @L00000727
	dd @L00000728
	dd @L00000729
	dd @L00000736
	dd @L00000737
	dd @L00000744
	dd @L00000745

@L00000004:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000005:
	movzx eax, byte ptr [ebx+0Ah]
	add byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000006:
	movzx eax, byte ptr [ebx+6h]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000007:
	movzx eax, byte ptr [ebx+2h]
	movzx edx, byte ptr [ebx+2h]
	mov byte ptr [ebx+3h], dl
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000008:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000009
	mov byte ptr [ebp-5h], 1h

@L00000009:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000010
	dec al
	je short @L00000011
	dec al
	je short @L00000012
	dec al
	je short @L00000013
	jmp short @L00000014

@L00000010:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+2h], al
	jmp short @L00000014

@L00000011:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+2h], al
	jmp short @L00000014

@L00000012:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, edx
	mov byte ptr [ebx+2h], dl
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000014

@L00000013:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+2h], al

@L00000014:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000015:
	not byte ptr [ebx+6h]
	mov eax, esi
	add byte ptr [ebx+6h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000016
	mov byte ptr [ebp-5h], 1h

@L00000016:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000017
	dec al
	je short @L00000018
	dec al
	je short @L00000019
	dec al
	je short @L00000020
	jmp short @L00000021

@L00000017:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+9h], al
	jmp short @L00000021

@L00000018:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+9h], al
	jmp short @L00000021

@L00000019:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+9h], al
	jmp short @L00000021

@L00000020:
	movzx edx, byte ptr [ebx+6h]
	mov eax, edx
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+6h], al

@L00000021:
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000022:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000023:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000024:
	movzx eax, byte ptr [ebx+0Dh]
	sub byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000025:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000026:
	movzx eax, byte ptr [ebx+9h]
	mov edx, eax
	xor dl, al
	mov byte ptr [ebx+9h], dl
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000027:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx], dl
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000028:
	movzx edx, byte ptr [ebx+0Fh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000029
	mov byte ptr [ebp-5h], 1h

@L00000029:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000030
	dec al
	je short @L00000031
	dec al
	je short @L00000032
	dec al
	je short @L00000033
	jmp short @L00000034

@L00000030:
	movzx eax, byte ptr [ebx]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx], al
	jmp short @L00000034

@L00000031:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx], al
	jmp short @L00000034

@L00000032:
	movzx edx, byte ptr [ebx+0Fh]
	mov eax, edx
	mov byte ptr [ebx], dl
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000034

@L00000033:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx], al

@L00000034:
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000035:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000036
	mov byte ptr [ebp-5h], 1h

@L00000036:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000037
	dec al
	je short @L00000038
	dec al
	je short @L00000039
	dec al
	je short @L00000040
	jmp short @L00000041

@L00000037:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+5h], al
	jmp short @L00000041

@L00000038:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+5h], al
	jmp short @L00000041

@L00000039:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, edx
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000041

@L00000040:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+5h], al

@L00000041:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000042:
	not byte ptr [ebx+0Ch]
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000043
	mov byte ptr [ebp-5h], 1h

@L00000043:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000044
	dec al
	je short @L00000045
	dec al
	je short @L00000046
	dec al
	je short @L00000047
	jmp short @L00000048

@L00000044:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+5h], al
	jmp short @L00000048

@L00000045:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+5h], al
	jmp short @L00000048

@L00000046:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+5h], al
	jmp short @L00000048

@L00000047:
	movzx edx, byte ptr [ebx+0Ch]
	mov eax, edx
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx+0Ch], al

@L00000048:
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000049:
	movzx eax, byte ptr [ebx+0Ah]
	add byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000050:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000051:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000052:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+3h]
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000053:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000054:
	movzx eax, byte ptr [ebx+9h]
	movzx edx, byte ptr [ebx+9h]
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000055:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000056
	mov byte ptr [ebp-5h], 1h

@L00000056:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000057
	dec al
	je short @L00000058
	dec al
	je short @L00000059
	dec al
	je short @L00000060
	jmp short @L00000061

@L00000057:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000061

@L00000058:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+0Bh], al
	jmp short @L00000061

@L00000059:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, edx
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000061

@L00000060:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+0Bh], al

@L00000061:
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000062:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000063:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000064:
	movzx edx, byte ptr [ebx+0Fh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000065
	mov byte ptr [ebp-5h], 1h

@L00000065:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000066
	dec al
	je short @L00000067
	dec al
	je short @L00000068
	dec al
	je short @L00000069
	jmp short @L00000070

@L00000066:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000070

@L00000067:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx+0Ch], al
	jmp short @L00000070

@L00000068:
	movzx edx, byte ptr [ebx+0Fh]
	mov eax, edx
	mov byte ptr [ebx+0Ch], dl
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000070

@L00000069:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+0Ch], al

@L00000070:
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000071:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000072:
	movzx eax, byte ptr [ebx]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000073:
	movzx edx, byte ptr [ebx+7h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000074
	mov byte ptr [ebp-5h], 1h

@L00000074:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000075
	dec al
	je short @L00000076
	dec al
	je short @L00000077
	dec al
	je short @L00000078
	jmp short @L00000079

@L00000075:
	movzx eax, byte ptr [ebx+7h]
	mov edx, eax
	xor dl, al
	mov byte ptr [ebx+7h], dl
	jmp short @L00000079

@L00000076:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+7h], al
	jmp short @L00000079

@L00000077:
	movzx edx, byte ptr [ebx+7h]
	mov eax, edx
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+7h], al
	jmp short @L00000079

@L00000078:
	movzx eax, byte ptr [ebx+7h]
	sub byte ptr [ebx+7h], al

@L00000079:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000080:
	movzx eax, byte ptr [ebx+0Dh]
	sub byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000081:
	not byte ptr [ebx+2h]
	mov eax, esi
	add byte ptr [ebx+2h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000082
	mov byte ptr [ebp-5h], 1h

@L00000082:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000083
	dec al
	je short @L00000084
	dec al
	je short @L00000085
	dec al
	je short @L00000086
	jmp short @L00000087

@L00000083:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+0Fh], al
	jmp short @L00000087

@L00000084:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Fh], al
	jmp short @L00000087

@L00000085:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000087

@L00000086:
	movzx edx, byte ptr [ebx+2h]
	mov eax, edx
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+2h], al

@L00000087:
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000088:
	movzx eax, byte ptr [ebx+1h]
	movzx edx, byte ptr [ebx+1h]
	mov byte ptr [ebx+3h], dl
	mov byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000089:
	movzx edx, byte ptr [ebx+0Ch]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000090
	mov byte ptr [ebp-5h], 1h

@L00000090:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000091
	dec al
	je short @L00000092
	dec al
	je short @L00000093
	dec al
	je short @L00000094
	jmp short @L00000095

@L00000091:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000095

@L00000092:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+0Bh], al
	jmp short @L00000095

@L00000093:
	movzx edx, byte ptr [ebx+0Ch]
	mov eax, edx
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000095

@L00000094:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+0Bh], al

@L00000095:
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000096:
	not byte ptr [ebx+4h]
	mov eax, esi
	add byte ptr [ebx+4h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000097
	mov byte ptr [ebp-5h], 1h

@L00000097:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000098
	dec al
	je short @L00000099
	dec al
	je short @L00000100
	dec al
	je short @L00000101
	jmp short @L00000102

@L00000098:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+1h], al
	jmp short @L00000102

@L00000099:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+1h], al
	jmp short @L00000102

@L00000100:
	movzx eax, byte ptr [ebx+1h]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+1h], al
	jmp short @L00000102

@L00000101:
	movzx edx, byte ptr [ebx+4h]
	mov eax, edx
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+4h], al

@L00000102:
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000103:
	movzx eax, byte ptr [ebx+3h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000104:
	movzx eax, byte ptr [ebx+0Fh]
	movzx edx, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+3h], dl
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000105:
	movzx edx, byte ptr [ebx+1h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000106
	mov byte ptr [ebp-5h], 1h

@L00000106:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000107
	dec al
	je short @L00000108
	dec al
	je short @L00000109
	dec al
	je short @L00000110
	jmp short @L00000111

@L00000107:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx+9h], al
	jmp short @L00000111

@L00000108:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+9h], al
	jmp short @L00000111

@L00000109:
	movzx edx, byte ptr [ebx+1h]
	mov eax, edx
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+1h], al
	jmp short @L00000111

@L00000110:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx+9h], al

@L00000111:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000112:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000113:
	not byte ptr [ebx+8h]
	mov eax, esi
	add byte ptr [ebx+8h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000114
	mov byte ptr [ebp-5h], 1h

@L00000114:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000115
	dec al
	je short @L00000116
	dec al
	je short @L00000117
	dec al
	je short @L00000118
	jmp short @L00000119

@L00000115:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+0Bh], al
	jmp short @L00000119

@L00000116:
	movzx eax, byte ptr [ebx+8h]
	sub byte ptr [ebx+0Bh], al
	jmp short @L00000119

@L00000117:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000119

@L00000118:
	movzx edx, byte ptr [ebx+8h]
	mov eax, edx
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+8h], al

@L00000119:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000120:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000121:
	not byte ptr [ebx+3h]
	mov eax, esi
	add byte ptr [ebx+3h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000122
	mov byte ptr [ebp-5h], 1h

@L00000122:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000123
	dec al
	je short @L00000124
	dec al
	je short @L00000125
	dec al
	je short @L00000126
	jmp short @L00000127

@L00000123:
	movzx eax, byte ptr [ebx+3h]
	add byte ptr [ebx+9h], al
	jmp short @L00000127

@L00000124:
	movzx eax, byte ptr [ebx+3h]
	sub byte ptr [ebx+9h], al
	jmp short @L00000127

@L00000125:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+3h]
	mov byte ptr [ebx+9h], al
	jmp short @L00000127

@L00000126:
	movzx edx, byte ptr [ebx+3h]
	mov eax, edx
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+3h], al

@L00000127:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000128:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000129:
	movzx eax, byte ptr [ebx+5h]
	movzx edx, byte ptr [ebx+5h]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000130:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000131:
	not byte ptr [ebx+0Eh]
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000132
	mov byte ptr [ebp-5h], 1h

@L00000132:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000133
	dec al
	je short @L00000134
	dec al
	je short @L00000135
	dec al
	je short @L00000136
	jmp short @L00000137

@L00000133:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+0Eh], al
	jmp short @L00000137

@L00000134:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+0Eh], al
	jmp short @L00000137

@L00000135:
	movzx eax, byte ptr [ebx+0Eh]
	mov edx, eax
	xor dl, al
	mov byte ptr [ebx+0Eh], dl
	jmp short @L00000137

@L00000136:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, edx
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+0Eh], al

@L00000137:
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000138:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000139:
	movzx eax, byte ptr [ebx+0Ah]
	movzx edx, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000140:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000141:
	movzx edx, byte ptr [ebx+8h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000142
	mov byte ptr [ebp-5h], 1h

@L00000142:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000143
	dec al
	je short @L00000144
	dec al
	je short @L00000145
	dec al
	je short @L00000146
	jmp short @L00000147

@L00000143:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+9h], al
	jmp short @L00000147

@L00000144:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+9h], al
	jmp short @L00000147

@L00000145:
	movzx edx, byte ptr [ebx+8h]
	mov eax, edx
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+8h], al
	jmp short @L00000147

@L00000146:
	movzx eax, byte ptr [ebx+8h]
	sub byte ptr [ebx+9h], al

@L00000147:
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000148:
	movzx edx, byte ptr [ebx+1h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000149
	mov byte ptr [ebp-5h], 1h

@L00000149:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000150
	dec al
	je short @L00000151
	dec al
	je short @L00000152
	dec al
	je short @L00000153
	jmp short @L00000154

@L00000150:
	movzx eax, byte ptr [ebx+6h]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx+6h], al
	jmp short @L00000154

@L00000151:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+6h], al
	jmp short @L00000154

@L00000152:
	movzx edx, byte ptr [ebx+1h]
	mov eax, edx
	mov byte ptr [ebx+6h], dl
	mov byte ptr [ebx+1h], al
	jmp short @L00000154

@L00000153:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx+6h], al

@L00000154:
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000155:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000156:
	not byte ptr [ebx+0Ch]
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000157
	mov byte ptr [ebp-5h], 1h

@L00000157:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000158
	dec al
	je short @L00000159
	dec al
	je short @L00000160
	dec al
	je short @L00000161
	jmp short @L00000162

@L00000158:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+0Dh], al
	jmp short @L00000162

@L00000159:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+0Dh], al
	jmp short @L00000162

@L00000160:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Dh], al
	jmp short @L00000162

@L00000161:
	movzx edx, byte ptr [ebx+0Ch]
	mov eax, edx
	mov byte ptr [ebx+0Dh], dl
	mov byte ptr [ebx+0Ch], al

@L00000162:
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000163:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000164:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000165
	mov byte ptr [ebp-5h], 1h

@L00000165:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000166
	dec al
	je short @L00000167
	dec al
	je short @L00000168
	dec al
	je short @L00000169
	jmp short @L00000170

@L00000166:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000170

@L00000167:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+0Ch], al
	jmp short @L00000170

@L00000168:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, edx
	mov byte ptr [ebx+0Ch], dl
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000170

@L00000169:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+0Ch], al

@L00000170:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000171:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000172:
	not byte ptr [ebx+6h]
	mov eax, esi
	add byte ptr [ebx+6h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000173
	mov byte ptr [ebp-5h], 1h

@L00000173:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000174
	dec al
	je short @L00000175
	dec al
	je short @L00000176
	dec al
	je short @L00000177
	jmp short @L00000178

@L00000174:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+0Bh], al
	jmp short @L00000178

@L00000175:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+0Bh], al
	jmp short @L00000178

@L00000176:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000178

@L00000177:
	movzx edx, byte ptr [ebx+6h]
	mov eax, edx
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+6h], al

@L00000178:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000179:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000180:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000181:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000182:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000183:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000184:
	movzx edx, byte ptr [ebx+0Fh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000185
	mov byte ptr [ebp-5h], 1h

@L00000185:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000186
	dec al
	je short @L00000187
	dec al
	je short @L00000188
	dec al
	je short @L00000189
	jmp short @L00000190

@L00000186:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000190

@L00000187:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx+0Eh], al
	jmp short @L00000190

@L00000188:
	movzx eax, byte ptr [ebx+0Fh]
	movzx edx, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000190

@L00000189:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+0Eh], al

@L00000190:
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000191:
	movzx edx, byte ptr [ebx+1h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000192
	mov byte ptr [ebp-5h], 1h

@L00000192:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000193
	dec al
	je short @L00000194
	dec al
	je short @L00000195
	dec al
	je short @L00000196
	jmp short @L00000197

@L00000193:
	movzx eax, byte ptr [ebx+4h]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx+4h], al
	jmp short @L00000197

@L00000194:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+4h], al
	jmp short @L00000197

@L00000195:
	movzx eax, byte ptr [ebx+1h]
	movzx edx, byte ptr [ebx+1h]
	mov byte ptr [ebx+4h], dl
	mov byte ptr [ebx+1h], al
	jmp short @L00000197

@L00000196:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx+4h], al

@L00000197:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000198:
	movzx edx, byte ptr [ebx+0Bh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000199
	mov byte ptr [ebp-5h], 1h

@L00000199:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000200
	dec al
	je short @L00000201
	dec al
	je short @L00000202
	dec al
	je short @L00000203
	jmp short @L00000204

@L00000200:
	movzx eax, byte ptr [ebx+1h]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+1h], al
	jmp short @L00000204

@L00000201:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+1h], al
	jmp short @L00000204

@L00000202:
	movzx eax, byte ptr [ebx+0Bh]
	movzx edx, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000204

@L00000203:
	movzx eax, byte ptr [ebx+0Bh]
	sub byte ptr [ebx+1h], al

@L00000204:
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000205:
	movzx edx, byte ptr [ebx]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000206
	mov byte ptr [ebp-5h], 1h

@L00000206:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000207
	dec al
	je short @L00000208
	dec al
	je short @L00000209
	dec al
	je short @L00000210
	jmp short @L00000211

@L00000207:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx]
	mov byte ptr [ebx+5h], al
	jmp short @L00000211

@L00000208:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx+5h], al
	jmp short @L00000211

@L00000209:
	movzx eax, byte ptr [ebx]
	movzx edx, byte ptr [ebx]
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx], al
	jmp short @L00000211

@L00000210:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx+5h], al

@L00000211:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000212:
	movzx eax, byte ptr [ebx+5h]
	add byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000213:
	not byte ptr [ebx+0Dh]
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000214
	mov byte ptr [ebp-5h], 1h

@L00000214:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000215
	dec al
	je short @L00000216
	dec al
	je short @L00000217
	dec al
	je short @L00000218
	jmp short @L00000219

@L00000215:
	movzx eax, byte ptr [ebx+0Dh]
	add byte ptr [ebx+8h], al
	jmp short @L00000219

@L00000216:
	movzx eax, byte ptr [ebx+0Dh]
	sub byte ptr [ebx+8h], al
	jmp short @L00000219

@L00000217:
	movzx eax, byte ptr [ebx+8h]
	xor al, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+8h], al
	jmp short @L00000219

@L00000218:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+8h], dl
	mov byte ptr [ebx+0Dh], al

@L00000219:
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000220:
	movzx eax, byte ptr [ebx+8h]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000221:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000222:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000223:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000224:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000225:
	movzx edx, byte ptr [ebx+0Ch]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000226
	mov byte ptr [ebp-5h], 1h

@L00000226:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000227
	dec al
	je short @L00000228
	dec al
	je short @L00000229
	dec al
	je short @L00000230
	jmp short @L00000231

@L00000227:
	movzx eax, byte ptr [ebx+0Ah]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Ah], al
	jmp short @L00000231

@L00000228:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+0Ah], al
	jmp short @L00000231

@L00000229:
	movzx eax, byte ptr [ebx+0Ch]
	movzx edx, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Ah], dl
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000231

@L00000230:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+0Ah], al

@L00000231:
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000232:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000233:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000234:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+5h]
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000235:
	movzx edx, byte ptr [ebx+0Bh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000236
	mov byte ptr [ebp-5h], 1h

@L00000236:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000237
	dec al
	je short @L00000238
	dec al
	je short @L00000239
	dec al
	je short @L00000240
	jmp short @L00000241

@L00000237:
	movzx eax, byte ptr [ebx+0Ah]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Ah], al
	jmp short @L00000241

@L00000238:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+0Ah], al
	jmp short @L00000241

@L00000239:
	movzx eax, byte ptr [ebx+0Bh]
	movzx edx, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Ah], dl
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000241

@L00000240:
	movzx eax, byte ptr [ebx+0Bh]
	sub byte ptr [ebx+0Ah], al

@L00000241:
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000242:
	movzx eax, byte ptr [ebx+7h]
	sub byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000243:
	movzx edx, byte ptr [ebx+7h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000244
	mov byte ptr [ebp-5h], 1h

@L00000244:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000245
	dec al
	je short @L00000246
	dec al
	je short @L00000247
	dec al
	je short @L00000248
	jmp short @L00000249

@L00000245:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+7h]
	mov byte ptr [ebx+7h], al
	jmp short @L00000249

@L00000246:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+7h], al
	jmp short @L00000249

@L00000247:
	movzx eax, byte ptr [ebx+7h]
	movzx edx, byte ptr [ebx+7h]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+7h], al
	jmp short @L00000249

@L00000248:
	movzx eax, byte ptr [ebx+7h]
	sub byte ptr [ebx+7h], al

@L00000249:
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000250:
	movzx eax, byte ptr [ebx+3h]
	movzx edx, byte ptr [ebx+3h]
	mov byte ptr [ebx+2h], dl
	mov byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000251:
	movzx eax, byte ptr [ebx+3h]
	add byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000252:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000253:
	movzx eax, byte ptr [ebx+0Bh]
	movzx edx, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000254:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000255:
	movzx edx, byte ptr [ebx+8h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000256
	mov byte ptr [ebp-5h], 1h

@L00000256:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000257
	dec al
	je short @L00000258
	dec al
	je short @L00000259
	dec al
	je short @L00000260
	jmp short @L00000261

@L00000257:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+5h], al
	jmp short @L00000261

@L00000258:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+5h], al
	jmp short @L00000261

@L00000259:
	movzx eax, byte ptr [ebx+8h]
	movzx edx, byte ptr [ebx+8h]
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx+8h], al
	jmp short @L00000261

@L00000260:
	movzx eax, byte ptr [ebx+8h]
	sub byte ptr [ebx+5h], al

@L00000261:
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000262:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000263:
	movzx edx, byte ptr [ebx]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000264
	mov byte ptr [ebp-5h], 1h

@L00000264:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000265
	dec al
	je short @L00000266
	dec al
	je short @L00000267
	dec al
	je short @L00000268
	jmp short @L00000269

@L00000265:
	movzx eax, byte ptr [ebx+3h]
	xor al, byte ptr [ebx]
	mov byte ptr [ebx+3h], al
	jmp short @L00000269

@L00000266:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx+3h], al
	jmp short @L00000269

@L00000267:
	movzx eax, byte ptr [ebx]
	movzx edx, byte ptr [ebx]
	mov byte ptr [ebx+3h], dl
	mov byte ptr [ebx], al
	jmp short @L00000269

@L00000268:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx+3h], al

@L00000269:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000270:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000271:
	movzx eax, byte ptr [ebx+1h]
	movzx edx, byte ptr [ebx+1h]
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000272:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000273
	mov byte ptr [ebp-5h], 1h

@L00000273:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000274
	dec al
	je short @L00000275
	dec al
	je short @L00000276
	dec al
	je short @L00000277
	jmp short @L00000278

@L00000274:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+9h], al
	jmp short @L00000278

@L00000275:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+9h], al
	jmp short @L00000278

@L00000276:
	movzx eax, byte ptr [ebx+0Eh]
	movzx edx, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000278

@L00000277:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+9h], al

@L00000278:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000279:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000280:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000281:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000282:
	not byte ptr [ebx]
	mov eax, esi
	add byte ptr [ebx], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000283
	mov byte ptr [ebp-5h], 1h

@L00000283:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000284
	dec al
	je short @L00000285
	dec al
	je short @L00000286
	dec al
	je short @L00000287
	jmp short @L00000288

@L00000284:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx+7h], al
	jmp short @L00000288

@L00000285:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx+7h], al
	jmp short @L00000288

@L00000286:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx]
	mov byte ptr [ebx+7h], al
	jmp short @L00000288

@L00000287:
	movzx eax, byte ptr [ebx]
	movzx edx, byte ptr [ebx]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx], al

@L00000288:
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000289:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000290:
	movzx edx, byte ptr [ebx+8h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000291
	mov byte ptr [ebp-5h], 1h

@L00000291:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000292
	dec al
	je short @L00000293
	dec al
	je short @L00000294
	dec al
	je short @L00000295
	jmp short @L00000296

@L00000292:
	movzx eax, byte ptr [ebx+3h]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+3h], al
	jmp short @L00000296

@L00000293:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+3h], al
	jmp short @L00000296

@L00000294:
	movzx eax, byte ptr [ebx+8h]
	movzx edx, byte ptr [ebx+8h]
	mov byte ptr [ebx+3h], dl
	mov byte ptr [ebx+8h], al
	jmp short @L00000296

@L00000295:
	movzx eax, byte ptr [ebx+8h]
	sub byte ptr [ebx+3h], al

@L00000296:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000297:
	not byte ptr [ebx+8h]
	mov eax, esi
	add byte ptr [ebx+8h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000298
	mov byte ptr [ebp-5h], 1h

@L00000298:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000299
	dec al
	je short @L00000300
	dec al
	je short @L00000301
	dec al
	je short @L00000302
	jmp short @L00000303

@L00000299:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+0Ch], al
	jmp short @L00000303

@L00000300:
	movzx eax, byte ptr [ebx+8h]
	sub byte ptr [ebx+0Ch], al
	jmp short @L00000303

@L00000301:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000303

@L00000302:
	movzx eax, byte ptr [ebx+8h]
	movzx edx, byte ptr [ebx+8h]
	mov byte ptr [ebx+0Ch], dl
	mov byte ptr [ebx+8h], al

@L00000303:
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000304:
	movzx edx, byte ptr [ebx+6h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000305
	mov byte ptr [ebp-5h], 1h

@L00000305:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000306
	dec al
	je short @L00000307
	dec al
	je short @L00000308
	dec al
	je short @L00000309
	jmp short @L00000310

@L00000306:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000310

@L00000307:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+0Eh], al
	jmp short @L00000310

@L00000308:
	movzx eax, byte ptr [ebx+6h]
	movzx edx, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+6h], al
	jmp short @L00000310

@L00000309:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+0Eh], al

@L00000310:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000311:
	not byte ptr [ebx+4h]
	mov eax, esi
	add byte ptr [ebx+4h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000312
	mov byte ptr [ebp-5h], 1h

@L00000312:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000313
	dec al
	je short @L00000314
	dec al
	je short @L00000315
	dec al
	je short @L00000316
	jmp short @L00000317

@L00000313:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+0Eh], al
	jmp short @L00000317

@L00000314:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+0Eh], al
	jmp short @L00000317

@L00000315:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000317

@L00000316:
	movzx eax, byte ptr [ebx+4h]
	movzx edx, byte ptr [ebx+4h]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+4h], al

@L00000317:
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000318:
	movzx eax, byte ptr [ebx+0Ah]
	add byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000319:
	movzx edx, byte ptr [ebx+0Dh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000320
	mov byte ptr [ebp-5h], 1h

@L00000320:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000321
	dec al
	je short @L00000322
	dec al
	je short @L00000323
	dec al
	je short @L00000324
	jmp short @L00000325

@L00000321:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000325

@L00000322:
	movzx eax, byte ptr [ebx+0Dh]
	add byte ptr [ebx+0Ch], al
	jmp short @L00000325

@L00000323:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+0Ch], dl
	mov byte ptr [ebx+0Dh], al
	jmp short @L00000325

@L00000324:
	movzx eax, byte ptr [ebx+0Dh]
	sub byte ptr [ebx+0Ch], al

@L00000325:
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000326:
	movzx eax, byte ptr [ebx+1h]
	movzx edx, byte ptr [ebx+1h]
	mov byte ptr [ebx+6h], dl
	mov byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000327:
	movzx eax, byte ptr [ebx]
	xor al, byte ptr [ebx+3h]
	mov byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000328:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000329:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000330:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000331:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000332:
	movzx edx, byte ptr [ebx+0Dh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000333
	mov byte ptr [ebp-5h], 1h

@L00000333:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000334
	dec al
	je short @L00000335
	dec al
	je short @L00000336
	dec al
	je short @L00000337
	jmp short @L00000338

@L00000334:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+9h], al
	jmp short @L00000338

@L00000335:
	movzx eax, byte ptr [ebx+0Dh]
	add byte ptr [ebx+9h], al
	jmp short @L00000338

@L00000336:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+0Dh], al
	jmp short @L00000338

@L00000337:
	movzx eax, byte ptr [ebx+0Dh]
	sub byte ptr [ebx+9h], al

@L00000338:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000339:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000340:
	movzx eax, byte ptr [ebx+7h]
	movzx edx, byte ptr [ebx+7h]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000341:
	movzx eax, byte ptr [ebx+7h]
	sub byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000342:
	not byte ptr [ebx+0Ch]
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000343
	mov byte ptr [ebp-5h], 1h

@L00000343:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000344
	dec al
	je short @L00000345
	dec al
	je short @L00000346
	dec al
	je short @L00000347
	jmp short @L00000348

@L00000344:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+7h], al
	jmp short @L00000348

@L00000345:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+7h], al
	jmp short @L00000348

@L00000346:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+7h], al
	jmp short @L00000348

@L00000347:
	movzx eax, byte ptr [ebx+0Ch]
	movzx edx, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+0Ch], al

@L00000348:
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000349:
	not byte ptr [ebx+0Ch]
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000350
	mov byte ptr [ebp-5h], 1h

@L00000350:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000351
	dec al
	je short @L00000352
	dec al
	je short @L00000353
	dec al
	je short @L00000354
	jmp short @L00000355

@L00000351:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+0Dh], al
	jmp short @L00000355

@L00000352:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+0Dh], al
	jmp short @L00000355

@L00000353:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Dh], al
	jmp short @L00000355

@L00000354:
	movzx eax, byte ptr [ebx+0Ch]
	movzx edx, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Dh], dl
	mov byte ptr [ebx+0Ch], al

@L00000355:
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000356:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000357:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000358:
	not byte ptr [ebx]
	mov eax, esi
	add byte ptr [ebx], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000359
	mov byte ptr [ebp-5h], 1h

@L00000359:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000360
	dec al
	je short @L00000361
	dec al
	je short @L00000362
	dec al
	je short @L00000363
	jmp short @L00000364

@L00000360:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx+2h], al
	jmp short @L00000364

@L00000361:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx+2h], al
	jmp short @L00000364

@L00000362:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx]
	mov byte ptr [ebx+2h], al
	jmp short @L00000364

@L00000363:
	movzx eax, byte ptr [ebx]
	movzx edx, byte ptr [ebx]
	mov byte ptr [ebx+2h], dl
	mov byte ptr [ebx], al

@L00000364:
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000365:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000366:
	not byte ptr [ebx+2h]
	mov eax, esi
	add byte ptr [ebx+2h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000367
	mov byte ptr [ebp-5h], 1h

@L00000367:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000368
	dec al
	je short @L00000369
	dec al
	je short @L00000370
	dec al
	je short @L00000371
	jmp short @L00000372

@L00000368:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+0Eh], al
	jmp short @L00000372

@L00000369:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Eh], al
	jmp short @L00000372

@L00000370:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000372

@L00000371:
	movzx eax, byte ptr [ebx+2h]
	movzx edx, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+2h], al

@L00000372:
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000373:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000374:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000375:
	movzx eax, byte ptr [ebx+0Ch]
	movzx edx, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Dh], dl
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000376:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000377:
	movzx edx, byte ptr [ebx+5h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000378
	mov byte ptr [ebp-5h], 1h

@L00000378:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000379
	dec al
	je short @L00000380
	dec al
	je short @L00000381
	dec al
	je short @L00000382
	jmp short @L00000383

@L00000379:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+5h]
	mov byte ptr [ebx+7h], al
	jmp short @L00000383

@L00000380:
	movzx eax, byte ptr [ebx+5h]
	add byte ptr [ebx+7h], al
	jmp short @L00000383

@L00000381:
	movzx eax, byte ptr [ebx+5h]
	movzx edx, byte ptr [ebx+5h]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+5h], al
	jmp short @L00000383

@L00000382:
	movzx eax, byte ptr [ebx+5h]
	sub byte ptr [ebx+7h], al

@L00000383:
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000384:
	movzx edx, byte ptr [ebx+0Bh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000385
	mov byte ptr [ebp-5h], 1h

@L00000385:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000386
	dec al
	je short @L00000387
	dec al
	je short @L00000388
	dec al
	je short @L00000389
	jmp short @L00000390

@L00000386:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Dh], al
	jmp short @L00000390

@L00000387:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+0Dh], al
	jmp short @L00000390

@L00000388:
	movzx eax, byte ptr [ebx+0Bh]
	movzx edx, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Dh], dl
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000390

@L00000389:
	movzx eax, byte ptr [ebx+0Bh]
	sub byte ptr [ebx+0Dh], al

@L00000390:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000391:
	movzx eax, byte ptr [ebx+8h]
	xor al, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000392:
	movzx eax, byte ptr [ebx+2h]
	movzx edx, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000393:
	movzx edx, byte ptr [ebx+9h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000394
	mov byte ptr [ebp-5h], 1h

@L00000394:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000395
	dec al
	je short @L00000396
	dec al
	je short @L00000397
	dec al
	je short @L00000398
	jmp short @L00000399

@L00000395:
	movzx eax, byte ptr [ebx+4h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+4h], al
	jmp short @L00000399

@L00000396:
	movzx eax, byte ptr [ebx+9h]
	add byte ptr [ebx+4h], al
	jmp short @L00000399

@L00000397:
	movzx eax, byte ptr [ebx+9h]
	movzx edx, byte ptr [ebx+9h]
	mov byte ptr [ebx+4h], dl
	mov byte ptr [ebx+9h], al
	jmp short @L00000399

@L00000398:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx+4h], al

@L00000399:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000400:
	movzx eax, byte ptr [ebx+5h]
	sub byte ptr [ebx+8h], al
	mov eax, esi
	add byte ptr [ebx+8h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000401:
	movzx edx, byte ptr [ebx+4h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000402
	mov byte ptr [ebp-5h], 1h

@L00000402:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000403
	dec al
	je short @L00000404
	dec al
	je short @L00000405
	dec al
	je short @L00000406
	jmp short @L00000407

@L00000403:
	movzx eax, byte ptr [ebx+6h]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+6h], al
	jmp short @L00000407

@L00000404:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+6h], al
	jmp short @L00000407

@L00000405:
	movzx eax, byte ptr [ebx+4h]
	movzx edx, byte ptr [ebx+4h]
	mov byte ptr [ebx+6h], dl
	mov byte ptr [ebx+4h], al
	jmp short @L00000407

@L00000406:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+6h], al

@L00000407:
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000408:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000409:
	movzx eax, byte ptr [ebx+5h]
	sub byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000410:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000411:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000412:
	not byte ptr [ebx+9h]
	mov eax, esi
	add byte ptr [ebx+9h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000413
	mov byte ptr [ebp-5h], 1h

@L00000413:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000414
	dec al
	je short @L00000415
	dec al
	je short @L00000416
	dec al
	je short @L00000417
	jmp short @L00000418

@L00000414:
	movzx eax, byte ptr [ebx+9h]
	add byte ptr [ebx+1h], al
	jmp short @L00000418

@L00000415:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx+1h], al
	jmp short @L00000418

@L00000416:
	movzx eax, byte ptr [ebx+1h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+1h], al
	jmp short @L00000418

@L00000417:
	movzx eax, byte ptr [ebx+9h]
	movzx edx, byte ptr [ebx+9h]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+9h], al

@L00000418:
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000419:
	movzx eax, byte ptr [ebx+9h]
	add byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000420:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000421:
	not byte ptr [ebx+3h]
	mov eax, esi
	add byte ptr [ebx+3h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000422
	mov byte ptr [ebp-5h], 1h

@L00000422:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000423
	dec al
	je short @L00000424
	dec al
	je short @L00000425
	dec al
	je short @L00000426
	jmp short @L00000427

@L00000423:
	movzx eax, byte ptr [ebx+3h]
	add byte ptr [ebx+0Eh], al
	jmp short @L00000427

@L00000424:
	movzx eax, byte ptr [ebx+3h]
	sub byte ptr [ebx+0Eh], al
	jmp short @L00000427

@L00000425:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+3h]
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000427

@L00000426:
	movzx eax, byte ptr [ebx+3h]
	movzx edx, byte ptr [ebx+3h]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+3h], al

@L00000427:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000428:
	movzx eax, byte ptr [ebx+0Eh]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000429:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000430:
	movzx eax, byte ptr [ebx+0Ah]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000431:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000432:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000433:
	movzx eax, byte ptr [ebx+6h]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000434:
	movzx edx, byte ptr [ebx+7h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000435
	mov byte ptr [ebp-5h], 1h

@L00000435:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000436
	dec al
	je short @L00000437
	dec al
	je short @L00000438
	dec al
	je short @L00000439
	jmp short @L00000440

@L00000436:
	movzx eax, byte ptr [ebx+8h]
	xor al, byte ptr [ebx+7h]
	mov byte ptr [ebx+8h], al
	jmp short @L00000440

@L00000437:
	movzx eax, byte ptr [ebx+7h]
	add byte ptr [ebx+8h], al
	jmp short @L00000440

@L00000438:
	movzx eax, byte ptr [ebx+7h]
	movzx edx, byte ptr [ebx+7h]
	mov byte ptr [ebx+8h], dl
	mov byte ptr [ebx+7h], al
	jmp short @L00000440

@L00000439:
	movzx eax, byte ptr [ebx+7h]
	sub byte ptr [ebx+8h], al

@L00000440:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000441:
	not byte ptr [ebx+4h]
	mov eax, esi
	add byte ptr [ebx+4h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000442
	mov byte ptr [ebp-5h], 1h

@L00000442:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000443
	dec al
	je short @L00000444
	dec al
	je short @L00000445
	dec al
	je short @L00000446
	jmp short @L00000447

@L00000443:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+0Bh], al
	jmp short @L00000447

@L00000444:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+0Bh], al
	jmp short @L00000447

@L00000445:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000447

@L00000446:
	movzx eax, byte ptr [ebx+4h]
	movzx edx, byte ptr [ebx+4h]
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+4h], al

@L00000447:
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000448:
	not byte ptr [ebx+0Fh]
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000449
	mov byte ptr [ebp-5h], 1h

@L00000449:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000450
	dec al
	je short @L00000451
	dec al
	je short @L00000452
	dec al
	je short @L00000453
	jmp short @L00000454

@L00000450:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx+2h], al
	jmp short @L00000454

@L00000451:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+2h], al
	jmp short @L00000454

@L00000452:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+2h], al
	jmp short @L00000454

@L00000453:
	movzx eax, byte ptr [ebx+0Fh]
	movzx edx, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+2h], dl
	mov byte ptr [ebx+0Fh], al

@L00000454:
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000455:
	movzx edx, byte ptr [ebx+0Ah]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000456
	mov byte ptr [ebp-5h], 1h

@L00000456:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000457
	dec al
	je short @L00000458
	dec al
	je short @L00000459
	dec al
	je short @L00000460
	jmp short @L00000461

@L00000457:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000461

@L00000458:
	movzx eax, byte ptr [ebx+0Ah]
	add byte ptr [ebx+0Fh], al
	jmp short @L00000461

@L00000459:
	movzx eax, byte ptr [ebx+0Ah]
	movzx edx, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+0Ah], al
	jmp short @L00000461

@L00000460:
	movzx eax, byte ptr [ebx+0Ah]
	sub byte ptr [ebx+0Fh], al

@L00000461:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000462:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000463:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000464:
	movzx eax, byte ptr [ebx+5h]
	sub byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000465:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000466:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000467:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000468:
	movzx edx, byte ptr [ebx+0Ch]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000469
	mov byte ptr [ebp-5h], 1h

@L00000469:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000470
	dec al
	je short @L00000471
	dec al
	je short @L00000472
	dec al
	je short @L00000473
	jmp short @L00000474

@L00000470:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000474

@L00000471:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+0Fh], al
	jmp short @L00000474

@L00000472:
	movzx eax, byte ptr [ebx+0Ch]
	movzx edx, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000474

@L00000473:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+0Fh], al

@L00000474:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000475:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000476:
	not byte ptr [ebx]
	mov eax, esi
	add byte ptr [ebx], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000477
	mov byte ptr [ebp-5h], 1h

@L00000477:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000478
	dec al
	je short @L00000479
	dec al
	je short @L00000480
	dec al
	je short @L00000481
	jmp short @L00000482

@L00000478:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx], al
	jmp short @L00000482

@L00000479:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx], al
	jmp short @L00000482

@L00000480:
	movzx eax, byte ptr [ebx]
	xor al, byte ptr [ebx]
	mov byte ptr [ebx], al
	jmp short @L00000482

@L00000481:
	movzx eax, byte ptr [ebx]
	movzx edx, byte ptr [ebx]
	mov byte ptr [ebx], dl
	mov byte ptr [ebx], al

@L00000482:
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000483:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000484:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000485:
	not byte ptr [ebx+0Bh]
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000486
	mov byte ptr [ebp-5h], 1h

@L00000486:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000487
	dec al
	je short @L00000488
	dec al
	je short @L00000489
	dec al
	je short @L00000490
	jmp short @L00000491

@L00000487:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+0Fh], al
	jmp short @L00000491

@L00000488:
	movzx eax, byte ptr [ebx+0Bh]
	sub byte ptr [ebx+0Fh], al
	jmp short @L00000491

@L00000489:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000491

@L00000490:
	movzx eax, byte ptr [ebx+0Bh]
	movzx edx, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+0Bh], al

@L00000491:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000492:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000493:
	movzx eax, byte ptr [ebx+4h]
	xor al, byte ptr [ebx+5h]
	mov byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000494:
	movzx eax, byte ptr [ebx+0Ah]
	sub byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000495:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000496:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000497:
	movzx eax, byte ptr [ebx+4h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000498:
	not byte ptr [ebx+2h]
	mov eax, esi
	add byte ptr [ebx+2h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000499
	mov byte ptr [ebp-5h], 1h

@L00000499:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000500
	dec al
	je short @L00000501
	dec al
	je short @L00000502
	dec al
	je short @L00000503
	jmp short @L00000504

@L00000500:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+7h], al
	jmp short @L00000504

@L00000501:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+7h], al
	jmp short @L00000504

@L00000502:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+7h], al
	jmp short @L00000504

@L00000503:
	movzx eax, byte ptr [ebx+2h]
	movzx edx, byte ptr [ebx+2h]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+2h], al

@L00000504:
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000505:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000506:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000507:
	movzx edx, byte ptr [ebx+3h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000508
	mov byte ptr [ebp-5h], 1h

@L00000508:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000509
	dec al
	je short @L00000510
	dec al
	je short @L00000511
	dec al
	je short @L00000512
	jmp short @L00000513

@L00000509:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+3h]
	mov byte ptr [ebx+9h], al
	jmp short @L00000513

@L00000510:
	movzx eax, byte ptr [ebx+3h]
	add byte ptr [ebx+9h], al
	jmp short @L00000513

@L00000511:
	movzx eax, byte ptr [ebx+3h]
	movzx edx, byte ptr [ebx+3h]
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+3h], al
	jmp short @L00000513

@L00000512:
	movzx eax, byte ptr [ebx+3h]
	sub byte ptr [ebx+9h], al

@L00000513:
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000514:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+7h]
	mov byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000515:
	movzx eax, byte ptr [ebx+7h]
	sub byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000516:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000517:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000518:
	not byte ptr [ebx+0Dh]
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000519
	mov byte ptr [ebp-5h], 1h

@L00000519:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000520
	dec al
	je short @L00000521
	dec al
	je short @L00000522
	dec al
	je short @L00000523
	jmp short @L00000524

@L00000520:
	movzx eax, byte ptr [ebx+0Dh]
	add byte ptr [ebx+0Fh], al
	jmp short @L00000524

@L00000521:
	movzx eax, byte ptr [ebx+0Dh]
	sub byte ptr [ebx+0Fh], al
	jmp short @L00000524

@L00000522:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000524

@L00000523:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+0Dh], al

@L00000524:
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000525:
	not byte ptr [ebx+1h]
	mov eax, esi
	add byte ptr [ebx+1h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000526
	mov byte ptr [ebp-5h], 1h

@L00000526:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000527
	dec al
	je short @L00000528
	dec al
	je short @L00000529
	dec al
	je short @L00000530
	jmp short @L00000531

@L00000527:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+5h], al
	jmp short @L00000531

@L00000528:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx+5h], al
	jmp short @L00000531

@L00000529:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx+5h], al
	jmp short @L00000531

@L00000530:
	movzx eax, byte ptr [ebx+1h]
	movzx edx, byte ptr [ebx+1h]
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx+1h], al

@L00000531:
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000532:
	movzx eax, byte ptr [ebx+3h]
	movzx edx, byte ptr [ebx+3h]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000533:
	movzx eax, byte ptr [ebx]
	add byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000534:
	not byte ptr [ebx+6h]
	mov eax, esi
	add byte ptr [ebx+6h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000535
	mov byte ptr [ebp-5h], 1h

@L00000535:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000536
	dec al
	je short @L00000537
	dec al
	je short @L00000538
	dec al
	je short @L00000539
	jmp short @L00000540

@L00000536:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+5h], al
	jmp short @L00000540

@L00000537:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+5h], al
	jmp short @L00000540

@L00000538:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+5h], al
	jmp short @L00000540

@L00000539:
	movzx eax, byte ptr [ebx+6h]
	movzx edx, byte ptr [ebx+6h]
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx+6h], al

@L00000540:
	movzx eax, byte ptr [ebx+0Eh]
	jmp @L00000746

@L00000541:
	not byte ptr [ebx+6h]
	mov eax, esi
	add byte ptr [ebx+6h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000542
	mov byte ptr [ebp-5h], 1h

@L00000542:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000543
	dec al
	je short @L00000544
	dec al
	je short @L00000545
	dec al
	je short @L00000546
	jmp short @L00000547

@L00000543:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+0Bh], al
	jmp short @L00000547

@L00000544:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+0Bh], al
	jmp short @L00000547

@L00000545:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000547

@L00000546:
	movzx eax, byte ptr [ebx+6h]
	movzx edx, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+6h], al

@L00000547:
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000548:
	movzx eax, byte ptr [ebx+9h]
	add byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000549:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+0Bh]
	mov byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000550:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000551:
	not byte ptr [ebx+5h]
	mov eax, esi
	add byte ptr [ebx+5h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000552
	mov byte ptr [ebp-5h], 1h

@L00000552:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000553
	dec al
	je short @L00000554
	dec al
	je short @L00000555
	dec al
	je short @L00000556
	jmp short @L00000557

@L00000553:
	movzx eax, byte ptr [ebx+5h]
	add byte ptr [ebx+0Ah], al
	jmp short @L00000557

@L00000554:
	movzx eax, byte ptr [ebx+5h]
	sub byte ptr [ebx+0Ah], al
	jmp short @L00000557

@L00000555:
	movzx eax, byte ptr [ebx+0Ah]
	xor al, byte ptr [ebx+5h]
	mov byte ptr [ebx+0Ah], al
	jmp short @L00000557

@L00000556:
	movzx eax, byte ptr [ebx+5h]
	movzx edx, byte ptr [ebx+5h]
	mov byte ptr [ebx+0Ah], dl
	mov byte ptr [ebx+5h], al

@L00000557:
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000558:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000559:
	movzx eax, byte ptr [ebx+0Ch]
	add byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000560:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000561:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000562:
	movzx eax, byte ptr [ebx+4h]
	movzx edx, byte ptr [ebx+4h]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000563:
	movzx eax, byte ptr [ebx+5h]
	add byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000564:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000565:
	movzx edx, byte ptr [ebx+4h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000566
	mov byte ptr [ebp-5h], 1h

@L00000566:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000567
	dec al
	je short @L00000568
	dec al
	je short @L00000569
	dec al
	je short @L00000570
	jmp short @L00000571

@L00000567:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+0Dh], al
	jmp short @L00000571

@L00000568:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+0Dh], al
	jmp short @L00000571

@L00000569:
	movzx eax, byte ptr [ebx+4h]
	movzx edx, byte ptr [ebx+4h]
	mov byte ptr [ebx+0Dh], dl
	mov byte ptr [ebx+4h], al
	jmp short @L00000571

@L00000570:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+0Dh], al

@L00000571:
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000572:
	movzx eax, byte ptr [ebx+0Bh]
	movzx edx, byte ptr [ebx+0Bh]
	mov byte ptr [ebx], dl
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000573:
	movzx eax, byte ptr [ebx+0Ah]
	movzx edx, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000574:
	movzx eax, byte ptr [ebx+0Ah]
	add byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000575:
	movzx eax, byte ptr [ebx+9h]
	movzx edx, byte ptr [ebx+9h]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000576:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000577:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000578:
	movzx eax, byte ptr [ebx]
	sub byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000579:
	movzx eax, byte ptr [ebx+0Ah]
	sub byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000580:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000581:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000582:
	movzx eax, byte ptr [ebx+7h]
	movzx edx, byte ptr [ebx+7h]
	mov byte ptr [ebx+6h], dl
	mov byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000583:
	movzx eax, byte ptr [ebx+0Dh]
	add byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000584:
	not byte ptr [ebx+4h]
	mov eax, esi
	add byte ptr [ebx+4h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000585
	mov byte ptr [ebp-5h], 1h

@L00000585:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000586
	dec al
	je short @L00000587
	dec al
	je short @L00000588
	dec al
	je short @L00000589
	jmp short @L00000590

@L00000586:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+9h], al
	jmp short @L00000590

@L00000587:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+9h], al
	jmp short @L00000590

@L00000588:
	movzx eax, byte ptr [ebx+9h]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+9h], al
	jmp short @L00000590

@L00000589:
	movzx eax, byte ptr [ebx+4h]
	movzx edx, byte ptr [ebx+4h]
	mov byte ptr [ebx+9h], dl
	mov byte ptr [ebx+4h], al

@L00000590:
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000591:
	movzx eax, byte ptr [ebx+6h]
	xor al, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000592:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000593:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000594:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000595
	mov byte ptr [ebp-5h], 1h

@L00000595:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000596
	dec al
	je short @L00000597
	dec al
	je short @L00000598
	dec al
	je short @L00000599
	jmp short @L00000600

@L00000596:
	movzx eax, byte ptr [ebx+0Bh]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+0Bh], al
	jmp short @L00000600

@L00000597:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+0Bh], al
	jmp short @L00000600

@L00000598:
	movzx eax, byte ptr [ebx+0Eh]
	movzx edx, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+0Bh], dl
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000600

@L00000599:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+0Bh], al

@L00000600:
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000601:
	movzx eax, byte ptr [ebx+3h]
	add byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000602:
	movzx edx, byte ptr [ebx+3h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000603
	mov byte ptr [ebp-5h], 1h

@L00000603:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000604
	dec al
	je short @L00000605
	dec al
	je short @L00000606
	dec al
	je short @L00000607
	jmp short @L00000608

@L00000604:
	movzx eax, byte ptr [ebx]
	xor al, byte ptr [ebx+3h]
	mov byte ptr [ebx], al
	jmp short @L00000608

@L00000605:
	movzx eax, byte ptr [ebx+3h]
	add byte ptr [ebx], al
	jmp short @L00000608

@L00000606:
	movzx eax, byte ptr [ebx+3h]
	movzx edx, byte ptr [ebx+3h]
	mov byte ptr [ebx], dl
	mov byte ptr [ebx+3h], al
	jmp short @L00000608

@L00000607:
	movzx eax, byte ptr [ebx+3h]
	sub byte ptr [ebx], al

@L00000608:
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000609:
	not byte ptr [ebx+0Fh]
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000610
	mov byte ptr [ebp-5h], 1h

@L00000610:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000611
	dec al
	je short @L00000612
	dec al
	je short @L00000613
	dec al
	je short @L00000614
	jmp short @L00000615

@L00000611:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx+4h], al
	jmp short @L00000615

@L00000612:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+4h], al
	jmp short @L00000615

@L00000613:
	movzx eax, byte ptr [ebx+4h]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+4h], al
	jmp short @L00000615

@L00000614:
	movzx eax, byte ptr [ebx+0Fh]
	movzx edx, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+4h], dl
	mov byte ptr [ebx+0Fh], al

@L00000615:
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000616:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000617:
	movzx edx, byte ptr [ebx+2h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000618
	mov byte ptr [ebp-5h], 1h

@L00000618:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000619
	dec al
	je short @L00000620
	dec al
	je short @L00000621
	dec al
	je short @L00000622
	jmp short @L00000623

@L00000619:
	movzx eax, byte ptr [ebx+0Dh]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Dh], al
	jmp short @L00000623

@L00000620:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+0Dh], al
	jmp short @L00000623

@L00000621:
	movzx eax, byte ptr [ebx+2h]
	movzx edx, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Dh], dl
	mov byte ptr [ebx+2h], al
	jmp short @L00000623

@L00000622:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Dh], al

@L00000623:
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000624:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000625:
	not byte ptr [ebx+0Eh]
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000626
	mov byte ptr [ebp-5h], 1h

@L00000626:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000627
	dec al
	je short @L00000628
	dec al
	je short @L00000629
	dec al
	je short @L00000630
	jmp short @L00000631

@L00000627:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+5h], al
	jmp short @L00000631

@L00000628:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+5h], al
	jmp short @L00000631

@L00000629:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+5h], al
	jmp short @L00000631

@L00000630:
	movzx eax, byte ptr [ebx+0Eh]
	movzx edx, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+5h], dl
	mov byte ptr [ebx+0Eh], al

@L00000631:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000632:
	movzx eax, byte ptr [ebx+4h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000633:
	movzx eax, byte ptr [ebx+3h]
	sub byte ptr [ebx+2h], al
	mov eax, esi
	add byte ptr [ebx+2h], al
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000634:
	not byte ptr [ebx+1h]
	mov eax, esi
	add byte ptr [ebx+1h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000635
	mov byte ptr [ebp-5h], 1h

@L00000635:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000636
	dec al
	je short @L00000637
	dec al
	je short @L00000638
	dec al
	je short @L00000639
	jmp short @L00000640

@L00000636:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx], al
	jmp short @L00000640

@L00000637:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx], al
	jmp short @L00000640

@L00000638:
	movzx eax, byte ptr [ebx]
	xor al, byte ptr [ebx+1h]
	mov byte ptr [ebx], al
	jmp short @L00000640

@L00000639:
	movzx eax, byte ptr [ebx+1h]
	movzx edx, byte ptr [ebx+1h]
	mov byte ptr [ebx], dl
	mov byte ptr [ebx+1h], al

@L00000640:
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000641:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000642:
	not byte ptr [ebx+0Fh]
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000643
	mov byte ptr [ebp-5h], 1h

@L00000643:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000644
	dec al
	je short @L00000645
	dec al
	je short @L00000646
	dec al
	je short @L00000647
	jmp short @L00000648

@L00000644:
	movzx eax, byte ptr [ebx+0Fh]
	add byte ptr [ebx+1h], al
	jmp short @L00000648

@L00000645:
	movzx eax, byte ptr [ebx+0Fh]
	sub byte ptr [ebx+1h], al
	jmp short @L00000648

@L00000646:
	movzx eax, byte ptr [ebx+1h]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+1h], al
	jmp short @L00000648

@L00000647:
	movzx eax, byte ptr [ebx+0Fh]
	movzx edx, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+0Fh], al

@L00000648:
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000649:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000650:
	movzx eax, byte ptr [ebx+0Bh]
	add byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+2h]
	jmp @L00000746

@L00000651:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000652:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+0Fh]
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000653:
	not byte ptr [ebx+6h]
	mov eax, esi
	add byte ptr [ebx+6h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000654
	mov byte ptr [ebp-5h], 1h

@L00000654:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000655
	dec al
	je short @L00000656
	dec al
	je short @L00000657
	dec al
	je short @L00000658
	jmp short @L00000659

@L00000655:
	movzx eax, byte ptr [ebx+6h]
	add byte ptr [ebx+6h], al
	jmp short @L00000659

@L00000656:
	movzx eax, byte ptr [ebx+6h]
	sub byte ptr [ebx+6h], al
	jmp short @L00000659

@L00000657:
	movzx eax, byte ptr [ebx+6h]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+6h], al
	jmp short @L00000659

@L00000658:
	movzx eax, byte ptr [ebx+6h]
	movzx edx, byte ptr [ebx+6h]
	mov byte ptr [ebx+6h], dl
	mov byte ptr [ebx+6h], al

@L00000659:
	movzx eax, byte ptr [ebx+1h]
	jmp @L00000746

@L00000660:
	movzx eax, byte ptr [ebx+1h]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+1h], al
	mov eax, esi
	add byte ptr [ebx+1h], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000661:
	movzx eax, byte ptr [ebx+6h]
	movzx edx, byte ptr [ebx+6h]
	mov byte ptr [ebx+2h], dl
	mov byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000662:
	movzx edx, byte ptr [ebx+0Ah]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000663
	mov byte ptr [ebp-5h], 1h

@L00000663:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000664
	dec al
	je short @L00000665
	dec al
	je short @L00000666
	dec al
	je short @L00000667
	jmp short @L00000668

@L00000664:
	movzx eax, byte ptr [ebx+3h]
	xor al, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+3h], al
	jmp short @L00000668

@L00000665:
	movzx eax, byte ptr [ebx+0Ah]
	add byte ptr [ebx+3h], al
	jmp short @L00000668

@L00000666:
	movzx eax, byte ptr [ebx+0Ah]
	movzx edx, byte ptr [ebx+0Ah]
	mov byte ptr [ebx+3h], dl
	mov byte ptr [ebx+0Ah], al
	jmp short @L00000668

@L00000667:
	movzx eax, byte ptr [ebx+0Ah]
	sub byte ptr [ebx+3h], al

@L00000668:
	movzx eax, byte ptr [ebx+4h]
	jmp @L00000746

@L00000669:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+0Bh], al
	mov eax, esi
	add byte ptr [ebx+0Bh], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000670:
	movzx eax, byte ptr [ebx]
	movzx edx, byte ptr [ebx]
	mov byte ptr [ebx+3h], dl
	mov byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	movzx eax, byte ptr [ebx]
	jmp @L00000746

@L00000671:
	not byte ptr [ebx+5h]
	mov eax, esi
	add byte ptr [ebx+5h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000672
	mov byte ptr [ebp-5h], 1h

@L00000672:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000673
	dec al
	je short @L00000674
	dec al
	je short @L00000675
	dec al
	je short @L00000676
	jmp short @L00000677

@L00000673:
	movzx eax, byte ptr [ebx+5h]
	add byte ptr [ebx+7h], al
	jmp short @L00000677

@L00000674:
	movzx eax, byte ptr [ebx+5h]
	sub byte ptr [ebx+7h], al
	jmp short @L00000677

@L00000675:
	movzx eax, byte ptr [ebx+7h]
	xor al, byte ptr [ebx+5h]
	mov byte ptr [ebx+7h], al
	jmp short @L00000677

@L00000676:
	movzx eax, byte ptr [ebx+5h]
	movzx edx, byte ptr [ebx+5h]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+5h], al

@L00000677:
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000678:
	not byte ptr [ebx+2h]
	mov eax, esi
	add byte ptr [ebx+2h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000679
	mov byte ptr [ebp-5h], 1h

@L00000679:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000680
	dec al
	je short @L00000681
	dec al
	je short @L00000682
	dec al
	je short @L00000683
	jmp short @L00000684

@L00000680:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+0Ch], al
	jmp short @L00000684

@L00000681:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Ch], al
	jmp short @L00000684

@L00000682:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Ch], al
	jmp short @L00000684

@L00000683:
	movzx eax, byte ptr [ebx+2h]
	movzx edx, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Ch], dl
	mov byte ptr [ebx+2h], al

@L00000684:
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000685:
	movzx eax, byte ptr [ebx+8h]
	sub byte ptr [ebx+0Fh], al
	mov eax, esi
	add byte ptr [ebx+0Fh], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000686:
	movzx eax, byte ptr [ebx+5h]
	add byte ptr [ebx+7h], al
	mov eax, esi
	add byte ptr [ebx+7h], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp @L00000746

@L00000687:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000688:
	movzx eax, byte ptr [ebx]
	movzx edx, byte ptr [ebx]
	mov byte ptr [ebx+2h], dl
	mov byte ptr [ebx], al
	mov eax, esi
	add byte ptr [ebx], al
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000689:
	movzx eax, byte ptr [ebx+0Ah]
	xor al, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000690:
	movzx eax, byte ptr [ebx+3h]
	movzx edx, byte ptr [ebx+3h]
	mov byte ptr [ebx+7h], dl
	mov byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000691:
	not byte ptr [ebx+2h]
	mov eax, esi
	add byte ptr [ebx+2h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000692
	mov byte ptr [ebp-5h], 1h

@L00000692:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000693
	dec al
	je short @L00000694
	dec al
	je short @L00000695
	dec al
	je short @L00000696
	jmp short @L00000697

@L00000693:
	movzx eax, byte ptr [ebx+2h]
	add byte ptr [ebx+0Fh], al
	jmp short @L00000697

@L00000694:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Fh], al
	jmp short @L00000697

@L00000695:
	movzx eax, byte ptr [ebx+0Fh]
	xor al, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Fh], al
	jmp short @L00000697

@L00000696:
	movzx eax, byte ptr [ebx+2h]
	movzx edx, byte ptr [ebx+2h]
	mov byte ptr [ebx+0Fh], dl
	mov byte ptr [ebx+2h], al

@L00000697:
	movzx eax, byte ptr [ebx+5h]
	jmp @L00000746

@L00000698:
	movzx eax, byte ptr [ebx+9h]
	movzx edx, byte ptr [ebx+9h]
	mov byte ptr [ebx], dl
	mov byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000699:
	movzx edx, byte ptr [ebx+0Eh]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000700
	mov byte ptr [ebp-5h], 1h

@L00000700:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000701
	dec al
	je short @L00000702
	dec al
	je short @L00000703
	dec al
	je short @L00000704
	jmp short @L00000705

@L00000701:
	movzx eax, byte ptr [ebx+6h]
	xor al, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+6h], al
	jmp short @L00000705

@L00000702:
	movzx eax, byte ptr [ebx+0Eh]
	add byte ptr [ebx+6h], al
	jmp short @L00000705

@L00000703:
	movzx eax, byte ptr [ebx+0Eh]
	movzx edx, byte ptr [ebx+0Eh]
	mov byte ptr [ebx+6h], dl
	mov byte ptr [ebx+0Eh], al
	jmp short @L00000705

@L00000704:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+6h], al

@L00000705:
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000706:
	movzx eax, byte ptr [ebx+9h]
	movzx edx, byte ptr [ebx+9h]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+9h], al
	mov eax, esi
	add byte ptr [ebx+9h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000707:
	movzx eax, byte ptr [ebx+0Ch]
	movzx edx, byte ptr [ebx+0Ch]
	mov byte ptr [ebx+4h], dl
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000708:
	movzx edx, byte ptr [ebx+4h]
	mov eax, ebx
	call _neg
	mov byte ptr [ebx+4h], al
	mov eax, esi
	add byte ptr [ebx+4h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000709
	mov byte ptr [ebp-5h], 1h

@L00000709:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000710
	dec al
	je short @L00000711
	dec al
	je short @L00000712
	dec al
	je short @L00000713
	jmp short @L00000714

@L00000710:
	movzx eax, byte ptr [ebx+4h]
	xor al, byte ptr [ebx+4h]
	mov byte ptr [ebx+4h], al
	jmp short @L00000714

@L00000711:
	movzx eax, byte ptr [ebx+4h]
	add byte ptr [ebx+4h], al
	jmp short @L00000714

@L00000712:
	movzx eax, byte ptr [ebx+4h]
	movzx edx, byte ptr [ebx+4h]
	mov byte ptr [ebx+4h], dl
	mov byte ptr [ebx+4h], al
	jmp short @L00000714

@L00000713:
	movzx eax, byte ptr [ebx+4h]
	sub byte ptr [ebx+4h], al

@L00000714:
	movzx eax, byte ptr [ebx+0Fh]
	jmp @L00000746

@L00000715:
	movzx eax, byte ptr [ebx+1h]
	sub byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000716:
	movzx eax, byte ptr [ebx+5h]
	xor al, byte ptr [ebx+3h]
	mov byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+3h]
	jmp @L00000746

@L00000717:
	movzx eax, byte ptr [ebx+0Eh]
	sub byte ptr [ebx+5h], al
	mov eax, esi
	add byte ptr [ebx+5h], al
	movzx eax, byte ptr [ebx+0Ah]
	jmp @L00000746

@L00000718:
	movzx eax, byte ptr [ebx+1h]
	add byte ptr [ebx+0Eh], al
	mov eax, esi
	add byte ptr [ebx+0Eh], al
	movzx eax, byte ptr [ebx+9h]
	jmp @L00000746

@L00000719:
	movzx eax, byte ptr [ebx+0Bh]
	sub byte ptr [ebx+0Dh], al
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000720:
	not byte ptr [ebx+0Dh]
	mov eax, esi
	add byte ptr [ebx+0Dh], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000721
	mov byte ptr [ebp-5h], 1h

@L00000721:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000722
	dec al
	je short @L00000723
	dec al
	je short @L00000724
	dec al
	je short @L00000725
	jmp short @L00000726

@L00000722:
	movzx eax, byte ptr [ebx+0Dh]
	add byte ptr [ebx+1h], al
	jmp short @L00000726

@L00000723:
	movzx eax, byte ptr [ebx+0Dh]
	sub byte ptr [ebx+1h], al
	jmp short @L00000726

@L00000724:
	movzx eax, byte ptr [ebx+1h]
	xor al, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+1h], al
	jmp short @L00000726

@L00000725:
	movzx eax, byte ptr [ebx+0Dh]
	movzx edx, byte ptr [ebx+0Dh]
	mov byte ptr [ebx+1h], dl
	mov byte ptr [ebx+0Dh], al

@L00000726:
	movzx eax, byte ptr [ebx+7h]
	jmp @L00000746

@L00000727:
	movzx eax, byte ptr [ebx+3h]
	movzx edx, byte ptr [ebx+3h]
	mov byte ptr [ebx+0Eh], dl
	mov byte ptr [ebx+3h], al
	mov eax, esi
	add byte ptr [ebx+3h], al
	movzx eax, byte ptr [ebx+6h]
	jmp @L00000746

@L00000728:
	movzx eax, byte ptr [ebx+6h]
	movzx edx, byte ptr [ebx+6h]
	mov byte ptr [ebx+4h], dl
	mov byte ptr [ebx+6h], al
	mov eax, esi
	add byte ptr [ebx+6h], al
	movzx eax, byte ptr [ebx+0Dh]
	jmp @L00000746

@L00000729:
	not byte ptr [ebx+8h]
	mov eax, esi
	add byte ptr [ebx+8h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000730
	mov byte ptr [ebp-5h], 1h

@L00000730:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000731
	dec al
	je short @L00000732
	dec al
	je short @L00000733
	dec al
	je short @L00000734
	jmp short @L00000735

@L00000731:
	movzx eax, byte ptr [ebx+8h]
	add byte ptr [ebx+0Ah], al
	jmp short @L00000735

@L00000732:
	movzx eax, byte ptr [ebx+8h]
	sub byte ptr [ebx+0Ah], al
	jmp short @L00000735

@L00000733:
	movzx eax, byte ptr [ebx+0Ah]
	xor al, byte ptr [ebx+8h]
	mov byte ptr [ebx+0Ah], al
	jmp short @L00000735

@L00000734:
	movzx eax, byte ptr [ebx+8h]
	movzx edx, byte ptr [ebx+8h]
	mov byte ptr [ebx+0Ah], dl
	mov byte ptr [ebx+8h], al

@L00000735:
	movzx eax, byte ptr [ebx+0Ch]
	jmp @L00000746

@L00000736:
	movzx eax, byte ptr [ebx+0Ch]
	sub byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+8h]
	jmp @L00000746

@L00000737:
	not byte ptr [ebx+9h]
	mov eax, esi
	add byte ptr [ebx+9h], al
	inc byte ptr [ebp-5h]
	cmp byte ptr [ebp-5h], 4h
	jbe short @L00000738
	mov byte ptr [ebp-5h], 1h

@L00000738:
	movzx eax, byte ptr [ebp-5h]
	dec al
	je short @L00000739
	dec al
	je short @L00000740
	dec al
	je short @L00000741
	dec al
	je short @L00000742
	jmp short @L00000743

@L00000739:
	movzx eax, byte ptr [ebx+9h]
	add byte ptr [ebx+2h], al
	jmp short @L00000743

@L00000740:
	movzx eax, byte ptr [ebx+9h]
	sub byte ptr [ebx+2h], al
	jmp short @L00000743

@L00000741:
	movzx eax, byte ptr [ebx+2h]
	xor al, byte ptr [ebx+9h]
	mov byte ptr [ebx+2h], al
	jmp short @L00000743

@L00000742:
	movzx eax, byte ptr [ebx+9h]
	movzx edx, byte ptr [ebx+9h]
	mov byte ptr [ebx+2h], dl
	mov byte ptr [ebx+9h], al

@L00000743:
	movzx eax, byte ptr [ebx+0Fh]
	jmp short @L00000746

@L00000744:
	movzx eax, byte ptr [ebx+0Ch]
	xor al, byte ptr [ebx+6h]
	mov byte ptr [ebx+0Ch], al
	mov eax, esi
	add byte ptr [ebx+0Ch], al
	movzx eax, byte ptr [ebx+0Bh]
	jmp short @L00000746

@L00000745:
	movzx eax, byte ptr [ebx+2h]
	sub byte ptr [ebx+0Ah], al
	mov eax, esi
	add byte ptr [ebx+0Ah], al
	movzx eax, byte ptr [ebx+5h]

@L00000746:
	inc esi
	cmp esi, 2711h
	jnz @L00000002
	inc edi
	cmp edi, 10h
	jnz @L00000001

	popad

	add esp, 8

	ret

_morfkey endp

end