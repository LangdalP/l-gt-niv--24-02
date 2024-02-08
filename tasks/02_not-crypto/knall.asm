
not-crypto:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <.init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	subq	$8, %rsp
    1008: 48 8b 05 d9 2f 00 00         	movq	12249(%rip), %rax       # 0x3fe8
    100f: 48 85 c0                     	testq	%rax, %rax
    1012: 74 02                        	je	0x1016 <.init+0x16>
    1014: ff d0                        	callq	*%rax
    1016: 48 83 c4 08                  	addq	$8, %rsp
    101a: c3                           	retq

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 e2 2f 00 00            	pushq	12258(%rip)             # 0x4008
    1026: ff 25 e4 2f 00 00            	jmpq	*12260(%rip)            # 0x4010
    102c: 0f 1f 40 00                  	nopl	(%rax)

0000000000001030 <puts@plt>:
    1030: ff 25 e2 2f 00 00            	jmpq	*12258(%rip)            # 0x4018
    1036: 68 00 00 00 00               	pushq	$0
    103b: e9 e0 ff ff ff               	jmp	0x1020 <.plt>

0000000000001040 <fread@plt>:
    1040: ff 25 da 2f 00 00            	jmpq	*12250(%rip)            # 0x4020
    1046: 68 01 00 00 00               	pushq	$1
    104b: e9 d0 ff ff ff               	jmp	0x1020 <.plt>

0000000000001050 <__stack_chk_fail@plt>:
    1050: ff 25 d2 2f 00 00            	jmpq	*12242(%rip)            # 0x4028
    1056: 68 02 00 00 00               	pushq	$2
    105b: e9 c0 ff ff ff               	jmp	0x1020 <.plt>

0000000000001060 <memcmp@plt>:
    1060: ff 25 ca 2f 00 00            	jmpq	*12234(%rip)            # 0x4030
    1066: 68 03 00 00 00               	pushq	$3
    106b: e9 b0 ff ff ff               	jmp	0x1020 <.plt>

Disassembly of section .text:

0000000000001070 <.text>:
    1070: 41 57                        	pushq	%r15
    1072: 48 8d 3d 8f 0f 00 00         	leaq	3983(%rip), %rdi        # 0x2008
    1079: 41 56                        	pushq	%r14
    107b: 41 55                        	pushq	%r13
    107d: 41 54                        	pushq	%r12
    107f: 55                           	pushq	%rbp
    1080: 53                           	pushq	%rbx
    1081: 48 81 ec d8 01 00 00         	subq	$472, %rsp              # imm = 0x1D8
    1088: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1091: 48 89 84 24 c8 01 00 00      	movq	%rax, 456(%rsp)
    1099: 31 c0                        	xorl	%eax, %eax
    109b: 48 8d 9c 24 b0 00 00 00      	leaq	176(%rsp), %rbx
    10a3: e8 88 ff ff ff               	callq	0x1030 <puts@plt>
    10a8: c5 f9 6f 05 f0 10 00 00      	vmovdqa	4336(%rip), %xmm0       # 0x21a0
    10b0: 48 89 d8                     	movq	%rbx, %rax
    10b3: bf 98 ff ff ff               	movl	$4294967192, %edi       # imm = 0xFFFFFF98
    10b8: be 32 00 00 00               	movl	$50, %esi
    10bd: b9 6c 00 00 00               	movl	$108, %ecx
    10c2: ba 1c 00 00 00               	movl	$28, %edx
    10c7: c5 f9 7f 84 24 b0 00 00 00   	vmovdqa	%xmm0, 176(%rsp)
    10d0: 41 b8 04 00 00 00            	movl	$4, %r8d
    10d6: 4c 8d 0d c3 0f 00 00         	leaq	4035(%rip), %r9         # 0x20a0
    10dd: 4c 8d 15 9c 0f 00 00         	leaq	3996(%rip), %r10        # 0x2080
    10e4: 0f 1f 40 00                  	nopl	(%rax)
    10e8: 41 f6 c0 03                  	testb	$3, %r8b
    10ec: 75 2f                        	jne	0x111d <.text+0xad>
    10ee: 40 0f b6 f6                  	movzbl	%sil, %esi
    10f2: 0f b6 c9                     	movzbl	%cl, %ecx
    10f5: 0f b6 d2                     	movzbl	%dl, %edx
    10f8: 40 0f b6 ff                  	movzbl	%dil, %edi
    10fc: 45 0f b6 1c 31               	movzbl	(%r9,%rsi), %r11d
    1101: 41 0f b6 34 09               	movzbl	(%r9,%rcx), %esi
    1106: 41 0f b6 0c 11               	movzbl	(%r9,%rdx), %ecx
    110b: 41 0f b6 14 39               	movzbl	(%r9,%rdi), %edx
    1110: 44 89 c7                     	movl	%r8d, %edi
    1113: c1 ef 02                     	shrl	$2, %edi
    1116: 45 32 1c 3a                  	xorb	(%r10,%rdi), %r11b
    111a: 44 89 df                     	movl	%r11d, %edi
    111d: 40 32 38                     	xorb	(%rax), %dil
    1120: 41 83 c0 01                  	addl	$1, %r8d
    1124: 48 83 c0 04                  	addq	$4, %rax
    1128: 40 32 70 fd                  	xorb	-3(%rax), %sil
    112c: 32 48 fe                     	xorb	-2(%rax), %cl
    112f: 32 50 ff                     	xorb	-1(%rax), %dl
    1132: 40 88 78 0c                  	movb	%dil, 12(%rax)
    1136: 40 88 70 0d                  	movb	%sil, 13(%rax)
    113a: 88 48 0e                     	movb	%cl, 14(%rax)
    113d: 88 50 0f                     	movb	%dl, 15(%rax)
    1140: 41 83 f8 2c                  	cmpl	$44, %r8d
    1144: 75 a2                        	jne	0x10e8 <.text+0x78>
    1146: 48 8d 7c 24 70               	leaq	112(%rsp), %rdi
    114b: ba 40 00 00 00               	movl	$64, %edx
    1150: be 01 00 00 00               	movl	$1, %esi
    1155: 48 8b 05 7c 2e 00 00         	movq	11900(%rip), %rax       # 0x3fd8
    115c: c5 f9 6f 05 4c 10 00 00      	vmovdqa	4172(%rip), %xmm0       # 0x21b0
    1164: 48 89 7c 24 40               	movq	%rdi, 64(%rsp)
    1169: 48 81 c3 a0 00 00 00         	addq	$160, %rbx
    1170: c5 f9 7f 84 24 60 01 00 00   	vmovdqa	%xmm0, 352(%rsp)
    1179: 48 8b 08                     	movq	(%rax), %rcx
    117c: e8 bf fe ff ff               	callq	0x1040 <fread@plt>
    1181: 0f b6 84 24 b0 00 00 00      	movzbl	176(%rsp), %eax
    1189: 48 8d 3d 10 0f 00 00         	leaq	3856(%rip), %rdi        # 0x20a0
    1190: c5 f9 6f 05 28 10 00 00      	vmovdqa	4136(%rip), %xmm0       # 0x21c0
    1198: c5 f9 7f 84 24 80 01 00 00   	vmovdqa	%xmm0, 384(%rsp)
    11a1: c5 f9 6f 05 27 10 00 00      	vmovdqa	4135(%rip), %xmm0       # 0x21d0
    11a9: 88 44 24 60                  	movb	%al, 96(%rsp)
    11ad: 0f b6 84 24 b1 00 00 00      	movzbl	177(%rsp), %eax
    11b5: c5 f9 7f 84 24 90 01 00 00   	vmovdqa	%xmm0, 400(%rsp)
    11be: c5 f9 6f 05 1a 10 00 00      	vmovdqa	4122(%rip), %xmm0       # 0x21e0
    11c6: c5 f9 7f 84 24 a0 01 00 00   	vmovdqa	%xmm0, 416(%rsp)
    11cf: c5 f9 6f 05 19 10 00 00      	vmovdqa	4121(%rip), %xmm0       # 0x21f0
    11d7: 88 44 24 61                  	movb	%al, 97(%rsp)
    11db: 0f b6 84 24 b2 00 00 00      	movzbl	178(%rsp), %eax
    11e3: c5 f9 7f 84 24 b0 01 00 00   	vmovdqa	%xmm0, 432(%rsp)
    11ec: 88 44 24 62                  	movb	%al, 98(%rsp)
    11f0: 0f b6 84 24 b3 00 00 00      	movzbl	179(%rsp), %eax
    11f8: 88 44 24 63                  	movb	%al, 99(%rsp)
    11fc: 0f b6 84 24 b4 00 00 00      	movzbl	180(%rsp), %eax
    1204: 88 44 24 64                  	movb	%al, 100(%rsp)
    1208: 0f b6 84 24 b5 00 00 00      	movzbl	181(%rsp), %eax
    1210: 88 44 24 65                  	movb	%al, 101(%rsp)
    1214: 0f b6 84 24 b6 00 00 00      	movzbl	182(%rsp), %eax
    121c: 88 44 24 66                  	movb	%al, 102(%rsp)
    1220: 0f b6 84 24 b7 00 00 00      	movzbl	183(%rsp), %eax
    1228: 88 44 24 67                  	movb	%al, 103(%rsp)
    122c: 0f b6 84 24 b8 00 00 00      	movzbl	184(%rsp), %eax
    1234: 88 44 24 68                  	movb	%al, 104(%rsp)
    1238: 0f b6 84 24 b9 00 00 00      	movzbl	185(%rsp), %eax
    1240: 88 44 24 69                  	movb	%al, 105(%rsp)
    1244: 0f b6 84 24 ba 00 00 00      	movzbl	186(%rsp), %eax
    124c: 88 44 24 6a                  	movb	%al, 106(%rsp)
    1250: 0f b6 84 24 bb 00 00 00      	movzbl	187(%rsp), %eax
    1258: 88 44 24 6b                  	movb	%al, 107(%rsp)
    125c: 0f b6 84 24 bc 00 00 00      	movzbl	188(%rsp), %eax
    1264: 88 44 24 6c                  	movb	%al, 108(%rsp)
    1268: 0f b6 84 24 bd 00 00 00      	movzbl	189(%rsp), %eax
    1270: 88 44 24 6d                  	movb	%al, 109(%rsp)
    1274: 0f b6 84 24 be 00 00 00      	movzbl	190(%rsp), %eax
    127c: 88 44 24 6e                  	movb	%al, 110(%rsp)
    1280: 0f b6 84 24 bf 00 00 00      	movzbl	191(%rsp), %eax
    1288: 88 44 24 6f                  	movb	%al, 111(%rsp)
    128c: 0f b6 84 24 50 01 00 00      	movzbl	336(%rsp), %eax
    1294: 88 44 24 50                  	movb	%al, 80(%rsp)
    1298: 0f b6 84 24 51 01 00 00      	movzbl	337(%rsp), %eax
    12a0: 88 44 24 51                  	movb	%al, 81(%rsp)
    12a4: 0f b6 84 24 52 01 00 00      	movzbl	338(%rsp), %eax
    12ac: 88 44 24 52                  	movb	%al, 82(%rsp)
    12b0: 0f b6 84 24 53 01 00 00      	movzbl	339(%rsp), %eax
    12b8: 88 44 24 53                  	movb	%al, 83(%rsp)
    12bc: 0f b6 84 24 54 01 00 00      	movzbl	340(%rsp), %eax
    12c4: 88 44 24 54                  	movb	%al, 84(%rsp)
    12c8: 0f b6 84 24 55 01 00 00      	movzbl	341(%rsp), %eax
    12d0: 88 44 24 55                  	movb	%al, 85(%rsp)
    12d4: 0f b6 84 24 56 01 00 00      	movzbl	342(%rsp), %eax
    12dc: 88 44 24 56                  	movb	%al, 86(%rsp)
    12e0: 0f b6 84 24 57 01 00 00      	movzbl	343(%rsp), %eax
    12e8: 88 44 24 57                  	movb	%al, 87(%rsp)
    12ec: 0f b6 84 24 58 01 00 00      	movzbl	344(%rsp), %eax
    12f4: 88 44 24 58                  	movb	%al, 88(%rsp)
    12f8: 0f b6 84 24 59 01 00 00      	movzbl	345(%rsp), %eax
    1300: 88 44 24 59                  	movb	%al, 89(%rsp)
    1304: 0f b6 84 24 5a 01 00 00      	movzbl	346(%rsp), %eax
    130c: 88 44 24 5a                  	movb	%al, 90(%rsp)
    1310: 0f b6 84 24 5b 01 00 00      	movzbl	347(%rsp), %eax
    1318: 88 44 24 5b                  	movb	%al, 91(%rsp)
    131c: 0f b6 84 24 5c 01 00 00      	movzbl	348(%rsp), %eax
    1324: 48 89 5c 24 38               	movq	%rbx, 56(%rsp)
    1329: 88 44 24 5c                  	movb	%al, 92(%rsp)
    132d: 0f b6 84 24 5d 01 00 00      	movzbl	349(%rsp), %eax
    1335: 88 44 24 5d                  	movb	%al, 93(%rsp)
    1339: 0f b6 84 24 5e 01 00 00      	movzbl	350(%rsp), %eax
    1341: 88 44 24 5e                  	movb	%al, 94(%rsp)
    1345: 0f b6 84 24 5f 01 00 00      	movzbl	351(%rsp), %eax
    134d: 88 44 24 5f                  	movb	%al, 95(%rsp)
    1351: 48 8d 84 24 80 01 00 00      	leaq	384(%rsp), %rax
    1359: 49 89 c4                     	movq	%rax, %r12
    135c: 48 89 44 24 48               	movq	%rax, 72(%rsp)
    1361: 48 8d 84 24 c0 01 00 00      	leaq	448(%rsp), %rax
    1369: 4c 89 64 24 20               	movq	%r12, 32(%rsp)
    136e: 48 89 44 24 30               	movq	%rax, 48(%rsp)
    1373: b8 10 00 00 00               	movl	$16, %eax
    1378: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
    1380: 83 f8 10                     	cmpl	$16, %eax
    1383: 74 7c                        	je	0x1401 <.text+0x391>
    1385: 48 8b 5c 24 20               	movq	32(%rsp), %rbx
    138a: 48 63 d0                     	movslq	%eax, %rdx
    138d: 83 c0 01                     	addl	$1, %eax
    1390: 0f b6 94 14 70 01 00 00      	movzbl	368(%rsp,%rdx), %edx
    1398: 30 13                        	xorb	%dl, (%rbx)
    139a: 48 83 c3 01                  	addq	$1, %rbx
    139e: 48 89 5c 24 20               	movq	%rbx, 32(%rsp)
    13a3: 48 39 5c 24 30               	cmpq	%rbx, 48(%rsp)
    13a8: 75 d6                        	jne	0x1380 <.text+0x310>
    13aa: 48 8b 74 24 40               	movq	64(%rsp), %rsi
    13af: ba 40 00 00 00               	movl	$64, %edx
    13b4: 48 8b 7c 24 48               	movq	72(%rsp), %rdi
    13b9: e8 a2 fc ff ff               	callq	0x1060 <memcmp@plt>
    13be: 41 89 c4                     	movl	%eax, %r12d
    13c1: 85 c0                        	testl	%eax, %eax
    13c3: 0f 85 d6 06 00 00            	jne	0x1a9f <.text+0xa2f>
    13c9: 48 8d 3d 87 0c 00 00         	leaq	3207(%rip), %rdi        # 0x2057
    13d0: e8 5b fc ff ff               	callq	0x1030 <puts@plt>
    13d5: 48 8b 84 24 c8 01 00 00      	movq	456(%rsp), %rax
    13dd: 64 48 2b 04 25 28 00 00 00   	subq	%fs:40, %rax
    13e6: 0f 85 7d 08 00 00            	jne	0x1c69 <.text+0xbf9>
    13ec: 48 81 c4 d8 01 00 00         	addq	$472, %rsp              # imm = 0x1D8
    13f3: 44 89 e0                     	movl	%r12d, %eax
    13f6: 5b                           	popq	%rbx
    13f7: 5d                           	popq	%rbp
    13f8: 41 5c                        	popq	%r12
    13fa: 41 5d                        	popq	%r13
    13fc: 41 5e                        	popq	%r14
    13fe: 41 5f                        	popq	%r15
    1400: c3                           	retq
    1401: 0f b6 44 24 60               	movzbl	96(%rsp), %eax
    1406: 4c 8d bc 24 c0 00 00 00      	leaq	192(%rsp), %r15
    140e: 32 84 24 60 01 00 00         	xorb	352(%rsp), %al
    1415: c5 f9 6f a4 24 60 01 00 00   	vmovdqa	352(%rsp), %xmm4
    141e: 0f b6 c0                     	movzbl	%al, %eax
    1421: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    1425: 88 44 24 10                  	movb	%al, 16(%rsp)
    1429: c4 e3 79 14 e0 04            	vpextrb	$4, %xmm4, %eax
    142f: 32 44 24 64                  	xorb	100(%rsp), %al
    1433: 0f b6 c0                     	movzbl	%al, %eax
    1436: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    143a: 88 44 24 0c                  	movb	%al, 12(%rsp)
    143e: 0f b6 44 24 68               	movzbl	104(%rsp), %eax
    1443: 32 84 24 68 01 00 00         	xorb	360(%rsp), %al
    144a: 0f b6 c0                     	movzbl	%al, %eax
    144d: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    1451: 88 44 24 1a                  	movb	%al, 26(%rsp)
    1455: c4 e3 79 14 e0 0c            	vpextrb	$12, %xmm4, %eax
    145b: 32 44 24 6c                  	xorb	108(%rsp), %al
    145f: 0f b6 c0                     	movzbl	%al, %eax
    1462: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    1466: 88 44 24 19                  	movb	%al, 25(%rsp)
    146a: c4 e3 79 14 e0 01            	vpextrb	$1, %xmm4, %eax
    1470: 32 44 24 61                  	xorb	97(%rsp), %al
    1474: 0f b6 c0                     	movzbl	%al, %eax
    1477: 44 0f b6 04 07               	movzbl	(%rdi,%rax), %r8d
    147c: c4 e3 79 14 e0 05            	vpextrb	$5, %xmm4, %eax
    1482: 32 44 24 65                  	xorb	101(%rsp), %al
    1486: 0f b6 c0                     	movzbl	%al, %eax
    1489: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    148d: 88 44 24 0b                  	movb	%al, 11(%rsp)
    1491: c4 e3 79 14 e0 09            	vpextrb	$9, %xmm4, %eax
    1497: 32 44 24 69                  	xorb	105(%rsp), %al
    149b: 0f b6 c0                     	movzbl	%al, %eax
    149e: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    14a2: 88 44 24 0a                  	movb	%al, 10(%rsp)
    14a6: c4 e3 79 14 e0 0d            	vpextrb	$13, %xmm4, %eax
    14ac: 32 44 24 6d                  	xorb	109(%rsp), %al
    14b0: 0f b6 c0                     	movzbl	%al, %eax
    14b3: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    14b7: 88 44 24 18                  	movb	%al, 24(%rsp)
    14bb: c4 e3 79 14 e0 02            	vpextrb	$2, %xmm4, %eax
    14c1: 32 44 24 62                  	xorb	98(%rsp), %al
    14c5: 0f b6 c0                     	movzbl	%al, %eax
    14c8: 0f b6 34 07                  	movzbl	(%rdi,%rax), %esi
    14cc: c4 e3 79 14 e0 06            	vpextrb	$6, %xmm4, %eax
    14d2: 32 44 24 66                  	xorb	102(%rsp), %al
    14d6: 0f b6 c0                     	movzbl	%al, %eax
    14d9: 44 0f b6 24 07               	movzbl	(%rdi,%rax), %r12d
    14de: c4 e3 79 14 e0 0a            	vpextrb	$10, %xmm4, %eax
    14e4: 32 44 24 6a                  	xorb	106(%rsp), %al
    14e8: 0f b6 c0                     	movzbl	%al, %eax
    14eb: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    14ef: 88 44 24 17                  	movb	%al, 23(%rsp)
    14f3: c4 e3 79 14 e0 0e            	vpextrb	$14, %xmm4, %eax
    14f9: 32 44 24 6e                  	xorb	110(%rsp), %al
    14fd: 44 88 64 24 1c               	movb	%r12b, 28(%rsp)
    1502: 44 88 44 24 14               	movb	%r8b, 20(%rsp)
    1507: 0f b6 c0                     	movzbl	%al, %eax
    150a: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    150e: 88 44 24 16                  	movb	%al, 22(%rsp)
    1512: c4 e3 79 14 e0 03            	vpextrb	$3, %xmm4, %eax
    1518: 32 44 24 63                  	xorb	99(%rsp), %al
    151c: 0f b6 c0                     	movzbl	%al, %eax
    151f: 44 0f b6 34 07               	movzbl	(%rdi,%rax), %r14d
    1524: c4 e3 79 14 e0 07            	vpextrb	$7, %xmm4, %eax
    152a: 32 44 24 67                  	xorb	103(%rsp), %al
    152e: 44 88 74 24 1b               	movb	%r14b, 27(%rsp)
    1533: 0f b6 c0                     	movzbl	%al, %eax
    1536: 0f b6 14 07                  	movzbl	(%rdi,%rax), %edx
    153a: c4 e3 79 14 e0 0b            	vpextrb	$11, %xmm4, %eax
    1540: 32 44 24 6b                  	xorb	107(%rsp), %al
    1544: 0f b6 c0                     	movzbl	%al, %eax
    1547: 0f b6 0c 07                  	movzbl	(%rdi,%rax), %ecx
    154b: c4 e3 79 14 e0 0f            	vpextrb	$15, %xmm4, %eax
    1551: 32 44 24 6f                  	xorb	111(%rsp), %al
    1555: 0f b6 c0                     	movzbl	%al, %eax
    1558: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    155c: 88 44 24 15                  	movb	%al, 21(%rsp)
    1560: 44 0f b6 74 24 0b            	movzbl	11(%rsp), %r14d
    1566: 0f b6 44 24 15               	movzbl	21(%rsp), %eax
    156b: 44 0f b6 4c 24 10            	movzbl	16(%rsp), %r9d
    1571: 44 0f b6 54 24 17            	movzbl	23(%rsp), %r10d
    1577: 45 89 f3                     	movl	%r14d, %r11d
    157a: 0f b6 6c 24 1b               	movzbl	27(%rsp), %ebp
    157f: 89 c3                        	movl	%eax, %ebx
    1581: 45 31 cb                     	xorl	%r9d, %r11d
    1584: 44 31 d3                     	xorl	%r10d, %ebx
    1587: 45 89 d0                     	movl	%r10d, %r8d
    158a: 44 0f b6 54 24 0a            	movzbl	10(%rsp), %r10d
    1590: 45 89 dc                     	movl	%r11d, %r12d
    1593: 45 31 f0                     	xorl	%r14d, %r8d
    1596: 44 88 5c 24 28               	movb	%r11b, 40(%rsp)
    159b: 41 89 c6                     	movl	%eax, %r14d
    159e: 41 31 dc                     	xorl	%ebx, %r12d
    15a1: 44 0f b6 5c 24 0c            	movzbl	12(%rsp), %r11d
    15a7: 45 31 ce                     	xorl	%r9d, %r14d
    15aa: 41 89 e9                     	movl	%ebp, %r9d
    15ad: 88 5c 24 1f                  	movb	%bl, 31(%rsp)
    15b1: 0f b6 44 24 16               	movzbl	22(%rsp), %eax
    15b6: 44 88 44 24 29               	movb	%r8b, 41(%rsp)
    15bb: 45 89 d0                     	movl	%r10d, %r8d
    15be: 44 88 74 24 2a               	movb	%r14b, 42(%rsp)
    15c3: 45 31 d8                     	xorl	%r11d, %r8d
    15c6: 41 31 c1                     	xorl	%eax, %r9d
    15c9: 44 88 44 24 2b               	movb	%r8b, 43(%rsp)
    15ce: 45 89 cd                     	movl	%r9d, %r13d
    15d1: 45 89 c1                     	movl	%r8d, %r9d
    15d4: 45 31 e9                     	xorl	%r13d, %r9d
    15d7: 44 88 6c 24 1e               	movb	%r13b, 30(%rsp)
    15dc: 41 89 ed                     	movl	%ebp, %r13d
    15df: 0f b6 6c 24 1a               	movzbl	26(%rsp), %ebp
    15e4: 45 89 ce                     	movl	%r9d, %r14d
    15e7: 41 89 c1                     	movl	%eax, %r9d
    15ea: 0f b6 44 24 18               	movzbl	24(%rsp), %eax
    15ef: 45 31 dd                     	xorl	%r11d, %r13d
    15f2: 45 31 d1                     	xorl	%r10d, %r9d
    15f5: 41 89 d2                     	movl	%edx, %r10d
    15f8: 44 88 4c 24 2c               	movb	%r9b, 44(%rsp)
    15fd: 41 31 f2                     	xorl	%esi, %r10d
    1600: 41 89 c1                     	movl	%eax, %r9d
    1603: 41 31 e9                     	xorl	%ebp, %r9d
    1606: 31 d5                        	xorl	%edx, %ebp
    1608: 44 89 cb                     	movl	%r9d, %ebx
    160b: 45 89 d1                     	movl	%r10d, %r9d
    160e: 41 89 c2                     	movl	%eax, %r10d
    1611: 41 89 db                     	movl	%ebx, %r11d
    1614: 41 31 f2                     	xorl	%esi, %r10d
    1617: 88 5c 24 2d                  	movb	%bl, 45(%rsp)
    161b: 0f b6 5c 24 1c               	movzbl	28(%rsp), %ebx
    1620: 45 31 cb                     	xorl	%r9d, %r11d
    1623: 44 88 54 24 2e               	movb	%r10b, 46(%rsp)
    1628: 44 0f b6 54 24 19            	movzbl	25(%rsp), %r10d
    162e: 44 88 5c 24 1d               	movb	%r11b, 29(%rsp)
    1633: 44 0f b6 5c 24 14            	movzbl	20(%rsp), %r11d
    1639: 41 89 d8                     	movl	%ebx, %r8d
    163c: 41 31 c8                     	xorl	%ecx, %r8d
    163f: 44 89 d8                     	movl	%r11d, %eax
    1642: 44 31 db                     	xorl	%r11d, %ebx
    1645: 45 89 d3                     	movl	%r10d, %r11d
    1648: 44 31 d0                     	xorl	%r10d, %eax
    164b: 45 89 ea                     	movl	%r13d, %r10d
    164e: 45 01 ed                     	addl	%r13d, %r13d
    1651: 41 c0 ea 07                  	shrb	$7, %r10b
    1655: 41 31 cb                     	xorl	%ecx, %r11d
    1658: 88 44 24 2f                  	movb	%al, 47(%rsp)
    165c: 44 31 c0                     	xorl	%r8d, %eax
    165f: 47 8d 14 52                  	leal	(%r10,%r10,2), %r10d
    1663: 47 8d 14 d2                  	leal	(%r10,%r10,8), %r10d
    1667: 45 31 ea                     	xorl	%r13d, %r10d
    166a: 45 0f b6 6f 07               	movzbl	7(%r15), %r13d
    166f: 45 31 f5                     	xorl	%r14d, %r13d
    1672: 44 32 6c 24 1b               	xorb	27(%rsp), %r13b
    1677: 45 31 d5                     	xorl	%r10d, %r13d
    167a: 45 89 ca                     	movl	%r9d, %r10d
    167d: 45 01 c9                     	addl	%r9d, %r9d
    1680: 41 c0 ea 07                  	shrb	$7, %r10b
    1684: 45 0f b6 ed                  	movzbl	%r13b, %r13d
    1688: 47 8d 14 52                  	leal	(%r10,%r10,2), %r10d
    168c: 47 8d 14 d2                  	leal	(%r10,%r10,8), %r10d
    1690: 45 31 d1                     	xorl	%r10d, %r9d
    1693: 44 0f b6 54 24 1d            	movzbl	29(%rsp), %r10d
    1699: 45 32 57 0a                  	xorb	10(%r15), %r10b
    169d: 44 31 d6                     	xorl	%r10d, %esi
    16a0: 45 89 ca                     	movl	%r9d, %r10d
    16a3: 41 31 f2                     	xorl	%esi, %r10d
    16a6: 89 ee                        	movl	%ebp, %esi
    16a8: 40 c0 ee 07                  	shrb	$7, %sil
    16ac: 01 ed                        	addl	%ebp, %ebp
    16ae: 8d 34 76                     	leal	(%rsi,%rsi,2), %esi
    16b1: 8d 34 f6                     	leal	(%rsi,%rsi,8), %esi
    16b4: 31 ee                        	xorl	%ebp, %esi
    16b6: 0f b6 6c 24 1d               	movzbl	29(%rsp), %ebp
    16bb: 41 32 6f 0b                  	xorb	11(%r15), %bpl
    16bf: 41 89 e9                     	movl	%ebp, %r9d
    16c2: 44 31 ca                     	xorl	%r9d, %edx
    16c5: 31 d6                        	xorl	%edx, %esi
    16c7: 89 da                        	movl	%ebx, %edx
    16c9: 01 db                        	addl	%ebx, %ebx
    16cb: 89 f5                        	movl	%esi, %ebp
    16cd: 41 0f b6 77 0d               	movzbl	13(%r15), %esi
    16d2: c0 ea 07                     	shrb	$7, %dl
    16d5: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    16d8: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    16db: 31 da                        	xorl	%ebx, %edx
    16dd: 31 c6                        	xorl	%eax, %esi
    16df: 40 32 74 24 14               	xorb	20(%rsp), %sil
    16e4: 31 f2                        	xorl	%esi, %edx
    16e6: 89 d3                        	movl	%edx, %ebx
    16e8: 44 89 c2                     	movl	%r8d, %edx
    16eb: 45 01 c0                     	addl	%r8d, %r8d
    16ee: c0 ea 07                     	shrb	$7, %dl
    16f1: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    16f4: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    16f7: 41 31 d0                     	xorl	%edx, %r8d
    16fa: 41 0f b6 57 0e               	movzbl	14(%r15), %edx
    16ff: 41 0f b6 77 0f               	movzbl	15(%r15), %esi
    1704: 44 0f b6 4c 24 2d            	movzbl	45(%rsp), %r9d
    170a: 31 c2                        	xorl	%eax, %edx
    170c: 32 54 24 1c                  	xorb	28(%rsp), %dl
    1710: 31 c6                        	xorl	%eax, %esi
    1712: 31 f1                        	xorl	%esi, %ecx
    1714: 41 0f b6 37                  	movzbl	(%r15), %esi
    1718: 41 31 d0                     	xorl	%edx, %r8d
    171b: 44 89 da                     	movl	%r11d, %edx
    171e: 45 01 db                     	addl	%r11d, %r11d
    1721: c0 ea 07                     	shrb	$7, %dl
    1724: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    1727: 44 31 e6                     	xorl	%r12d, %esi
    172a: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    172d: 44 31 da                     	xorl	%r11d, %edx
    1730: 31 ca                        	xorl	%ecx, %edx
    1732: 0f b6 4c 24 28               	movzbl	40(%rsp), %ecx
    1737: 41 89 d3                     	movl	%edx, %r11d
    173a: 89 ca                        	movl	%ecx, %edx
    173c: 01 c9                        	addl	%ecx, %ecx
    173e: c0 ea 07                     	shrb	$7, %dl
    1741: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    1744: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    1747: 31 ca                        	xorl	%ecx, %edx
    1749: 0f b6 4c 24 10               	movzbl	16(%rsp), %ecx
    174e: 31 f1                        	xorl	%esi, %ecx
    1750: 0f b6 74 24 1d               	movzbl	29(%rsp), %esi
    1755: 31 d1                        	xorl	%edx, %ecx
    1757: 0f b6 c9                     	movzbl	%cl, %ecx
    175a: 0f b6 14 0f                  	movzbl	(%rdi,%rcx), %edx
    175e: 0f b6 4c 24 2b               	movzbl	43(%rsp), %ecx
    1763: 88 54 24 10                  	movb	%dl, 16(%rsp)
    1767: 89 ca                        	movl	%ecx, %edx
    1769: 01 c9                        	addl	%ecx, %ecx
    176b: c0 ea 07                     	shrb	$7, %dl
    176e: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    1771: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    1774: 31 ca                        	xorl	%ecx, %edx
    1776: 41 0f b6 4f 04               	movzbl	4(%r15), %ecx
    177b: 41 32 47 0c                  	xorb	12(%r15), %al
    177f: 32 44 24 19                  	xorb	25(%rsp), %al
    1783: 44 31 f1                     	xorl	%r14d, %ecx
    1786: 32 4c 24 0c                  	xorb	12(%rsp), %cl
    178a: 31 d1                        	xorl	%edx, %ecx
    178c: 0f b6 c9                     	movzbl	%cl, %ecx
    178f: 0f b6 14 0f                  	movzbl	(%rdi,%rcx), %edx
    1793: 43 8d 0c 09                  	leal	(%r9,%r9), %ecx
    1797: 88 54 24 0c                  	movb	%dl, 12(%rsp)
    179b: 44 89 ca                     	movl	%r9d, %edx
    179e: 44 0f b6 4c 24 2f            	movzbl	47(%rsp), %r9d
    17a4: c0 ea 07                     	shrb	$7, %dl
    17a7: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    17aa: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    17ad: 31 ca                        	xorl	%ecx, %edx
    17af: 41 0f b6 4f 08               	movzbl	8(%r15), %ecx
    17b4: 31 f1                        	xorl	%esi, %ecx
    17b6: 32 4c 24 1a                  	xorb	26(%rsp), %cl
    17ba: 31 d1                        	xorl	%edx, %ecx
    17bc: 0f b6 c9                     	movzbl	%cl, %ecx
    17bf: 0f b6 14 0f                  	movzbl	(%rdi,%rcx), %edx
    17c3: 43 8d 0c 09                  	leal	(%r9,%r9), %ecx
    17c7: 88 54 24 1a                  	movb	%dl, 26(%rsp)
    17cb: 44 89 ca                     	movl	%r9d, %edx
    17ce: c0 ea 07                     	shrb	$7, %dl
    17d1: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    17d4: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    17d7: 31 d1                        	xorl	%edx, %ecx
    17d9: 31 c8                        	xorl	%ecx, %eax
    17db: 0f b6 c8                     	movzbl	%al, %ecx
    17de: 0f b6 14 0f                  	movzbl	(%rdi,%rcx), %edx
    17e2: 88 54 24 19                  	movb	%dl, 25(%rsp)
    17e6: 0f b6 54 24 29               	movzbl	41(%rsp), %edx
    17eb: 41 89 d1                     	movl	%edx, %r9d
    17ee: 01 d2                        	addl	%edx, %edx
    17f0: 41 c0 e9 07                  	shrb	$7, %r9b
    17f4: 44 89 c8                     	movl	%r9d, %eax
    17f7: 44 0f b6 4c 24 2c            	movzbl	44(%rsp), %r9d
    17fd: 8d 04 40                     	leal	(%rax,%rax,2), %eax
    1800: 8d 04 c0                     	leal	(%rax,%rax,8), %eax
    1803: 31 d0                        	xorl	%edx, %eax
    1805: 41 0f b6 57 01               	movzbl	1(%r15), %edx
    180a: 44 31 e2                     	xorl	%r12d, %edx
    180d: 32 54 24 0b                  	xorb	11(%rsp), %dl
    1811: 31 c2                        	xorl	%eax, %edx
    1813: 0f b6 d2                     	movzbl	%dl, %edx
    1816: 0f b6 14 17                  	movzbl	(%rdi,%rdx), %edx
    181a: 88 54 24 14                  	movb	%dl, 20(%rsp)
    181e: 44 89 ca                     	movl	%r9d, %edx
    1821: c0 ea 07                     	shrb	$7, %dl
    1824: 89 d0                        	movl	%edx, %eax
    1826: 8d 04 40                     	leal	(%rax,%rax,2), %eax
    1829: 8d 14 c0                     	leal	(%rax,%rax,8), %edx
    182c: 43 8d 04 09                  	leal	(%r9,%r9), %eax
    1830: 45 0f b6 ca                  	movzbl	%r10b, %r9d
    1834: 31 d0                        	xorl	%edx, %eax
    1836: 41 0f b6 57 05               	movzbl	5(%r15), %edx
    183b: 44 31 f2                     	xorl	%r14d, %edx
    183e: 32 54 24 0a                  	xorb	10(%rsp), %dl
    1842: 31 c2                        	xorl	%eax, %edx
    1844: 0f b6 d2                     	movzbl	%dl, %edx
    1847: 0f b6 14 17                  	movzbl	(%rdi,%rdx), %edx
    184b: 0f b6 4c 24 2e               	movzbl	46(%rsp), %ecx
    1850: 41 32 77 09                  	xorb	9(%r15), %sil
    1854: 88 54 24 0b                  	movb	%dl, 11(%rsp)
    1858: 8d 04 09                     	leal	(%rcx,%rcx), %eax
    185b: 89 ca                        	movl	%ecx, %edx
    185d: 0f b6 4c 24 1e               	movzbl	30(%rsp), %ecx
    1862: c0 ea 07                     	shrb	$7, %dl
    1865: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    1868: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    186b: 31 d0                        	xorl	%edx, %eax
    186d: 0f b6 54 24 18               	movzbl	24(%rsp), %edx
    1872: 31 f2                        	xorl	%esi, %edx
    1874: 0f b6 74 24 1f               	movzbl	31(%rsp), %esi
    1879: 31 c2                        	xorl	%eax, %edx
    187b: 0f b6 d2                     	movzbl	%dl, %edx
    187e: 0f b6 14 17                  	movzbl	(%rdi,%rdx), %edx
    1882: 89 f0                        	movl	%esi, %eax
    1884: c0 e8 07                     	shrb	$7, %al
    1887: 8d 04 40                     	leal	(%rax,%rax,2), %eax
    188a: 88 54 24 0a                  	movb	%dl, 10(%rsp)
    188e: 8d 04 c0                     	leal	(%rax,%rax,8), %eax
    1891: 0f b6 d3                     	movzbl	%bl, %edx
    1894: 0f b6 5c 24 2a               	movzbl	42(%rsp), %ebx
    1899: 0f b6 14 17                  	movzbl	(%rdi,%rdx), %edx
    189d: 88 54 24 18                  	movb	%dl, 24(%rsp)
    18a1: 8d 14 36                     	leal	(%rsi,%rsi), %edx
    18a4: 31 d0                        	xorl	%edx, %eax
    18a6: 41 0f b6 57 02               	movzbl	2(%r15), %edx
    18ab: 44 31 e2                     	xorl	%r12d, %edx
    18ae: 32 54 24 17                  	xorb	23(%rsp), %dl
    18b2: 49 83 c7 10                  	addq	$16, %r15
    18b6: 31 c2                        	xorl	%eax, %edx
    18b8: 89 c8                        	movl	%ecx, %eax
    18ba: c0 e8 07                     	shrb	$7, %al
    18bd: 0f b6 d2                     	movzbl	%dl, %edx
    18c0: 8d 04 40                     	leal	(%rax,%rax,2), %eax
    18c3: 0f b6 34 17                  	movzbl	(%rdi,%rdx), %esi
    18c7: 8d 04 c0                     	leal	(%rax,%rax,8), %eax
    18ca: 8d 14 09                     	leal	(%rcx,%rcx), %edx
    18cd: 41 0f b6 4f f6               	movzbl	-10(%r15), %ecx
    18d2: 31 c2                        	xorl	%eax, %edx
    18d4: 0f b6 44 24 16               	movzbl	22(%rsp), %eax
    18d9: 44 31 f1                     	xorl	%r14d, %ecx
    18dc: 31 c8                        	xorl	%ecx, %eax
    18de: 31 d0                        	xorl	%edx, %eax
    18e0: 41 0f b6 d0                  	movzbl	%r8b, %edx
    18e4: 0f b6 c0                     	movzbl	%al, %eax
    18e7: 0f b6 0c 07                  	movzbl	(%rdi,%rax), %ecx
    18eb: 8d 04 1b                     	leal	(%rbx,%rbx), %eax
    18ee: 88 4c 24 1c                  	movb	%cl, 28(%rsp)
    18f2: 42 0f b6 0c 0f               	movzbl	(%rdi,%r9), %ecx
    18f7: 44 0f b6 cd                  	movzbl	%bpl, %r9d
    18fb: 88 4c 24 17                  	movb	%cl, 23(%rsp)
    18ff: 0f b6 0c 17                  	movzbl	(%rdi,%rdx), %ecx
    1903: 89 da                        	movl	%ebx, %edx
    1905: c0 ea 07                     	shrb	$7, %dl
    1908: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
    190b: 8d 14 d2                     	leal	(%rdx,%rdx,8), %edx
    190e: 31 d0                        	xorl	%edx, %eax
    1910: 41 0f b6 57 f3               	movzbl	-13(%r15), %edx
    1915: 88 4c 24 16                  	movb	%cl, 22(%rsp)
    1919: 42 0f b6 0c 0f               	movzbl	(%rdi,%r9), %ecx
    191e: 44 31 e2                     	xorl	%r12d, %edx
    1921: 32 54 24 15                  	xorb	21(%rsp), %dl
    1925: 31 c2                        	xorl	%eax, %edx
    1927: 0f b6 d2                     	movzbl	%dl, %edx
    192a: 0f b6 04 17                  	movzbl	(%rdi,%rdx), %eax
    192e: 42 0f b6 14 2f               	movzbl	(%rdi,%r13), %edx
    1933: 88 44 24 1b                  	movb	%al, 27(%rsp)
    1937: 41 0f b6 c3                  	movzbl	%r11b, %eax
    193b: 0f b6 04 07                  	movzbl	(%rdi,%rax), %eax
    193f: 88 44 24 15                  	movb	%al, 21(%rsp)
    1943: 4c 39 7c 24 38               	cmpq	%r15, 56(%rsp)
    1948: 0f 85 12 fc ff ff            	jne	0x1560 <.text+0x4f0>
    194e: 89 c3                        	movl	%eax, %ebx
    1950: 0f b6 44 24 10               	movzbl	16(%rsp), %eax
    1955: 32 5c 24 53                  	xorb	83(%rsp), %bl
    1959: 32 44 24 50                  	xorb	80(%rsp), %al
    195d: 40 32 74 24 5a               	xorb	90(%rsp), %sil
    1962: 44 0f b6 74 24 1b            	movzbl	27(%rsp), %r14d
    1968: 44 32 74 24 57               	xorb	87(%rsp), %r14b
    196d: 88 44 24 10                  	movb	%al, 16(%rsp)
    1971: 0f b6 44 24 0b               	movzbl	11(%rsp), %eax
    1976: 88 5c 24 0b                  	movb	%bl, 11(%rsp)
    197a: 0f b6 5c 24 0a               	movzbl	10(%rsp), %ebx
    197f: 41 89 f7                     	movl	%esi, %r15d
    1982: 32 5c 24 55                  	xorb	85(%rsp), %bl
    1986: c4 c1 79 6e ef               	vmovd	%r15d, %xmm5
    198b: 32 44 24 51                  	xorb	81(%rsp), %al
    198f: 44 0f b6 54 24 0c            	movzbl	12(%rsp), %r10d
    1995: 44 0f b6 64 24 1c            	movzbl	28(%rsp), %r12d
    199b: 88 5c 24 0a                  	movb	%bl, 10(%rsp)
    199f: 0f b6 5c 24 16               	movzbl	22(%rsp), %ebx
    19a4: 32 5c 24 56                  	xorb	86(%rsp), %bl
    19a8: 44 32 64 24 5e               	xorb	94(%rsp), %r12b
    19ad: 44 0f b6 44 24 14            	movzbl	20(%rsp), %r8d
    19b3: 44 88 74 24 14               	movb	%r14b, 20(%rsp)
    19b8: 44 0f b6 4c 24 17            	movzbl	23(%rsp), %r9d
    19be: 88 5c 24 0c                  	movb	%bl, 12(%rsp)
    19c2: 0f b6 5c 24 5b               	movzbl	91(%rsp), %ebx
    19c7: 44 32 4c 24 52               	xorb	82(%rsp), %r9b
    19cc: 44 32 54 24 54               	xorb	84(%rsp), %r10b
    19d1: 44 0f b6 6c 24 1a            	movzbl	26(%rsp), %r13d
    19d7: 44 0f b6 5c 24 18            	movzbl	24(%rsp), %r11d
    19dd: 31 d3                        	xorl	%edx, %ebx
    19df: 44 89 e2                     	movl	%r12d, %edx
    19e2: 44 32 6c 24 58               	xorb	88(%rsp), %r13b
    19e7: c5 f9 6e e2                  	vmovd	%edx, %xmm4
    19eb: c4 c1 79 6e f9               	vmovd	%r9d, %xmm7
    19f0: c4 e3 51 20 eb 01            	vpinsrb	$1, %ebx, %xmm5, %xmm5
    19f6: 44 32 5c 24 59               	xorb	89(%rsp), %r11b
    19fb: c4 c1 79 6e da               	vmovd	%r10d, %xmm3
    1a00: ba 0f 00 00 00               	movl	$15, %edx
    1a05: 0f b6 74 24 19               	movzbl	25(%rsp), %esi
    1a0a: 44 32 44 24 5d               	xorb	93(%rsp), %r8b
    1a0f: 40 32 74 24 5c               	xorb	92(%rsp), %sil
    1a14: c4 c1 79 6e cd               	vmovd	%r13d, %xmm1
    1a19: 32 4c 24 5f                  	xorb	95(%rsp), %cl
    1a1d: c5 f9 6e 44 24 10            	vmovd	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
    1a23: c5 f9 6e 74 24 0c            	vmovd	12(%rsp), %xmm6         # xmm6 = mem[0],zero,zero,zero
    1a29: c4 e3 41 20 7c 24 0b 01      	vpinsrb	$1, 11(%rsp), %xmm7, %xmm7
    1a31: c4 e3 79 20 c0 01            	vpinsrb	$1, %eax, %xmm0, %xmm0
    1a37: c4 c3 71 20 cb 01            	vpinsrb	$1, %r11d, %xmm1, %xmm1
    1a3d: c5 f9 61 c7                  	vpunpcklwd	%xmm7, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
    1a41: 0f b6 84 24 6f 01 00 00      	movzbl	367(%rsp), %eax
    1a49: c4 e3 61 20 5c 24 0a 01      	vpinsrb	$1, 10(%rsp), %xmm3, %xmm3
    1a51: c4 e3 49 20 74 24 14 01      	vpinsrb	$1, 20(%rsp), %xmm6, %xmm6
    1a59: c5 f1 61 cd                  	vpunpcklwd	%xmm5, %xmm1, %xmm1 # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1],xmm1[2],xmm5[2],xmm1[3],xmm5[3]
    1a5d: c5 e1 61 de                  	vpunpcklwd	%xmm6, %xmm3, %xmm3 # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
    1a61: c5 f9 6e d6                  	vmovd	%esi, %xmm2
    1a65: c5 f9 62 c3                  	vpunpckldq	%xmm3, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
    1a69: c4 c3 69 20 d0 01            	vpinsrb	$1, %r8d, %xmm2, %xmm2
    1a6f: c4 e3 59 20 e1 01            	vpinsrb	$1, %ecx, %xmm4, %xmm4
    1a75: c5 e9 61 d4                  	vpunpcklwd	%xmm4, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3]
    1a79: c5 f1 62 ca                  	vpunpckldq	%xmm2, %xmm1, %xmm1 # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
    1a7d: c5 f9 6c c1                  	vpunpcklqdq	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0]
    1a81: c5 f9 7f 84 24 70 01 00 00   	vmovdqa	%xmm0, 368(%rsp)
    1a8a: 3c ff                        	cmpb	$-1, %al
    1a8c: 74 28                        	je	0x1ab6 <.text+0xa46>
    1a8e: 83 c0 01                     	addl	$1, %eax
    1a91: 88 84 14 60 01 00 00         	movb	%al, 352(%rsp,%rdx)
    1a98: 31 c0                        	xorl	%eax, %eax
    1a9a: e9 e6 f8 ff ff               	jmp	0x1385 <.text+0x315>
    1a9f: 48 8d 3d 9b 05 00 00         	leaq	1435(%rip), %rdi        # 0x2041
    1aa6: 41 bc 01 00 00 00            	movl	$1, %r12d
    1aac: e8 7f f5 ff ff               	callq	0x1030 <puts@plt>
    1ab1: e9 1f f9 ff ff               	jmp	0x13d5 <.text+0x365>
    1ab6: 0f b6 84 24 6e 01 00 00      	movzbl	366(%rsp), %eax
    1abe: c6 84 24 6f 01 00 00 00      	movb	$0, 367(%rsp)
    1ac6: ba 0e 00 00 00               	movl	$14, %edx
    1acb: 3c ff                        	cmpb	$-1, %al
    1acd: 75 bf                        	jne	0x1a8e <.text+0xa1e>
    1acf: 0f b6 84 24 6d 01 00 00      	movzbl	365(%rsp), %eax
    1ad7: c6 84 24 6e 01 00 00 00      	movb	$0, 366(%rsp)
    1adf: ba 0d 00 00 00               	movl	$13, %edx
    1ae4: 3c ff                        	cmpb	$-1, %al
    1ae6: 75 a6                        	jne	0x1a8e <.text+0xa1e>
    1ae8: 0f b6 84 24 6c 01 00 00      	movzbl	364(%rsp), %eax
    1af0: c6 84 24 6d 01 00 00 00      	movb	$0, 365(%rsp)
    1af8: ba 0c 00 00 00               	movl	$12, %edx
    1afd: 3c ff                        	cmpb	$-1, %al
    1aff: 75 8d                        	jne	0x1a8e <.text+0xa1e>
    1b01: 0f b6 84 24 6b 01 00 00      	movzbl	363(%rsp), %eax
    1b09: c6 84 24 6c 01 00 00 00      	movb	$0, 364(%rsp)
    1b11: ba 0b 00 00 00               	movl	$11, %edx
    1b16: 3c ff                        	cmpb	$-1, %al
    1b18: 0f 85 70 ff ff ff            	jne	0x1a8e <.text+0xa1e>
    1b1e: 0f b6 84 24 6a 01 00 00      	movzbl	362(%rsp), %eax
    1b26: c6 84 24 6b 01 00 00 00      	movb	$0, 363(%rsp)
    1b2e: ba 0a 00 00 00               	movl	$10, %edx
    1b33: 3c ff                        	cmpb	$-1, %al
    1b35: 0f 85 53 ff ff ff            	jne	0x1a8e <.text+0xa1e>
    1b3b: 0f b6 84 24 69 01 00 00      	movzbl	361(%rsp), %eax
    1b43: c6 84 24 6a 01 00 00 00      	movb	$0, 362(%rsp)
    1b4b: ba 09 00 00 00               	movl	$9, %edx
    1b50: 3c ff                        	cmpb	$-1, %al
    1b52: 0f 85 36 ff ff ff            	jne	0x1a8e <.text+0xa1e>
    1b58: 0f b6 84 24 68 01 00 00      	movzbl	360(%rsp), %eax
    1b60: c6 84 24 69 01 00 00 00      	movb	$0, 361(%rsp)
    1b68: ba 08 00 00 00               	movl	$8, %edx
    1b6d: 3c ff                        	cmpb	$-1, %al
    1b6f: 0f 85 19 ff ff ff            	jne	0x1a8e <.text+0xa1e>
    1b75: 0f b6 84 24 67 01 00 00      	movzbl	359(%rsp), %eax
    1b7d: c6 84 24 68 01 00 00 00      	movb	$0, 360(%rsp)
    1b85: ba 07 00 00 00               	movl	$7, %edx
    1b8a: 3c ff                        	cmpb	$-1, %al
    1b8c: 0f 85 fc fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1b92: 0f b6 84 24 66 01 00 00      	movzbl	358(%rsp), %eax
    1b9a: c6 84 24 67 01 00 00 00      	movb	$0, 359(%rsp)
    1ba2: ba 06 00 00 00               	movl	$6, %edx
    1ba7: 3c ff                        	cmpb	$-1, %al
    1ba9: 0f 85 df fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1baf: 0f b6 84 24 65 01 00 00      	movzbl	357(%rsp), %eax
    1bb7: c6 84 24 66 01 00 00 00      	movb	$0, 358(%rsp)
    1bbf: ba 05 00 00 00               	movl	$5, %edx
    1bc4: 3c ff                        	cmpb	$-1, %al
    1bc6: 0f 85 c2 fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1bcc: 0f b6 84 24 64 01 00 00      	movzbl	356(%rsp), %eax
    1bd4: c6 84 24 65 01 00 00 00      	movb	$0, 357(%rsp)
    1bdc: ba 04 00 00 00               	movl	$4, %edx
    1be1: 3c ff                        	cmpb	$-1, %al
    1be3: 0f 85 a5 fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1be9: 0f b6 84 24 63 01 00 00      	movzbl	355(%rsp), %eax
    1bf1: c6 84 24 64 01 00 00 00      	movb	$0, 356(%rsp)
    1bf9: ba 03 00 00 00               	movl	$3, %edx
    1bfe: 3c ff                        	cmpb	$-1, %al
    1c00: 0f 85 88 fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1c06: 0f b6 84 24 62 01 00 00      	movzbl	354(%rsp), %eax
    1c0e: c6 84 24 63 01 00 00 00      	movb	$0, 355(%rsp)
    1c16: ba 02 00 00 00               	movl	$2, %edx
    1c1b: 3c ff                        	cmpb	$-1, %al
    1c1d: 0f 85 6b fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1c23: 0f b6 84 24 61 01 00 00      	movzbl	353(%rsp), %eax
    1c2b: c6 84 24 62 01 00 00 00      	movb	$0, 354(%rsp)
    1c33: ba 01 00 00 00               	movl	$1, %edx
    1c38: 3c ff                        	cmpb	$-1, %al
    1c3a: 0f 85 4e fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1c40: 0f b6 84 24 60 01 00 00      	movzbl	352(%rsp), %eax
    1c48: c6 84 24 61 01 00 00 00      	movb	$0, 353(%rsp)
    1c50: 31 d2                        	xorl	%edx, %edx
    1c52: 3c ff                        	cmpb	$-1, %al
    1c54: 0f 85 34 fe ff ff            	jne	0x1a8e <.text+0xa1e>
    1c5a: c6 84 24 60 01 00 00 00      	movb	$0, 352(%rsp)
    1c62: 31 c0                        	xorl	%eax, %eax
    1c64: e9 1c f7 ff ff               	jmp	0x1385 <.text+0x315>
    1c69: e8 e2 f3 ff ff               	callq	0x1050 <__stack_chk_fail@plt>
    1c6e: 66 90                        	nop
    1c70: f3 0f 1e fa                  	endbr64
    1c74: 31 ed                        	xorl	%ebp, %ebp
    1c76: 49 89 d1                     	movq	%rdx, %r9
    1c79: 5e                           	popq	%rsi
    1c7a: 48 89 e2                     	movq	%rsp, %rdx
    1c7d: 48 83 e4 f0                  	andq	$-16, %rsp
    1c81: 50                           	pushq	%rax
    1c82: 54                           	pushq	%rsp
    1c83: 4c 8d 05 56 01 00 00         	leaq	342(%rip), %r8          # 0x1de0 <.text+0xd70>
    1c8a: 48 8d 0d df 00 00 00         	leaq	223(%rip), %rcx         # 0x1d70 <.text+0xd00>
    1c91: 48 8d 3d d8 f3 ff ff         	leaq	-3112(%rip), %rdi       # 0x1070 <.text>
    1c98: ff 15 42 23 00 00            	callq	*9026(%rip)             # 0x3fe0
    1c9e: f4                           	hlt
    1c9f: 90                           	nop
    1ca0: 48 8d 3d a1 23 00 00         	leaq	9121(%rip), %rdi        # 0x4048
    1ca7: 48 8d 05 9a 23 00 00         	leaq	9114(%rip), %rax        # 0x4048
    1cae: 48 39 f8                     	cmpq	%rdi, %rax
    1cb1: 74 15                        	je	0x1cc8 <.text+0xc58>
    1cb3: 48 8b 05 16 23 00 00         	movq	8982(%rip), %rax        # 0x3fd0
    1cba: 48 85 c0                     	testq	%rax, %rax
    1cbd: 74 09                        	je	0x1cc8 <.text+0xc58>
    1cbf: ff e0                        	jmpq	*%rax
    1cc1: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1cc8: c3                           	retq
    1cc9: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1cd0: 48 8d 3d 71 23 00 00         	leaq	9073(%rip), %rdi        # 0x4048
    1cd7: 48 8d 35 6a 23 00 00         	leaq	9066(%rip), %rsi        # 0x4048
    1cde: 48 29 fe                     	subq	%rdi, %rsi
    1ce1: 48 89 f0                     	movq	%rsi, %rax
    1ce4: 48 c1 ee 3f                  	shrq	$63, %rsi
    1ce8: 48 c1 f8 03                  	sarq	$3, %rax
    1cec: 48 01 c6                     	addq	%rax, %rsi
    1cef: 48 d1 fe                     	sarq	%rsi
    1cf2: 74 14                        	je	0x1d08 <.text+0xc98>
    1cf4: 48 8b 05 f5 22 00 00         	movq	8949(%rip), %rax        # 0x3ff0
    1cfb: 48 85 c0                     	testq	%rax, %rax
    1cfe: 74 08                        	je	0x1d08 <.text+0xc98>
    1d00: ff e0                        	jmpq	*%rax
    1d02: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    1d08: c3                           	retq
    1d09: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1d10: f3 0f 1e fa                  	endbr64
    1d14: 80 3d 2d 23 00 00 00         	cmpb	$0, 9005(%rip)          # 0x4048
    1d1b: 75 33                        	jne	0x1d50 <.text+0xce0>
    1d1d: 55                           	pushq	%rbp
    1d1e: 48 83 3d d2 22 00 00 00      	cmpq	$0, 8914(%rip)          # 0x3ff8
    1d26: 48 89 e5                     	movq	%rsp, %rbp
    1d29: 74 0d                        	je	0x1d38 <.text+0xcc8>
    1d2b: 48 8b 3d 0e 23 00 00         	movq	8974(%rip), %rdi        # 0x4040
    1d32: ff 15 c0 22 00 00            	callq	*8896(%rip)             # 0x3ff8
    1d38: e8 63 ff ff ff               	callq	0x1ca0 <.text+0xc30>
    1d3d: c6 05 04 23 00 00 01         	movb	$1, 8964(%rip)          # 0x4048
    1d44: 5d                           	popq	%rbp
    1d45: c3                           	retq
    1d46: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    1d50: c3                           	retq
    1d51: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
    1d5c: 0f 1f 40 00                  	nopl	(%rax)
    1d60: f3 0f 1e fa                  	endbr64
    1d64: e9 67 ff ff ff               	jmp	0x1cd0 <.text+0xc60>
    1d69: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1d70: f3 0f 1e fa                  	endbr64
    1d74: 41 57                        	pushq	%r15
    1d76: 4c 8d 3d 63 20 00 00         	leaq	8291(%rip), %r15        # 0x3de0
    1d7d: 41 56                        	pushq	%r14
    1d7f: 49 89 d6                     	movq	%rdx, %r14
    1d82: 41 55                        	pushq	%r13
    1d84: 49 89 f5                     	movq	%rsi, %r13
    1d87: 41 54                        	pushq	%r12
    1d89: 41 89 fc                     	movl	%edi, %r12d
    1d8c: 55                           	pushq	%rbp
    1d8d: 48 8d 2d 54 20 00 00         	leaq	8276(%rip), %rbp        # 0x3de8
    1d94: 53                           	pushq	%rbx
    1d95: 4c 29 fd                     	subq	%r15, %rbp
    1d98: 48 83 ec 08                  	subq	$8, %rsp
    1d9c: e8 5f f2 ff ff               	callq	0x1000 <.init>
    1da1: 48 c1 fd 03                  	sarq	$3, %rbp
    1da5: 74 1f                        	je	0x1dc6 <.text+0xd56>
    1da7: 31 db                        	xorl	%ebx, %ebx
    1da9: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1db0: 4c 89 f2                     	movq	%r14, %rdx
    1db3: 4c 89 ee                     	movq	%r13, %rsi
    1db6: 44 89 e7                     	movl	%r12d, %edi
    1db9: 41 ff 14 df                  	callq	*(%r15,%rbx,8)
    1dbd: 48 83 c3 01                  	addq	$1, %rbx
    1dc1: 48 39 dd                     	cmpq	%rbx, %rbp
    1dc4: 75 ea                        	jne	0x1db0 <.text+0xd40>
    1dc6: 48 83 c4 08                  	addq	$8, %rsp
    1dca: 5b                           	popq	%rbx
    1dcb: 5d                           	popq	%rbp
    1dcc: 41 5c                        	popq	%r12
    1dce: 41 5d                        	popq	%r13
    1dd0: 41 5e                        	popq	%r14
    1dd2: 41 5f                        	popq	%r15
    1dd4: c3                           	retq
    1dd5: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
    1de0: f3 0f 1e fa                  	endbr64
    1de4: c3                           	retq

Disassembly of section .fini:

0000000000001de8 <.fini>:
    1de8: f3 0f 1e fa                  	endbr64
    1dec: 48 83 ec 08                  	subq	$8, %rsp
    1df0: 48 83 c4 08                  	addq	$8, %rsp
    1df4: c3                           	retq
