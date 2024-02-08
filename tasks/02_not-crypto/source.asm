
not-crypto:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <memcmp@plt+0x2f88>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <puts@plt-0x1a>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <memcmp@plt+0x2fa8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <memcmp@plt+0x2fb0>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <memcmp@plt+0x2fb8>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

0000000000001040 <fread@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <memcmp@plt+0x2fc0>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <memcmp@plt+0x2fc8>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

0000000000001060 <memcmp@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <memcmp@plt+0x2fd0>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

Disassembly of section .text:

0000000000001070 <.text>:
    1070:	41 57                	push   %r15
    1072:	48 8d 3d 8f 0f 00 00 	lea    0xf8f(%rip),%rdi        # 2008 <memcmp@plt+0xfa8>
    1079:	41 56                	push   %r14
    107b:	41 55                	push   %r13
    107d:	41 54                	push   %r12
    107f:	55                   	push   %rbp
    1080:	53                   	push   %rbx
    1081:	48 81 ec d8 01 00 00 	sub    $0x1d8,%rsp
    1088:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    108f:	00 00
    1091:	48 89 84 24 c8 01 00 	mov    %rax,0x1c8(%rsp)
    1098:	00
    1099:	31 c0                	xor    %eax,%eax
    109b:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
    10a2:	00
    10a3:	e8 88 ff ff ff       	callq  1030 <puts@plt>
    10a8:	c5 f9 6f 05 f0 10 00 	vmovdqa 0x10f0(%rip),%xmm0        # 21a0 <memcmp@plt+0x1140>
    10af:	00
    10b0:	48 89 d8             	mov    %rbx,%rax
    10b3:	bf 98 ff ff ff       	mov    $0xffffff98,%edi
    10b8:	be 32 00 00 00       	mov    $0x32,%esi
    10bd:	b9 6c 00 00 00       	mov    $0x6c,%ecx
    10c2:	ba 1c 00 00 00       	mov    $0x1c,%edx
    10c7:	c5 f9 7f 84 24 b0 00 	vmovdqa %xmm0,0xb0(%rsp)
    10ce:	00 00
    10d0:	41 b8 04 00 00 00    	mov    $0x4,%r8d
    10d6:	4c 8d 0d c3 0f 00 00 	lea    0xfc3(%rip),%r9        # 20a0 <memcmp@plt+0x1040>
    10dd:	4c 8d 15 9c 0f 00 00 	lea    0xf9c(%rip),%r10        # 2080 <memcmp@plt+0x1020>
    10e4:	0f 1f 40 00          	nopl   0x0(%rax)
    10e8:	41 f6 c0 03          	test   $0x3,%r8b
    10ec:	75 2f                	jne    111d <memcmp@plt+0xbd>
    10ee:	40 0f b6 f6          	movzbl %sil,%esi
    10f2:	0f b6 c9             	movzbl %cl,%ecx
    10f5:	0f b6 d2             	movzbl %dl,%edx
    10f8:	40 0f b6 ff          	movzbl %dil,%edi
    10fc:	45 0f b6 1c 31       	movzbl (%r9,%rsi,1),%r11d
    1101:	41 0f b6 34 09       	movzbl (%r9,%rcx,1),%esi
    1106:	41 0f b6 0c 11       	movzbl (%r9,%rdx,1),%ecx
    110b:	41 0f b6 14 39       	movzbl (%r9,%rdi,1),%edx
    1110:	44 89 c7             	mov    %r8d,%edi
    1113:	c1 ef 02             	shr    $0x2,%edi
    1116:	45 32 1c 3a          	xor    (%r10,%rdi,1),%r11b
    111a:	44 89 df             	mov    %r11d,%edi
    111d:	40 32 38             	xor    (%rax),%dil
    1120:	41 83 c0 01          	add    $0x1,%r8d
    1124:	48 83 c0 04          	add    $0x4,%rax
    1128:	40 32 70 fd          	xor    -0x3(%rax),%sil
    112c:	32 48 fe             	xor    -0x2(%rax),%cl
    112f:	32 50 ff             	xor    -0x1(%rax),%dl
    1132:	40 88 78 0c          	mov    %dil,0xc(%rax)
    1136:	40 88 70 0d          	mov    %sil,0xd(%rax)
    113a:	88 48 0e             	mov    %cl,0xe(%rax)
    113d:	88 50 0f             	mov    %dl,0xf(%rax)
    1140:	41 83 f8 2c          	cmp    $0x2c,%r8d
    1144:	75 a2                	jne    10e8 <memcmp@plt+0x88>
    1146:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    114b:	ba 40 00 00 00       	mov    $0x40,%edx
    1150:	be 01 00 00 00       	mov    $0x1,%esi
    1155:	48 8b 05 7c 2e 00 00 	mov    0x2e7c(%rip),%rax        # 3fd8 <memcmp@plt+0x2f78>
    115c:	c5 f9 6f 05 4c 10 00 	vmovdqa 0x104c(%rip),%xmm0        # 21b0 <memcmp@plt+0x1150>
    1163:	00
    1164:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
    1169:	48 81 c3 a0 00 00 00 	add    $0xa0,%rbx
    1170:	c5 f9 7f 84 24 60 01 	vmovdqa %xmm0,0x160(%rsp)
    1177:	00 00
    1179:	48 8b 08             	mov    (%rax),%rcx
    117c:	e8 bf fe ff ff       	callq  1040 <fread@plt>
    1181:	0f b6 84 24 b0 00 00 	movzbl 0xb0(%rsp),%eax
    1188:	00
    1189:	48 8d 3d 10 0f 00 00 	lea    0xf10(%rip),%rdi        # 20a0 <memcmp@plt+0x1040>
    1190:	c5 f9 6f 05 28 10 00 	vmovdqa 0x1028(%rip),%xmm0        # 21c0 <memcmp@plt+0x1160>
    1197:	00
    1198:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
    119f:	00 00
    11a1:	c5 f9 6f 05 27 10 00 	vmovdqa 0x1027(%rip),%xmm0        # 21d0 <memcmp@plt+0x1170>
    11a8:	00
    11a9:	88 44 24 60          	mov    %al,0x60(%rsp)
    11ad:	0f b6 84 24 b1 00 00 	movzbl 0xb1(%rsp),%eax
    11b4:	00
    11b5:	c5 f9 7f 84 24 90 01 	vmovdqa %xmm0,0x190(%rsp)
    11bc:	00 00
    11be:	c5 f9 6f 05 1a 10 00 	vmovdqa 0x101a(%rip),%xmm0        # 21e0 <memcmp@plt+0x1180>
    11c5:	00
    11c6:	c5 f9 7f 84 24 a0 01 	vmovdqa %xmm0,0x1a0(%rsp)
    11cd:	00 00
    11cf:	c5 f9 6f 05 19 10 00 	vmovdqa 0x1019(%rip),%xmm0        # 21f0 <memcmp@plt+0x1190>
    11d6:	00
    11d7:	88 44 24 61          	mov    %al,0x61(%rsp)
    11db:	0f b6 84 24 b2 00 00 	movzbl 0xb2(%rsp),%eax
    11e2:	00
    11e3:	c5 f9 7f 84 24 b0 01 	vmovdqa %xmm0,0x1b0(%rsp)
    11ea:	00 00
    11ec:	88 44 24 62          	mov    %al,0x62(%rsp)
    11f0:	0f b6 84 24 b3 00 00 	movzbl 0xb3(%rsp),%eax
    11f7:	00
    11f8:	88 44 24 63          	mov    %al,0x63(%rsp)
    11fc:	0f b6 84 24 b4 00 00 	movzbl 0xb4(%rsp),%eax
    1203:	00
    1204:	88 44 24 64          	mov    %al,0x64(%rsp)
    1208:	0f b6 84 24 b5 00 00 	movzbl 0xb5(%rsp),%eax
    120f:	00
    1210:	88 44 24 65          	mov    %al,0x65(%rsp)
    1214:	0f b6 84 24 b6 00 00 	movzbl 0xb6(%rsp),%eax
    121b:	00
    121c:	88 44 24 66          	mov    %al,0x66(%rsp)
    1220:	0f b6 84 24 b7 00 00 	movzbl 0xb7(%rsp),%eax
    1227:	00
    1228:	88 44 24 67          	mov    %al,0x67(%rsp)
    122c:	0f b6 84 24 b8 00 00 	movzbl 0xb8(%rsp),%eax
    1233:	00
    1234:	88 44 24 68          	mov    %al,0x68(%rsp)
    1238:	0f b6 84 24 b9 00 00 	movzbl 0xb9(%rsp),%eax
    123f:	00
    1240:	88 44 24 69          	mov    %al,0x69(%rsp)
    1244:	0f b6 84 24 ba 00 00 	movzbl 0xba(%rsp),%eax
    124b:	00
    124c:	88 44 24 6a          	mov    %al,0x6a(%rsp)
    1250:	0f b6 84 24 bb 00 00 	movzbl 0xbb(%rsp),%eax
    1257:	00
    1258:	88 44 24 6b          	mov    %al,0x6b(%rsp)
    125c:	0f b6 84 24 bc 00 00 	movzbl 0xbc(%rsp),%eax
    1263:	00
    1264:	88 44 24 6c          	mov    %al,0x6c(%rsp)
    1268:	0f b6 84 24 bd 00 00 	movzbl 0xbd(%rsp),%eax
    126f:	00
    1270:	88 44 24 6d          	mov    %al,0x6d(%rsp)
    1274:	0f b6 84 24 be 00 00 	movzbl 0xbe(%rsp),%eax
    127b:	00
    127c:	88 44 24 6e          	mov    %al,0x6e(%rsp)
    1280:	0f b6 84 24 bf 00 00 	movzbl 0xbf(%rsp),%eax
    1287:	00
    1288:	88 44 24 6f          	mov    %al,0x6f(%rsp)
    128c:	0f b6 84 24 50 01 00 	movzbl 0x150(%rsp),%eax
    1293:	00
    1294:	88 44 24 50          	mov    %al,0x50(%rsp)
    1298:	0f b6 84 24 51 01 00 	movzbl 0x151(%rsp),%eax
    129f:	00
    12a0:	88 44 24 51          	mov    %al,0x51(%rsp)
    12a4:	0f b6 84 24 52 01 00 	movzbl 0x152(%rsp),%eax
    12ab:	00
    12ac:	88 44 24 52          	mov    %al,0x52(%rsp)
    12b0:	0f b6 84 24 53 01 00 	movzbl 0x153(%rsp),%eax
    12b7:	00
    12b8:	88 44 24 53          	mov    %al,0x53(%rsp)
    12bc:	0f b6 84 24 54 01 00 	movzbl 0x154(%rsp),%eax
    12c3:	00
    12c4:	88 44 24 54          	mov    %al,0x54(%rsp)
    12c8:	0f b6 84 24 55 01 00 	movzbl 0x155(%rsp),%eax
    12cf:	00
    12d0:	88 44 24 55          	mov    %al,0x55(%rsp)
    12d4:	0f b6 84 24 56 01 00 	movzbl 0x156(%rsp),%eax
    12db:	00
    12dc:	88 44 24 56          	mov    %al,0x56(%rsp)
    12e0:	0f b6 84 24 57 01 00 	movzbl 0x157(%rsp),%eax
    12e7:	00
    12e8:	88 44 24 57          	mov    %al,0x57(%rsp)
    12ec:	0f b6 84 24 58 01 00 	movzbl 0x158(%rsp),%eax
    12f3:	00
    12f4:	88 44 24 58          	mov    %al,0x58(%rsp)
    12f8:	0f b6 84 24 59 01 00 	movzbl 0x159(%rsp),%eax
    12ff:	00
    1300:	88 44 24 59          	mov    %al,0x59(%rsp)
    1304:	0f b6 84 24 5a 01 00 	movzbl 0x15a(%rsp),%eax
    130b:	00
    130c:	88 44 24 5a          	mov    %al,0x5a(%rsp)
    1310:	0f b6 84 24 5b 01 00 	movzbl 0x15b(%rsp),%eax
    1317:	00
    1318:	88 44 24 5b          	mov    %al,0x5b(%rsp)
    131c:	0f b6 84 24 5c 01 00 	movzbl 0x15c(%rsp),%eax
    1323:	00
    1324:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
    1329:	88 44 24 5c          	mov    %al,0x5c(%rsp)
    132d:	0f b6 84 24 5d 01 00 	movzbl 0x15d(%rsp),%eax
    1334:	00
    1335:	88 44 24 5d          	mov    %al,0x5d(%rsp)
    1339:	0f b6 84 24 5e 01 00 	movzbl 0x15e(%rsp),%eax
    1340:	00
    1341:	88 44 24 5e          	mov    %al,0x5e(%rsp)
    1345:	0f b6 84 24 5f 01 00 	movzbl 0x15f(%rsp),%eax
    134c:	00
    134d:	88 44 24 5f          	mov    %al,0x5f(%rsp)
    1351:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
    1358:	00
    1359:	49 89 c4             	mov    %rax,%r12
    135c:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1361:	48 8d 84 24 c0 01 00 	lea    0x1c0(%rsp),%rax
    1368:	00
    1369:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
    136e:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    1373:	b8 10 00 00 00       	mov    $0x10,%eax
    1378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    137f:	00
    1380:	83 f8 10             	cmp    $0x10,%eax
    1383:	74 7c                	je     1401 <memcmp@plt+0x3a1>
    1385:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    138a:	48 63 d0             	movslq %eax,%rdx
    138d:	83 c0 01             	add    $0x1,%eax
    1390:	0f b6 94 14 70 01 00 	movzbl 0x170(%rsp,%rdx,1),%edx
    1397:	00
    1398:	30 13                	xor    %dl,(%rbx)
    139a:	48 83 c3 01          	add    $0x1,%rbx
    139e:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    13a3:	48 39 5c 24 30       	cmp    %rbx,0x30(%rsp)
    13a8:	75 d6                	jne    1380 <memcmp@plt+0x320>
    13aa:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
    13af:	ba 40 00 00 00       	mov    $0x40,%edx
    13b4:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    13b9:	e8 a2 fc ff ff       	callq  1060 <memcmp@plt>
    13be:	41 89 c4             	mov    %eax,%r12d
    13c1:	85 c0                	test   %eax,%eax
    13c3:	0f 85 d6 06 00 00    	jne    1a9f <memcmp@plt+0xa3f>
    13c9:	48 8d 3d 87 0c 00 00 	lea    0xc87(%rip),%rdi        # 2057 <memcmp@plt+0xff7>
    13d0:	e8 5b fc ff ff       	callq  1030 <puts@plt>
    13d5:	48 8b 84 24 c8 01 00 	mov    0x1c8(%rsp),%rax
    13dc:	00
    13dd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    13e4:	00 00
    13e6:	0f 85 7d 08 00 00    	jne    1c69 <memcmp@plt+0xc09>
    13ec:	48 81 c4 d8 01 00 00 	add    $0x1d8,%rsp
    13f3:	44 89 e0             	mov    %r12d,%eax
    13f6:	5b                   	pop    %rbx
    13f7:	5d                   	pop    %rbp
    13f8:	41 5c                	pop    %r12
    13fa:	41 5d                	pop    %r13
    13fc:	41 5e                	pop    %r14
    13fe:	41 5f                	pop    %r15
    1400:	c3                   	retq
    1401:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
    1406:	4c 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%r15
    140d:	00
    140e:	32 84 24 60 01 00 00 	xor    0x160(%rsp),%al
    1415:	c5 f9 6f a4 24 60 01 	vmovdqa 0x160(%rsp),%xmm4
    141c:	00 00
    141e:	0f b6 c0             	movzbl %al,%eax
    1421:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    1425:	88 44 24 10          	mov    %al,0x10(%rsp)
    1429:	c4 e3 79 14 e0 04    	vpextrb $0x4,%xmm4,%eax
    142f:	32 44 24 64          	xor    0x64(%rsp),%al
    1433:	0f b6 c0             	movzbl %al,%eax
    1436:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    143a:	88 44 24 0c          	mov    %al,0xc(%rsp)
    143e:	0f b6 44 24 68       	movzbl 0x68(%rsp),%eax
    1443:	32 84 24 68 01 00 00 	xor    0x168(%rsp),%al
    144a:	0f b6 c0             	movzbl %al,%eax
    144d:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    1451:	88 44 24 1a          	mov    %al,0x1a(%rsp)
    1455:	c4 e3 79 14 e0 0c    	vpextrb $0xc,%xmm4,%eax
    145b:	32 44 24 6c          	xor    0x6c(%rsp),%al
    145f:	0f b6 c0             	movzbl %al,%eax
    1462:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    1466:	88 44 24 19          	mov    %al,0x19(%rsp)
    146a:	c4 e3 79 14 e0 01    	vpextrb $0x1,%xmm4,%eax
    1470:	32 44 24 61          	xor    0x61(%rsp),%al
    1474:	0f b6 c0             	movzbl %al,%eax
    1477:	44 0f b6 04 07       	movzbl (%rdi,%rax,1),%r8d
    147c:	c4 e3 79 14 e0 05    	vpextrb $0x5,%xmm4,%eax
    1482:	32 44 24 65          	xor    0x65(%rsp),%al
    1486:	0f b6 c0             	movzbl %al,%eax
    1489:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    148d:	88 44 24 0b          	mov    %al,0xb(%rsp)
    1491:	c4 e3 79 14 e0 09    	vpextrb $0x9,%xmm4,%eax
    1497:	32 44 24 69          	xor    0x69(%rsp),%al
    149b:	0f b6 c0             	movzbl %al,%eax
    149e:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    14a2:	88 44 24 0a          	mov    %al,0xa(%rsp)
    14a6:	c4 e3 79 14 e0 0d    	vpextrb $0xd,%xmm4,%eax
    14ac:	32 44 24 6d          	xor    0x6d(%rsp),%al
    14b0:	0f b6 c0             	movzbl %al,%eax
    14b3:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    14b7:	88 44 24 18          	mov    %al,0x18(%rsp)
    14bb:	c4 e3 79 14 e0 02    	vpextrb $0x2,%xmm4,%eax
    14c1:	32 44 24 62          	xor    0x62(%rsp),%al
    14c5:	0f b6 c0             	movzbl %al,%eax
    14c8:	0f b6 34 07          	movzbl (%rdi,%rax,1),%esi
    14cc:	c4 e3 79 14 e0 06    	vpextrb $0x6,%xmm4,%eax
    14d2:	32 44 24 66          	xor    0x66(%rsp),%al
    14d6:	0f b6 c0             	movzbl %al,%eax
    14d9:	44 0f b6 24 07       	movzbl (%rdi,%rax,1),%r12d
    14de:	c4 e3 79 14 e0 0a    	vpextrb $0xa,%xmm4,%eax
    14e4:	32 44 24 6a          	xor    0x6a(%rsp),%al
    14e8:	0f b6 c0             	movzbl %al,%eax
    14eb:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    14ef:	88 44 24 17          	mov    %al,0x17(%rsp)
    14f3:	c4 e3 79 14 e0 0e    	vpextrb $0xe,%xmm4,%eax
    14f9:	32 44 24 6e          	xor    0x6e(%rsp),%al
    14fd:	44 88 64 24 1c       	mov    %r12b,0x1c(%rsp)
    1502:	44 88 44 24 14       	mov    %r8b,0x14(%rsp)
    1507:	0f b6 c0             	movzbl %al,%eax
    150a:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    150e:	88 44 24 16          	mov    %al,0x16(%rsp)
    1512:	c4 e3 79 14 e0 03    	vpextrb $0x3,%xmm4,%eax
    1518:	32 44 24 63          	xor    0x63(%rsp),%al
    151c:	0f b6 c0             	movzbl %al,%eax
    151f:	44 0f b6 34 07       	movzbl (%rdi,%rax,1),%r14d
    1524:	c4 e3 79 14 e0 07    	vpextrb $0x7,%xmm4,%eax
    152a:	32 44 24 67          	xor    0x67(%rsp),%al
    152e:	44 88 74 24 1b       	mov    %r14b,0x1b(%rsp)
    1533:	0f b6 c0             	movzbl %al,%eax
    1536:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
    153a:	c4 e3 79 14 e0 0b    	vpextrb $0xb,%xmm4,%eax
    1540:	32 44 24 6b          	xor    0x6b(%rsp),%al
    1544:	0f b6 c0             	movzbl %al,%eax
    1547:	0f b6 0c 07          	movzbl (%rdi,%rax,1),%ecx
    154b:	c4 e3 79 14 e0 0f    	vpextrb $0xf,%xmm4,%eax
    1551:	32 44 24 6f          	xor    0x6f(%rsp),%al
    1555:	0f b6 c0             	movzbl %al,%eax
    1558:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    155c:	88 44 24 15          	mov    %al,0x15(%rsp)
    1560:	44 0f b6 74 24 0b    	movzbl 0xb(%rsp),%r14d
    1566:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
    156b:	44 0f b6 4c 24 10    	movzbl 0x10(%rsp),%r9d
    1571:	44 0f b6 54 24 17    	movzbl 0x17(%rsp),%r10d
    1577:	45 89 f3             	mov    %r14d,%r11d
    157a:	0f b6 6c 24 1b       	movzbl 0x1b(%rsp),%ebp
    157f:	89 c3                	mov    %eax,%ebx
    1581:	45 31 cb             	xor    %r9d,%r11d
    1584:	44 31 d3             	xor    %r10d,%ebx
    1587:	45 89 d0             	mov    %r10d,%r8d
    158a:	44 0f b6 54 24 0a    	movzbl 0xa(%rsp),%r10d
    1590:	45 89 dc             	mov    %r11d,%r12d
    1593:	45 31 f0             	xor    %r14d,%r8d
    1596:	44 88 5c 24 28       	mov    %r11b,0x28(%rsp)
    159b:	41 89 c6             	mov    %eax,%r14d
    159e:	41 31 dc             	xor    %ebx,%r12d
    15a1:	44 0f b6 5c 24 0c    	movzbl 0xc(%rsp),%r11d
    15a7:	45 31 ce             	xor    %r9d,%r14d
    15aa:	41 89 e9             	mov    %ebp,%r9d
    15ad:	88 5c 24 1f          	mov    %bl,0x1f(%rsp)
    15b1:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
    15b6:	44 88 44 24 29       	mov    %r8b,0x29(%rsp)
    15bb:	45 89 d0             	mov    %r10d,%r8d
    15be:	44 88 74 24 2a       	mov    %r14b,0x2a(%rsp)
    15c3:	45 31 d8             	xor    %r11d,%r8d
    15c6:	41 31 c1             	xor    %eax,%r9d
    15c9:	44 88 44 24 2b       	mov    %r8b,0x2b(%rsp)
    15ce:	45 89 cd             	mov    %r9d,%r13d
    15d1:	45 89 c1             	mov    %r8d,%r9d
    15d4:	45 31 e9             	xor    %r13d,%r9d
    15d7:	44 88 6c 24 1e       	mov    %r13b,0x1e(%rsp)
    15dc:	41 89 ed             	mov    %ebp,%r13d
    15df:	0f b6 6c 24 1a       	movzbl 0x1a(%rsp),%ebp
    15e4:	45 89 ce             	mov    %r9d,%r14d
    15e7:	41 89 c1             	mov    %eax,%r9d
    15ea:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
    15ef:	45 31 dd             	xor    %r11d,%r13d
    15f2:	45 31 d1             	xor    %r10d,%r9d
    15f5:	41 89 d2             	mov    %edx,%r10d
    15f8:	44 88 4c 24 2c       	mov    %r9b,0x2c(%rsp)
    15fd:	41 31 f2             	xor    %esi,%r10d
    1600:	41 89 c1             	mov    %eax,%r9d
    1603:	41 31 e9             	xor    %ebp,%r9d
    1606:	31 d5                	xor    %edx,%ebp
    1608:	44 89 cb             	mov    %r9d,%ebx
    160b:	45 89 d1             	mov    %r10d,%r9d
    160e:	41 89 c2             	mov    %eax,%r10d
    1611:	41 89 db             	mov    %ebx,%r11d
    1614:	41 31 f2             	xor    %esi,%r10d
    1617:	88 5c 24 2d          	mov    %bl,0x2d(%rsp)
    161b:	0f b6 5c 24 1c       	movzbl 0x1c(%rsp),%ebx
    1620:	45 31 cb             	xor    %r9d,%r11d
    1623:	44 88 54 24 2e       	mov    %r10b,0x2e(%rsp)
    1628:	44 0f b6 54 24 19    	movzbl 0x19(%rsp),%r10d
    162e:	44 88 5c 24 1d       	mov    %r11b,0x1d(%rsp)
    1633:	44 0f b6 5c 24 14    	movzbl 0x14(%rsp),%r11d
    1639:	41 89 d8             	mov    %ebx,%r8d
    163c:	41 31 c8             	xor    %ecx,%r8d
    163f:	44 89 d8             	mov    %r11d,%eax
    1642:	44 31 db             	xor    %r11d,%ebx
    1645:	45 89 d3             	mov    %r10d,%r11d
    1648:	44 31 d0             	xor    %r10d,%eax
    164b:	45 89 ea             	mov    %r13d,%r10d
    164e:	45 01 ed             	add    %r13d,%r13d
    1651:	41 c0 ea 07          	shr    $0x7,%r10b
    1655:	41 31 cb             	xor    %ecx,%r11d
    1658:	88 44 24 2f          	mov    %al,0x2f(%rsp)
    165c:	44 31 c0             	xor    %r8d,%eax
    165f:	47 8d 14 52          	lea    (%r10,%r10,2),%r10d
    1663:	47 8d 14 d2          	lea    (%r10,%r10,8),%r10d
    1667:	45 31 ea             	xor    %r13d,%r10d
    166a:	45 0f b6 6f 07       	movzbl 0x7(%r15),%r13d
    166f:	45 31 f5             	xor    %r14d,%r13d
    1672:	44 32 6c 24 1b       	xor    0x1b(%rsp),%r13b
    1677:	45 31 d5             	xor    %r10d,%r13d
    167a:	45 89 ca             	mov    %r9d,%r10d
    167d:	45 01 c9             	add    %r9d,%r9d
    1680:	41 c0 ea 07          	shr    $0x7,%r10b
    1684:	45 0f b6 ed          	movzbl %r13b,%r13d
    1688:	47 8d 14 52          	lea    (%r10,%r10,2),%r10d
    168c:	47 8d 14 d2          	lea    (%r10,%r10,8),%r10d
    1690:	45 31 d1             	xor    %r10d,%r9d
    1693:	44 0f b6 54 24 1d    	movzbl 0x1d(%rsp),%r10d
    1699:	45 32 57 0a          	xor    0xa(%r15),%r10b
    169d:	44 31 d6             	xor    %r10d,%esi
    16a0:	45 89 ca             	mov    %r9d,%r10d
    16a3:	41 31 f2             	xor    %esi,%r10d
    16a6:	89 ee                	mov    %ebp,%esi
    16a8:	40 c0 ee 07          	shr    $0x7,%sil
    16ac:	01 ed                	add    %ebp,%ebp
    16ae:	8d 34 76             	lea    (%rsi,%rsi,2),%esi
    16b1:	8d 34 f6             	lea    (%rsi,%rsi,8),%esi
    16b4:	31 ee                	xor    %ebp,%esi
    16b6:	0f b6 6c 24 1d       	movzbl 0x1d(%rsp),%ebp
    16bb:	41 32 6f 0b          	xor    0xb(%r15),%bpl
    16bf:	41 89 e9             	mov    %ebp,%r9d
    16c2:	44 31 ca             	xor    %r9d,%edx
    16c5:	31 d6                	xor    %edx,%esi
    16c7:	89 da                	mov    %ebx,%edx
    16c9:	01 db                	add    %ebx,%ebx
    16cb:	89 f5                	mov    %esi,%ebp
    16cd:	41 0f b6 77 0d       	movzbl 0xd(%r15),%esi
    16d2:	c0 ea 07             	shr    $0x7,%dl
    16d5:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    16d8:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    16db:	31 da                	xor    %ebx,%edx
    16dd:	31 c6                	xor    %eax,%esi
    16df:	40 32 74 24 14       	xor    0x14(%rsp),%sil
    16e4:	31 f2                	xor    %esi,%edx
    16e6:	89 d3                	mov    %edx,%ebx
    16e8:	44 89 c2             	mov    %r8d,%edx
    16eb:	45 01 c0             	add    %r8d,%r8d
    16ee:	c0 ea 07             	shr    $0x7,%dl
    16f1:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    16f4:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    16f7:	41 31 d0             	xor    %edx,%r8d
    16fa:	41 0f b6 57 0e       	movzbl 0xe(%r15),%edx
    16ff:	41 0f b6 77 0f       	movzbl 0xf(%r15),%esi
    1704:	44 0f b6 4c 24 2d    	movzbl 0x2d(%rsp),%r9d
    170a:	31 c2                	xor    %eax,%edx
    170c:	32 54 24 1c          	xor    0x1c(%rsp),%dl
    1710:	31 c6                	xor    %eax,%esi
    1712:	31 f1                	xor    %esi,%ecx
    1714:	41 0f b6 37          	movzbl (%r15),%esi
    1718:	41 31 d0             	xor    %edx,%r8d
    171b:	44 89 da             	mov    %r11d,%edx
    171e:	45 01 db             	add    %r11d,%r11d
    1721:	c0 ea 07             	shr    $0x7,%dl
    1724:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    1727:	44 31 e6             	xor    %r12d,%esi
    172a:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    172d:	44 31 da             	xor    %r11d,%edx
    1730:	31 ca                	xor    %ecx,%edx
    1732:	0f b6 4c 24 28       	movzbl 0x28(%rsp),%ecx
    1737:	41 89 d3             	mov    %edx,%r11d
    173a:	89 ca                	mov    %ecx,%edx
    173c:	01 c9                	add    %ecx,%ecx
    173e:	c0 ea 07             	shr    $0x7,%dl
    1741:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    1744:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    1747:	31 ca                	xor    %ecx,%edx
    1749:	0f b6 4c 24 10       	movzbl 0x10(%rsp),%ecx
    174e:	31 f1                	xor    %esi,%ecx
    1750:	0f b6 74 24 1d       	movzbl 0x1d(%rsp),%esi
    1755:	31 d1                	xor    %edx,%ecx
    1757:	0f b6 c9             	movzbl %cl,%ecx
    175a:	0f b6 14 0f          	movzbl (%rdi,%rcx,1),%edx
    175e:	0f b6 4c 24 2b       	movzbl 0x2b(%rsp),%ecx
    1763:	88 54 24 10          	mov    %dl,0x10(%rsp)
    1767:	89 ca                	mov    %ecx,%edx
    1769:	01 c9                	add    %ecx,%ecx
    176b:	c0 ea 07             	shr    $0x7,%dl
    176e:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    1771:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    1774:	31 ca                	xor    %ecx,%edx
    1776:	41 0f b6 4f 04       	movzbl 0x4(%r15),%ecx
    177b:	41 32 47 0c          	xor    0xc(%r15),%al
    177f:	32 44 24 19          	xor    0x19(%rsp),%al
    1783:	44 31 f1             	xor    %r14d,%ecx
    1786:	32 4c 24 0c          	xor    0xc(%rsp),%cl
    178a:	31 d1                	xor    %edx,%ecx
    178c:	0f b6 c9             	movzbl %cl,%ecx
    178f:	0f b6 14 0f          	movzbl (%rdi,%rcx,1),%edx
    1793:	43 8d 0c 09          	lea    (%r9,%r9,1),%ecx
    1797:	88 54 24 0c          	mov    %dl,0xc(%rsp)
    179b:	44 89 ca             	mov    %r9d,%edx
    179e:	44 0f b6 4c 24 2f    	movzbl 0x2f(%rsp),%r9d
    17a4:	c0 ea 07             	shr    $0x7,%dl
    17a7:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    17aa:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    17ad:	31 ca                	xor    %ecx,%edx
    17af:	41 0f b6 4f 08       	movzbl 0x8(%r15),%ecx
    17b4:	31 f1                	xor    %esi,%ecx
    17b6:	32 4c 24 1a          	xor    0x1a(%rsp),%cl
    17ba:	31 d1                	xor    %edx,%ecx
    17bc:	0f b6 c9             	movzbl %cl,%ecx
    17bf:	0f b6 14 0f          	movzbl (%rdi,%rcx,1),%edx
    17c3:	43 8d 0c 09          	lea    (%r9,%r9,1),%ecx
    17c7:	88 54 24 1a          	mov    %dl,0x1a(%rsp)
    17cb:	44 89 ca             	mov    %r9d,%edx
    17ce:	c0 ea 07             	shr    $0x7,%dl
    17d1:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    17d4:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    17d7:	31 d1                	xor    %edx,%ecx
    17d9:	31 c8                	xor    %ecx,%eax
    17db:	0f b6 c8             	movzbl %al,%ecx
    17de:	0f b6 14 0f          	movzbl (%rdi,%rcx,1),%edx
    17e2:	88 54 24 19          	mov    %dl,0x19(%rsp)
    17e6:	0f b6 54 24 29       	movzbl 0x29(%rsp),%edx
    17eb:	41 89 d1             	mov    %edx,%r9d
    17ee:	01 d2                	add    %edx,%edx
    17f0:	41 c0 e9 07          	shr    $0x7,%r9b
    17f4:	44 89 c8             	mov    %r9d,%eax
    17f7:	44 0f b6 4c 24 2c    	movzbl 0x2c(%rsp),%r9d
    17fd:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1800:	8d 04 c0             	lea    (%rax,%rax,8),%eax
    1803:	31 d0                	xor    %edx,%eax
    1805:	41 0f b6 57 01       	movzbl 0x1(%r15),%edx
    180a:	44 31 e2             	xor    %r12d,%edx
    180d:	32 54 24 0b          	xor    0xb(%rsp),%dl
    1811:	31 c2                	xor    %eax,%edx
    1813:	0f b6 d2             	movzbl %dl,%edx
    1816:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
    181a:	88 54 24 14          	mov    %dl,0x14(%rsp)
    181e:	44 89 ca             	mov    %r9d,%edx
    1821:	c0 ea 07             	shr    $0x7,%dl
    1824:	89 d0                	mov    %edx,%eax
    1826:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1829:	8d 14 c0             	lea    (%rax,%rax,8),%edx
    182c:	43 8d 04 09          	lea    (%r9,%r9,1),%eax
    1830:	45 0f b6 ca          	movzbl %r10b,%r9d
    1834:	31 d0                	xor    %edx,%eax
    1836:	41 0f b6 57 05       	movzbl 0x5(%r15),%edx
    183b:	44 31 f2             	xor    %r14d,%edx
    183e:	32 54 24 0a          	xor    0xa(%rsp),%dl
    1842:	31 c2                	xor    %eax,%edx
    1844:	0f b6 d2             	movzbl %dl,%edx
    1847:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
    184b:	0f b6 4c 24 2e       	movzbl 0x2e(%rsp),%ecx
    1850:	41 32 77 09          	xor    0x9(%r15),%sil
    1854:	88 54 24 0b          	mov    %dl,0xb(%rsp)
    1858:	8d 04 09             	lea    (%rcx,%rcx,1),%eax
    185b:	89 ca                	mov    %ecx,%edx
    185d:	0f b6 4c 24 1e       	movzbl 0x1e(%rsp),%ecx
    1862:	c0 ea 07             	shr    $0x7,%dl
    1865:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    1868:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    186b:	31 d0                	xor    %edx,%eax
    186d:	0f b6 54 24 18       	movzbl 0x18(%rsp),%edx
    1872:	31 f2                	xor    %esi,%edx
    1874:	0f b6 74 24 1f       	movzbl 0x1f(%rsp),%esi
    1879:	31 c2                	xor    %eax,%edx
    187b:	0f b6 d2             	movzbl %dl,%edx
    187e:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
    1882:	89 f0                	mov    %esi,%eax
    1884:	c0 e8 07             	shr    $0x7,%al
    1887:	8d 04 40             	lea    (%rax,%rax,2),%eax
    188a:	88 54 24 0a          	mov    %dl,0xa(%rsp)
    188e:	8d 04 c0             	lea    (%rax,%rax,8),%eax
    1891:	0f b6 d3             	movzbl %bl,%edx
    1894:	0f b6 5c 24 2a       	movzbl 0x2a(%rsp),%ebx
    1899:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
    189d:	88 54 24 18          	mov    %dl,0x18(%rsp)
    18a1:	8d 14 36             	lea    (%rsi,%rsi,1),%edx
    18a4:	31 d0                	xor    %edx,%eax
    18a6:	41 0f b6 57 02       	movzbl 0x2(%r15),%edx
    18ab:	44 31 e2             	xor    %r12d,%edx
    18ae:	32 54 24 17          	xor    0x17(%rsp),%dl
    18b2:	49 83 c7 10          	add    $0x10,%r15
    18b6:	31 c2                	xor    %eax,%edx
    18b8:	89 c8                	mov    %ecx,%eax
    18ba:	c0 e8 07             	shr    $0x7,%al
    18bd:	0f b6 d2             	movzbl %dl,%edx
    18c0:	8d 04 40             	lea    (%rax,%rax,2),%eax
    18c3:	0f b6 34 17          	movzbl (%rdi,%rdx,1),%esi
    18c7:	8d 04 c0             	lea    (%rax,%rax,8),%eax
    18ca:	8d 14 09             	lea    (%rcx,%rcx,1),%edx
    18cd:	41 0f b6 4f f6       	movzbl -0xa(%r15),%ecx
    18d2:	31 c2                	xor    %eax,%edx
    18d4:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
    18d9:	44 31 f1             	xor    %r14d,%ecx
    18dc:	31 c8                	xor    %ecx,%eax
    18de:	31 d0                	xor    %edx,%eax
    18e0:	41 0f b6 d0          	movzbl %r8b,%edx
    18e4:	0f b6 c0             	movzbl %al,%eax
    18e7:	0f b6 0c 07          	movzbl (%rdi,%rax,1),%ecx
    18eb:	8d 04 1b             	lea    (%rbx,%rbx,1),%eax
    18ee:	88 4c 24 1c          	mov    %cl,0x1c(%rsp)
    18f2:	42 0f b6 0c 0f       	movzbl (%rdi,%r9,1),%ecx
    18f7:	44 0f b6 cd          	movzbl %bpl,%r9d
    18fb:	88 4c 24 17          	mov    %cl,0x17(%rsp)
    18ff:	0f b6 0c 17          	movzbl (%rdi,%rdx,1),%ecx
    1903:	89 da                	mov    %ebx,%edx
    1905:	c0 ea 07             	shr    $0x7,%dl
    1908:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
    190b:	8d 14 d2             	lea    (%rdx,%rdx,8),%edx
    190e:	31 d0                	xor    %edx,%eax
    1910:	41 0f b6 57 f3       	movzbl -0xd(%r15),%edx
    1915:	88 4c 24 16          	mov    %cl,0x16(%rsp)
    1919:	42 0f b6 0c 0f       	movzbl (%rdi,%r9,1),%ecx
    191e:	44 31 e2             	xor    %r12d,%edx
    1921:	32 54 24 15          	xor    0x15(%rsp),%dl
    1925:	31 c2                	xor    %eax,%edx
    1927:	0f b6 d2             	movzbl %dl,%edx
    192a:	0f b6 04 17          	movzbl (%rdi,%rdx,1),%eax
    192e:	42 0f b6 14 2f       	movzbl (%rdi,%r13,1),%edx
    1933:	88 44 24 1b          	mov    %al,0x1b(%rsp)
    1937:	41 0f b6 c3          	movzbl %r11b,%eax
    193b:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    193f:	88 44 24 15          	mov    %al,0x15(%rsp)
    1943:	4c 39 7c 24 38       	cmp    %r15,0x38(%rsp)
    1948:	0f 85 12 fc ff ff    	jne    1560 <memcmp@plt+0x500>
    194e:	89 c3                	mov    %eax,%ebx
    1950:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
    1955:	32 5c 24 53          	xor    0x53(%rsp),%bl
    1959:	32 44 24 50          	xor    0x50(%rsp),%al
    195d:	40 32 74 24 5a       	xor    0x5a(%rsp),%sil
    1962:	44 0f b6 74 24 1b    	movzbl 0x1b(%rsp),%r14d
    1968:	44 32 74 24 57       	xor    0x57(%rsp),%r14b
    196d:	88 44 24 10          	mov    %al,0x10(%rsp)
    1971:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
    1976:	88 5c 24 0b          	mov    %bl,0xb(%rsp)
    197a:	0f b6 5c 24 0a       	movzbl 0xa(%rsp),%ebx
    197f:	41 89 f7             	mov    %esi,%r15d
    1982:	32 5c 24 55          	xor    0x55(%rsp),%bl
    1986:	c4 c1 79 6e ef       	vmovd  %r15d,%xmm5
    198b:	32 44 24 51          	xor    0x51(%rsp),%al
    198f:	44 0f b6 54 24 0c    	movzbl 0xc(%rsp),%r10d
    1995:	44 0f b6 64 24 1c    	movzbl 0x1c(%rsp),%r12d
    199b:	88 5c 24 0a          	mov    %bl,0xa(%rsp)
    199f:	0f b6 5c 24 16       	movzbl 0x16(%rsp),%ebx
    19a4:	32 5c 24 56          	xor    0x56(%rsp),%bl
    19a8:	44 32 64 24 5e       	xor    0x5e(%rsp),%r12b
    19ad:	44 0f b6 44 24 14    	movzbl 0x14(%rsp),%r8d
    19b3:	44 88 74 24 14       	mov    %r14b,0x14(%rsp)
    19b8:	44 0f b6 4c 24 17    	movzbl 0x17(%rsp),%r9d
    19be:	88 5c 24 0c          	mov    %bl,0xc(%rsp)
    19c2:	0f b6 5c 24 5b       	movzbl 0x5b(%rsp),%ebx
    19c7:	44 32 4c 24 52       	xor    0x52(%rsp),%r9b
    19cc:	44 32 54 24 54       	xor    0x54(%rsp),%r10b
    19d1:	44 0f b6 6c 24 1a    	movzbl 0x1a(%rsp),%r13d
    19d7:	44 0f b6 5c 24 18    	movzbl 0x18(%rsp),%r11d
    19dd:	31 d3                	xor    %edx,%ebx
    19df:	44 89 e2             	mov    %r12d,%edx
    19e2:	44 32 6c 24 58       	xor    0x58(%rsp),%r13b
    19e7:	c5 f9 6e e2          	vmovd  %edx,%xmm4
    19eb:	c4 c1 79 6e f9       	vmovd  %r9d,%xmm7
    19f0:	c4 e3 51 20 eb 01    	vpinsrb $0x1,%ebx,%xmm5,%xmm5
    19f6:	44 32 5c 24 59       	xor    0x59(%rsp),%r11b
    19fb:	c4 c1 79 6e da       	vmovd  %r10d,%xmm3
    1a00:	ba 0f 00 00 00       	mov    $0xf,%edx
    1a05:	0f b6 74 24 19       	movzbl 0x19(%rsp),%esi
    1a0a:	44 32 44 24 5d       	xor    0x5d(%rsp),%r8b
    1a0f:	40 32 74 24 5c       	xor    0x5c(%rsp),%sil
    1a14:	c4 c1 79 6e cd       	vmovd  %r13d,%xmm1
    1a19:	32 4c 24 5f          	xor    0x5f(%rsp),%cl
    1a1d:	c5 f9 6e 44 24 10    	vmovd  0x10(%rsp),%xmm0
    1a23:	c5 f9 6e 74 24 0c    	vmovd  0xc(%rsp),%xmm6
    1a29:	c4 e3 41 20 7c 24 0b 	vpinsrb $0x1,0xb(%rsp),%xmm7,%xmm7
    1a30:	01
    1a31:	c4 e3 79 20 c0 01    	vpinsrb $0x1,%eax,%xmm0,%xmm0
    1a37:	c4 c3 71 20 cb 01    	vpinsrb $0x1,%r11d,%xmm1,%xmm1
    1a3d:	c5 f9 61 c7          	vpunpcklwd %xmm7,%xmm0,%xmm0
    1a41:	0f b6 84 24 6f 01 00 	movzbl 0x16f(%rsp),%eax
    1a48:	00
    1a49:	c4 e3 61 20 5c 24 0a 	vpinsrb $0x1,0xa(%rsp),%xmm3,%xmm3
    1a50:	01
    1a51:	c4 e3 49 20 74 24 14 	vpinsrb $0x1,0x14(%rsp),%xmm6,%xmm6
    1a58:	01
    1a59:	c5 f1 61 cd          	vpunpcklwd %xmm5,%xmm1,%xmm1
    1a5d:	c5 e1 61 de          	vpunpcklwd %xmm6,%xmm3,%xmm3
    1a61:	c5 f9 6e d6          	vmovd  %esi,%xmm2
    1a65:	c5 f9 62 c3          	vpunpckldq %xmm3,%xmm0,%xmm0
    1a69:	c4 c3 69 20 d0 01    	vpinsrb $0x1,%r8d,%xmm2,%xmm2
    1a6f:	c4 e3 59 20 e1 01    	vpinsrb $0x1,%ecx,%xmm4,%xmm4
    1a75:	c5 e9 61 d4          	vpunpcklwd %xmm4,%xmm2,%xmm2
    1a79:	c5 f1 62 ca          	vpunpckldq %xmm2,%xmm1,%xmm1
    1a7d:	c5 f9 6c c1          	vpunpcklqdq %xmm1,%xmm0,%xmm0
    1a81:	c5 f9 7f 84 24 70 01 	vmovdqa %xmm0,0x170(%rsp)
    1a88:	00 00
    1a8a:	3c ff                	cmp    $0xff,%al
    1a8c:	74 28                	je     1ab6 <memcmp@plt+0xa56>
    1a8e:	83 c0 01             	add    $0x1,%eax
    1a91:	88 84 14 60 01 00 00 	mov    %al,0x160(%rsp,%rdx,1)
    1a98:	31 c0                	xor    %eax,%eax
    1a9a:	e9 e6 f8 ff ff       	jmpq   1385 <memcmp@plt+0x325>
    1a9f:	48 8d 3d 9b 05 00 00 	lea    0x59b(%rip),%rdi        # 2041 <memcmp@plt+0xfe1>
    1aa6:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    1aac:	e8 7f f5 ff ff       	callq  1030 <puts@plt>
    1ab1:	e9 1f f9 ff ff       	jmpq   13d5 <memcmp@plt+0x375>
    1ab6:	0f b6 84 24 6e 01 00 	movzbl 0x16e(%rsp),%eax
    1abd:	00
    1abe:	c6 84 24 6f 01 00 00 	movb   $0x0,0x16f(%rsp)
    1ac5:	00
    1ac6:	ba 0e 00 00 00       	mov    $0xe,%edx
    1acb:	3c ff                	cmp    $0xff,%al
    1acd:	75 bf                	jne    1a8e <memcmp@plt+0xa2e>
    1acf:	0f b6 84 24 6d 01 00 	movzbl 0x16d(%rsp),%eax
    1ad6:	00
    1ad7:	c6 84 24 6e 01 00 00 	movb   $0x0,0x16e(%rsp)
    1ade:	00
    1adf:	ba 0d 00 00 00       	mov    $0xd,%edx
    1ae4:	3c ff                	cmp    $0xff,%al
    1ae6:	75 a6                	jne    1a8e <memcmp@plt+0xa2e>
    1ae8:	0f b6 84 24 6c 01 00 	movzbl 0x16c(%rsp),%eax
    1aef:	00
    1af0:	c6 84 24 6d 01 00 00 	movb   $0x0,0x16d(%rsp)
    1af7:	00
    1af8:	ba 0c 00 00 00       	mov    $0xc,%edx
    1afd:	3c ff                	cmp    $0xff,%al
    1aff:	75 8d                	jne    1a8e <memcmp@plt+0xa2e>
    1b01:	0f b6 84 24 6b 01 00 	movzbl 0x16b(%rsp),%eax
    1b08:	00
    1b09:	c6 84 24 6c 01 00 00 	movb   $0x0,0x16c(%rsp)
    1b10:	00
    1b11:	ba 0b 00 00 00       	mov    $0xb,%edx
    1b16:	3c ff                	cmp    $0xff,%al
    1b18:	0f 85 70 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b1e:	0f b6 84 24 6a 01 00 	movzbl 0x16a(%rsp),%eax
    1b25:	00
    1b26:	c6 84 24 6b 01 00 00 	movb   $0x0,0x16b(%rsp)
    1b2d:	00
    1b2e:	ba 0a 00 00 00       	mov    $0xa,%edx
    1b33:	3c ff                	cmp    $0xff,%al
    1b35:	0f 85 53 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b3b:	0f b6 84 24 69 01 00 	movzbl 0x169(%rsp),%eax
    1b42:	00
    1b43:	c6 84 24 6a 01 00 00 	movb   $0x0,0x16a(%rsp)
    1b4a:	00
    1b4b:	ba 09 00 00 00       	mov    $0x9,%edx
    1b50:	3c ff                	cmp    $0xff,%al
    1b52:	0f 85 36 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b58:	0f b6 84 24 68 01 00 	movzbl 0x168(%rsp),%eax
    1b5f:	00
    1b60:	c6 84 24 69 01 00 00 	movb   $0x0,0x169(%rsp)
    1b67:	00
    1b68:	ba 08 00 00 00       	mov    $0x8,%edx
    1b6d:	3c ff                	cmp    $0xff,%al
    1b6f:	0f 85 19 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b75:	0f b6 84 24 67 01 00 	movzbl 0x167(%rsp),%eax
    1b7c:	00
    1b7d:	c6 84 24 68 01 00 00 	movb   $0x0,0x168(%rsp)
    1b84:	00
    1b85:	ba 07 00 00 00       	mov    $0x7,%edx
    1b8a:	3c ff                	cmp    $0xff,%al
    1b8c:	0f 85 fc fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b92:	0f b6 84 24 66 01 00 	movzbl 0x166(%rsp),%eax
    1b99:	00
    1b9a:	c6 84 24 67 01 00 00 	movb   $0x0,0x167(%rsp)
    1ba1:	00
    1ba2:	ba 06 00 00 00       	mov    $0x6,%edx
    1ba7:	3c ff                	cmp    $0xff,%al
    1ba9:	0f 85 df fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1baf:	0f b6 84 24 65 01 00 	movzbl 0x165(%rsp),%eax
    1bb6:	00
    1bb7:	c6 84 24 66 01 00 00 	movb   $0x0,0x166(%rsp)
    1bbe:	00
    1bbf:	ba 05 00 00 00       	mov    $0x5,%edx
    1bc4:	3c ff                	cmp    $0xff,%al
    1bc6:	0f 85 c2 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1bcc:	0f b6 84 24 64 01 00 	movzbl 0x164(%rsp),%eax
    1bd3:	00
    1bd4:	c6 84 24 65 01 00 00 	movb   $0x0,0x165(%rsp)
    1bdb:	00
    1bdc:	ba 04 00 00 00       	mov    $0x4,%edx
    1be1:	3c ff                	cmp    $0xff,%al
    1be3:	0f 85 a5 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1be9:	0f b6 84 24 63 01 00 	movzbl 0x163(%rsp),%eax
    1bf0:	00
    1bf1:	c6 84 24 64 01 00 00 	movb   $0x0,0x164(%rsp)
    1bf8:	00
    1bf9:	ba 03 00 00 00       	mov    $0x3,%edx
    1bfe:	3c ff                	cmp    $0xff,%al
    1c00:	0f 85 88 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c06:	0f b6 84 24 62 01 00 	movzbl 0x162(%rsp),%eax
    1c0d:	00
    1c0e:	c6 84 24 63 01 00 00 	movb   $0x0,0x163(%rsp)
    1c15:	00
    1c16:	ba 02 00 00 00       	mov    $0x2,%edx
    1c1b:	3c ff                	cmp    $0xff,%al
    1c1d:	0f 85 6b fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c23:	0f b6 84 24 61 01 00 	movzbl 0x161(%rsp),%eax
    1c2a:	00
    1c2b:	c6 84 24 62 01 00 00 	movb   $0x0,0x162(%rsp)
    1c32:	00
    1c33:	ba 01 00 00 00       	mov    $0x1,%edx
    1c38:	3c ff                	cmp    $0xff,%al
    1c3a:	0f 85 4e fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c40:	0f b6 84 24 60 01 00 	movzbl 0x160(%rsp),%eax
    1c47:	00
    1c48:	c6 84 24 61 01 00 00 	movb   $0x0,0x161(%rsp)
    1c4f:	00
    1c50:	31 d2                	xor    %edx,%edx
    1c52:	3c ff                	cmp    $0xff,%al
    1c54:	0f 85 34 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c5a:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
    1c61:	00
    1c62:	31 c0                	xor    %eax,%eax
    1c64:	e9 1c f7 ff ff       	jmpq   1385 <memcmp@plt+0x325>
    1c69:	e8 e2 f3 ff ff       	callq  1050 <__stack_chk_fail@plt>
    1c6e:	66 90                	xchg   %ax,%ax
    1c70:	f3 0f 1e fa          	endbr64
    1c74:	31 ed                	xor    %ebp,%ebp
    1c76:	49 89 d1             	mov    %rdx,%r9
    1c79:	5e                   	pop    %rsi
    1c7a:	48 89 e2             	mov    %rsp,%rdx
    1c7d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1c81:	50                   	push   %rax
    1c82:	54                   	push   %rsp
    1c83:	4c 8d 05 56 01 00 00 	lea    0x156(%rip),%r8        # 1de0 <memcmp@plt+0xd80>
    1c8a:	48 8d 0d df 00 00 00 	lea    0xdf(%rip),%rcx        # 1d70 <memcmp@plt+0xd10>
    1c91:	48 8d 3d d8 f3 ff ff 	lea    -0xc28(%rip),%rdi        # 1070 <memcmp@plt+0x10>
    1c98:	ff 15 42 23 00 00    	callq  *0x2342(%rip)        # 3fe0 <memcmp@plt+0x2f80>
    1c9e:	f4                   	hlt
    1c9f:	90                   	nop
    1ca0:	48 8d 3d a1 23 00 00 	lea    0x23a1(%rip),%rdi        # 4048 <memcmp@plt+0x2fe8>
    1ca7:	48 8d 05 9a 23 00 00 	lea    0x239a(%rip),%rax        # 4048 <memcmp@plt+0x2fe8>
    1cae:	48 39 f8             	cmp    %rdi,%rax
    1cb1:	74 15                	je     1cc8 <memcmp@plt+0xc68>
    1cb3:	48 8b 05 16 23 00 00 	mov    0x2316(%rip),%rax        # 3fd0 <memcmp@plt+0x2f70>
    1cba:	48 85 c0             	test   %rax,%rax
    1cbd:	74 09                	je     1cc8 <memcmp@plt+0xc68>
    1cbf:	ff e0                	jmpq   *%rax
    1cc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1cc8:	c3                   	retq
    1cc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1cd0:	48 8d 3d 71 23 00 00 	lea    0x2371(%rip),%rdi        # 4048 <memcmp@plt+0x2fe8>
    1cd7:	48 8d 35 6a 23 00 00 	lea    0x236a(%rip),%rsi        # 4048 <memcmp@plt+0x2fe8>
    1cde:	48 29 fe             	sub    %rdi,%rsi
    1ce1:	48 89 f0             	mov    %rsi,%rax
    1ce4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1ce8:	48 c1 f8 03          	sar    $0x3,%rax
    1cec:	48 01 c6             	add    %rax,%rsi
    1cef:	48 d1 fe             	sar    %rsi
    1cf2:	74 14                	je     1d08 <memcmp@plt+0xca8>
    1cf4:	48 8b 05 f5 22 00 00 	mov    0x22f5(%rip),%rax        # 3ff0 <memcmp@plt+0x2f90>
    1cfb:	48 85 c0             	test   %rax,%rax
    1cfe:	74 08                	je     1d08 <memcmp@plt+0xca8>
    1d00:	ff e0                	jmpq   *%rax
    1d02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1d08:	c3                   	retq
    1d09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1d10:	f3 0f 1e fa          	endbr64
    1d14:	80 3d 2d 23 00 00 00 	cmpb   $0x0,0x232d(%rip)        # 4048 <memcmp@plt+0x2fe8>
    1d1b:	75 33                	jne    1d50 <memcmp@plt+0xcf0>
    1d1d:	55                   	push   %rbp
    1d1e:	48 83 3d d2 22 00 00 	cmpq   $0x0,0x22d2(%rip)        # 3ff8 <memcmp@plt+0x2f98>
    1d25:	00
    1d26:	48 89 e5             	mov    %rsp,%rbp
    1d29:	74 0d                	je     1d38 <memcmp@plt+0xcd8>
    1d2b:	48 8b 3d 0e 23 00 00 	mov    0x230e(%rip),%rdi        # 4040 <memcmp@plt+0x2fe0>
    1d32:	ff 15 c0 22 00 00    	callq  *0x22c0(%rip)        # 3ff8 <memcmp@plt+0x2f98>
    1d38:	e8 63 ff ff ff       	callq  1ca0 <memcmp@plt+0xc40>
    1d3d:	c6 05 04 23 00 00 01 	movb   $0x1,0x2304(%rip)        # 4048 <memcmp@plt+0x2fe8>
    1d44:	5d                   	pop    %rbp
    1d45:	c3                   	retq
    1d46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1d4d:	00 00 00
    1d50:	c3                   	retq
    1d51:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1d58:	00 00 00 00
    1d5c:	0f 1f 40 00          	nopl   0x0(%rax)
    1d60:	f3 0f 1e fa          	endbr64
    1d64:	e9 67 ff ff ff       	jmpq   1cd0 <memcmp@plt+0xc70>
    1d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1d70:	f3 0f 1e fa          	endbr64
    1d74:	41 57                	push   %r15
    1d76:	4c 8d 3d 63 20 00 00 	lea    0x2063(%rip),%r15        # 3de0 <memcmp@plt+0x2d80>
    1d7d:	41 56                	push   %r14
    1d7f:	49 89 d6             	mov    %rdx,%r14
    1d82:	41 55                	push   %r13
    1d84:	49 89 f5             	mov    %rsi,%r13
    1d87:	41 54                	push   %r12
    1d89:	41 89 fc             	mov    %edi,%r12d
    1d8c:	55                   	push   %rbp
    1d8d:	48 8d 2d 54 20 00 00 	lea    0x2054(%rip),%rbp        # 3de8 <memcmp@plt+0x2d88>
    1d94:	53                   	push   %rbx
    1d95:	4c 29 fd             	sub    %r15,%rbp
    1d98:	48 83 ec 08          	sub    $0x8,%rsp
    1d9c:	e8 5f f2 ff ff       	callq  1000 <puts@plt-0x30>
    1da1:	48 c1 fd 03          	sar    $0x3,%rbp
    1da5:	74 1f                	je     1dc6 <memcmp@plt+0xd66>
    1da7:	31 db                	xor    %ebx,%ebx
    1da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1db0:	4c 89 f2             	mov    %r14,%rdx
    1db3:	4c 89 ee             	mov    %r13,%rsi
    1db6:	44 89 e7             	mov    %r12d,%edi
    1db9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1dbd:	48 83 c3 01          	add    $0x1,%rbx
    1dc1:	48 39 dd             	cmp    %rbx,%rbp
    1dc4:	75 ea                	jne    1db0 <memcmp@plt+0xd50>
    1dc6:	48 83 c4 08          	add    $0x8,%rsp
    1dca:	5b                   	pop    %rbx
    1dcb:	5d                   	pop    %rbp
    1dcc:	41 5c                	pop    %r12
    1dce:	41 5d                	pop    %r13
    1dd0:	41 5e                	pop    %r14
    1dd2:	41 5f                	pop    %r15
    1dd4:	c3                   	retq
    1dd5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1ddc:	00 00 00 00
    1de0:	f3 0f 1e fa          	endbr64
    1de4:	c3                   	retq

Disassembly of section .fini:

0000000000001de8 <.fini>:
    1de8:	f3 0f 1e fa          	endbr64
    1dec:	48 83 ec 08          	sub    $0x8,%rsp
    1df0:	48 83 c4 08          	add    $0x8,%rsp
    1df4:	c3                   	retq
