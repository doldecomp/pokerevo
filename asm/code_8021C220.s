.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

lbl_8021C220:
/* 8021C220 00217E80  48 00 03 6C */	b lbl_8021C58C
lbl_8021C224:
/* 8021C224 00217E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C228 00217E88  7C 08 02 A6 */	mflr r0
/* 8021C22C 00217E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021C230 00217E90  88 0D A2 6E */	lbz r0, lbl_8063F52E-_SDA_BASE_(r13)
/* 8021C234 00217E94  2C 00 00 00 */	cmpwi r0, 0
/* 8021C238 00217E98  41 82 00 0C */	beq lbl_8021C244
/* 8021C23C 00217E9C  48 00 08 3D */	bl func_8021CA78
/* 8021C240 00217EA0  48 00 05 1D */	bl func_8021C75C
lbl_8021C244:
/* 8021C244 00217EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021C248 00217EA8  7C 08 03 A6 */	mtlr r0
/* 8021C24C 00217EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C250 00217EB0  4E 80 00 20 */	blr

.global func_8021C254
func_8021C254:
/* 8021C254 00217EB4  3C 80 80 22 */	lis r4, lbl_8021C220@ha
/* 8021C258 00217EB8  3C A0 80 22 */	lis r5, lbl_8021C224@ha
/* 8021C25C 00217EBC  80 6D A4 B8 */	lwz r3, lbl_8063F778-_SDA_BASE_(r13)
/* 8021C260 00217EC0  38 84 C2 20 */	addi r4, r4, lbl_8021C220@l
/* 8021C264 00217EC4  38 A5 C2 24 */	addi r5, r5, lbl_8021C224@l
/* 8021C268 00217EC8  38 C0 00 02 */	li r6, 2
/* 8021C26C 00217ECC  38 E0 00 08 */	li r7, 8
/* 8021C270 00217ED0  48 02 28 E8 */	b func_8023EB58

.global func_8021C274
func_8021C274:
/* 8021C274 00217ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C278 00217ED8  7C 08 02 A6 */	mflr r0
/* 8021C27C 00217EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021C280 00217EE0  38 00 00 00 */	li r0, 0
/* 8021C284 00217EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021C288 00217EE8  7C 7F 1B 78 */	mr r31, r3
/* 8021C28C 00217EEC  98 0D A2 6E */	stb r0, lbl_8063F52E-_SDA_BASE_(r13)
/* 8021C290 00217EF0  48 00 00 F9 */	bl func_8021C388
/* 8021C294 00217EF4  88 0D A2 6F */	lbz r0, lbl_8063F52F-_SDA_BASE_(r13)
/* 8021C298 00217EF8  2C 00 00 00 */	cmpwi r0, 0
/* 8021C29C 00217EFC  40 82 00 10 */	bne lbl_8021C2AC
/* 8021C2A0 00217F00  4B FF FF B5 */	bl func_8021C254
/* 8021C2A4 00217F04  38 00 00 01 */	li r0, 1
/* 8021C2A8 00217F08  98 0D A2 6F */	stb r0, lbl_8063F52F-_SDA_BASE_(r13)
lbl_8021C2AC:
/* 8021C2AC 00217F0C  57 E3 13 BA */	rlwinm r3, r31, 2, 0xe, 0x1d
/* 8021C2B0 00217F10  4B FB EA E9 */	bl func_801DAD98
/* 8021C2B4 00217F14  2C 03 00 00 */	cmpwi r3, 0
/* 8021C2B8 00217F18  90 6D A2 78 */	stw r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C2BC 00217F1C  40 82 00 14 */	bne lbl_8021C2D0
/* 8021C2C0 00217F20  38 00 00 00 */	li r0, 0
/* 8021C2C4 00217F24  38 60 00 00 */	li r3, 0
/* 8021C2C8 00217F28  B0 0D A2 76 */	sth r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C2CC 00217F2C  48 00 00 0C */	b lbl_8021C2D8
lbl_8021C2D0:
/* 8021C2D0 00217F30  B3 ED A2 76 */	sth r31, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C2D4 00217F34  38 60 00 01 */	li r3, 1
lbl_8021C2D8:
/* 8021C2D8 00217F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021C2DC 00217F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021C2E0 00217F40  7C 08 03 A6 */	mtlr r0
/* 8021C2E4 00217F44  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C2E8 00217F48  4E 80 00 20 */	blr

.global func_8021C2EC
func_8021C2EC:
/* 8021C2EC 00217F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C2F0 00217F50  7C 08 02 A6 */	mflr r0
/* 8021C2F4 00217F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021C2F8 00217F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021C2FC 00217F5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8021C300 00217F60  7C 9E 23 78 */	mr r30, r4
/* 8021C304 00217F64  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C308 00217F68  7C 03 00 40 */	cmplw r3, r0
/* 8021C30C 00217F6C  41 80 00 0C */	blt lbl_8021C318
/* 8021C310 00217F70  38 60 00 00 */	li r3, 0
/* 8021C314 00217F74  48 00 00 5C */	b lbl_8021C370
lbl_8021C318:
/* 8021C318 00217F78  80 8D A2 78 */	lwz r4, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C31C 00217F7C  54 7F 13 BA */	rlwinm r31, r3, 2, 0xe, 0x1d
/* 8021C320 00217F80  7C 64 F8 2E */	lwzx r3, r4, r31
/* 8021C324 00217F84  2C 03 00 00 */	cmpwi r3, 0
/* 8021C328 00217F88  41 82 00 08 */	beq lbl_8021C330
/* 8021C32C 00217F8C  4B FB EB 79 */	bl func_801DAEA4
lbl_8021C330:
/* 8021C330 00217F90  38 60 0D 64 */	li r3, 0xd64
/* 8021C334 00217F94  4B FB EA 31 */	bl func_801DAD64
/* 8021C338 00217F98  80 8D A2 78 */	lwz r4, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C33C 00217F9C  7C 64 F9 2E */	stwx r3, r4, r31
/* 8021C340 00217FA0  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C344 00217FA4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8021C348 00217FA8  2C 03 00 00 */	cmpwi r3, 0
/* 8021C34C 00217FAC  40 82 00 0C */	bne lbl_8021C358
/* 8021C350 00217FB0  38 60 00 00 */	li r3, 0
/* 8021C354 00217FB4  48 00 00 1C */	b lbl_8021C370
lbl_8021C358:
/* 8021C358 00217FB8  4B FF DA F1 */	bl func_80219E48
/* 8021C35C 00217FBC  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C360 00217FC0  7F C4 F3 78 */	mr r4, r30
/* 8021C364 00217FC4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8021C368 00217FC8  4B FF DE ED */	bl func_8021A254
/* 8021C36C 00217FCC  38 60 00 01 */	li r3, 1
lbl_8021C370:
/* 8021C370 00217FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021C374 00217FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021C378 00217FD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021C37C 00217FDC  7C 08 03 A6 */	mtlr r0
/* 8021C380 00217FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C384 00217FE4  4E 80 00 20 */	blr

.global func_8021C388
func_8021C388:
/* 8021C388 00217FE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021C38C 00217FEC  7C 08 02 A6 */	mflr r0
/* 8021C390 00217FF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021C394 00217FF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021C398 00217FF8  3B E0 00 00 */	li r31, 0
/* 8021C39C 00217FFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021C3A0 00218000  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8021C3A4 00218004  3B A0 00 00 */	li r29, 0
/* 8021C3A8 00218008  48 00 00 34 */	b lbl_8021C3DC
lbl_8021C3AC:
/* 8021C3AC 0021800C  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C3B0 00218010  57 BE 13 BA */	rlwinm r30, r29, 2, 0xe, 0x1d
/* 8021C3B4 00218014  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8021C3B8 00218018  2C 03 00 00 */	cmpwi r3, 0
/* 8021C3BC 0021801C  41 82 00 1C */	beq lbl_8021C3D8
/* 8021C3C0 00218020  4B FF DB FD */	bl func_80219FBC
/* 8021C3C4 00218024  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C3C8 00218028  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8021C3CC 0021802C  4B FB EA D9 */	bl func_801DAEA4
/* 8021C3D0 00218030  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C3D4 00218034  7F E3 F1 2E */	stwx r31, r3, r30
lbl_8021C3D8:
/* 8021C3D8 00218038  3B BD 00 01 */	addi r29, r29, 1
lbl_8021C3DC:
/* 8021C3DC 0021803C  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C3E0 00218040  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8021C3E4 00218044  7C 03 00 40 */	cmplw r3, r0
/* 8021C3E8 00218048  41 80 FF C4 */	blt lbl_8021C3AC
/* 8021C3EC 0021804C  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C3F0 00218050  2C 03 00 00 */	cmpwi r3, 0
/* 8021C3F4 00218054  41 82 00 10 */	beq lbl_8021C404
/* 8021C3F8 00218058  4B FB EA AD */	bl func_801DAEA4
/* 8021C3FC 0021805C  38 00 00 00 */	li r0, 0
/* 8021C400 00218060  90 0D A2 78 */	stw r0, lbl_8063F538-_SDA_BASE_(r13)
lbl_8021C404:
/* 8021C404 00218064  38 00 00 00 */	li r0, 0
/* 8021C408 00218068  B0 0D A2 76 */	sth r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C40C 0021806C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021C410 00218070  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021C414 00218074  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8021C418 00218078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021C41C 0021807C  7C 08 03 A6 */	mtlr r0
/* 8021C420 00218080  38 21 00 20 */	addi r1, r1, 0x20
/* 8021C424 00218084  4E 80 00 20 */	blr

.global func_8021C428
func_8021C428:
/* 8021C428 00218088  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C42C 0021808C  7C 03 00 40 */	cmplw r3, r0
/* 8021C430 00218090  4C 80 00 20 */	bgelr
/* 8021C434 00218094  80 AD A2 78 */	lwz r5, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C438 00218098  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8021C43C 0021809C  7C 65 00 2E */	lwzx r3, r5, r0
/* 8021C440 002180A0  2C 03 00 00 */	cmpwi r3, 0
/* 8021C444 002180A4  4D 82 00 20 */	beqlr
/* 8021C448 002180A8  4B FF E6 40 */	b lbl_8021AA88
/* 8021C44C 002180AC  4E 80 00 20 */	blr

.global func_8021C450
func_8021C450:
/* 8021C450 002180B0  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C454 002180B4  7C 03 00 40 */	cmplw r3, r0
/* 8021C458 002180B8  4C 80 00 20 */	bgelr
/* 8021C45C 002180BC  80 CD A2 78 */	lwz r6, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C460 002180C0  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8021C464 002180C4  7C 66 00 2E */	lwzx r3, r6, r0
/* 8021C468 002180C8  2C 03 00 00 */	cmpwi r3, 0
/* 8021C46C 002180CC  4D 82 00 20 */	beqlr
/* 8021C470 002180D0  4B FF F0 C4 */	b lbl_8021B534
/* 8021C474 002180D4  4E 80 00 20 */	blr

.global func_8021C478
func_8021C478:
/* 8021C478 002180D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C47C 002180DC  7C 08 02 A6 */	mflr r0
/* 8021C480 002180E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021C484 002180E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021C488 002180E8  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C48C 002180EC  7C 03 00 40 */	cmplw r3, r0
/* 8021C490 002180F0  40 80 00 34 */	bge lbl_8021C4C4
/* 8021C494 002180F4  80 8D A2 78 */	lwz r4, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C498 002180F8  54 7F 13 BA */	rlwinm r31, r3, 2, 0xe, 0x1d
/* 8021C49C 002180FC  7C 64 F8 2E */	lwzx r3, r4, r31
/* 8021C4A0 00218100  2C 03 00 00 */	cmpwi r3, 0
/* 8021C4A4 00218104  41 82 00 20 */	beq lbl_8021C4C4
/* 8021C4A8 00218108  4B FF DB 15 */	bl func_80219FBC
/* 8021C4AC 0021810C  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C4B0 00218110  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8021C4B4 00218114  4B FB E9 F1 */	bl func_801DAEA4
/* 8021C4B8 00218118  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C4BC 0021811C  38 00 00 00 */	li r0, 0
/* 8021C4C0 00218120  7C 03 F9 2E */	stwx r0, r3, r31
lbl_8021C4C4:
/* 8021C4C4 00218124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021C4C8 00218128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021C4CC 0021812C  7C 08 03 A6 */	mtlr r0
/* 8021C4D0 00218130  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C4D4 00218134  4E 80 00 20 */	blr

.global func_8021C4D8
func_8021C4D8:
/* 8021C4D8 00218138  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C4DC 0021813C  38 C0 00 00 */	li r6, 0
/* 8021C4E0 00218140  A0 8D A2 76 */	lhz r4, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C4E4 00218144  48 00 00 34 */	b lbl_8021C518
lbl_8021C4E8:
/* 8021C4E8 00218148  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8021C4EC 0021814C  7C A3 00 2E */	lwzx r5, r3, r0
/* 8021C4F0 00218150  2C 05 00 00 */	cmpwi r5, 0
/* 8021C4F4 00218154  40 82 00 0C */	bne lbl_8021C500
/* 8021C4F8 00218158  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8021C4FC 0021815C  4E 80 00 20 */	blr
lbl_8021C500:
/* 8021C500 00218160  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8021C504 00218164  2C 00 00 00 */	cmpwi r0, 0
/* 8021C508 00218168  40 82 00 0C */	bne lbl_8021C514
/* 8021C50C 0021816C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8021C510 00218170  4E 80 00 20 */	blr
lbl_8021C514:
/* 8021C514 00218174  38 C6 00 01 */	addi r6, r6, 1
lbl_8021C518:
/* 8021C518 00218178  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8021C51C 0021817C  7C 00 20 40 */	cmplw r0, r4
/* 8021C520 00218180  41 80 FF C8 */	blt lbl_8021C4E8
/* 8021C524 00218184  38 60 FF FF */	li r3, -1
/* 8021C528 00218188  4E 80 00 20 */	blr

.global func_8021C52C
func_8021C52C:
/* 8021C52C 0021818C  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C530 00218190  7C 03 00 40 */	cmplw r3, r0
/* 8021C534 00218194  41 80 00 0C */	blt lbl_8021C540
/* 8021C538 00218198  38 60 FF FF */	li r3, -1
/* 8021C53C 0021819C  4E 80 00 20 */	blr
lbl_8021C540:
/* 8021C540 002181A0  80 8D A2 78 */	lwz r4, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C544 002181A4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8021C548 002181A8  7C 64 00 2E */	lwzx r3, r4, r0
/* 8021C54C 002181AC  2C 03 00 00 */	cmpwi r3, 0
/* 8021C550 002181B0  40 82 00 0C */	bne lbl_8021C55C
/* 8021C554 002181B4  38 60 FF FF */	li r3, -1
/* 8021C558 002181B8  4E 80 00 20 */	blr
lbl_8021C55C:
/* 8021C55C 002181BC  4B FF F6 88 */	b lbl_8021BBE4
/* 8021C560 002181C0  4E 80 00 20 */	blr

.global lbl_8021C564
lbl_8021C564:
/* 8021C564 002181C4  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C568 002181C8  7C 03 00 40 */	cmplw r3, r0
/* 8021C56C 002181CC  4C 80 00 20 */	bgelr
/* 8021C570 002181D0  80 AD A2 78 */	lwz r5, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C574 002181D4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8021C578 002181D8  7C 65 00 2E */	lwzx r3, r5, r0
/* 8021C57C 002181DC  2C 03 00 00 */	cmpwi r3, 0
/* 8021C580 002181E0  4D 82 00 20 */	beqlr
/* 8021C584 002181E4  4B FF F8 C8 */	b lbl_8021BE4C
/* 8021C588 002181E8  4E 80 00 20 */	blr
lbl_8021C58C:
/* 8021C58C 002181EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C590 002181F0  7C 08 02 A6 */	mflr r0
/* 8021C594 002181F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021C598 002181F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021C59C 002181FC  3B E0 00 00 */	li r31, 0
/* 8021C5A0 00218200  48 00 00 2C */	b lbl_8021C5CC
lbl_8021C5A4:
/* 8021C5A4 00218204  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C5A8 00218208  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 8021C5AC 0021820C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8021C5B0 00218210  2C 03 00 00 */	cmpwi r3, 0
/* 8021C5B4 00218214  41 82 00 14 */	beq lbl_8021C5C8
/* 8021C5B8 00218218  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8021C5BC 0021821C  2C 00 00 00 */	cmpwi r0, 0
/* 8021C5C0 00218220  41 82 00 08 */	beq lbl_8021C5C8
/* 8021C5C4 00218224  4B FF F9 C5 */	bl func_8021BF88
lbl_8021C5C8:
/* 8021C5C8 00218228  3B FF 00 01 */	addi r31, r31, 1
lbl_8021C5CC:
/* 8021C5CC 0021822C  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C5D0 00218230  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8021C5D4 00218234  7C 03 00 40 */	cmplw r3, r0
/* 8021C5D8 00218238  41 80 FF CC */	blt lbl_8021C5A4
/* 8021C5DC 0021823C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021C5E0 00218240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021C5E4 00218244  7C 08 03 A6 */	mtlr r0
/* 8021C5E8 00218248  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C5EC 0021824C  4E 80 00 20 */	blr

.global func_8021C5F0
func_8021C5F0:
/* 8021C5F0 00218250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021C5F4 00218254  7C 08 02 A6 */	mflr r0
/* 8021C5F8 00218258  C8 62 9B 68 */	lfd f3, lbl_80642168-_SDA2_BASE_(r2)
/* 8021C5FC 0021825C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021C600 00218260  3C 00 43 30 */	lis r0, 0x4330
/* 8021C604 00218264  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C608 00218268  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021C60C 0021826C  80 6D A4 C8 */	lwz r3, lbl_8063F788-_SDA_BASE_(r13)
/* 8021C610 00218270  90 01 00 08 */	stw r0, 8(r1)
/* 8021C614 00218274  88 03 00 59 */	lbz r0, 0x59(r3)
/* 8021C618 00218278  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 8021C61C 0021827C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021C620 00218280  C8 41 00 08 */	lfd f2, 8(r1)
/* 8021C624 00218284  EC 42 18 28 */	fsubs f2, f2, f3
/* 8021C628 00218288  EC 21 10 24 */	fdivs f1, f1, f2
/* 8021C62C 0021828C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021C630 00218290  40 81 00 08 */	ble lbl_8021C638
/* 8021C634 00218294  48 00 00 08 */	b lbl_8021C63C
lbl_8021C638:
/* 8021C638 00218298  FC 20 00 90 */	fmr f1, f0
lbl_8021C63C:
/* 8021C63C 0021829C  C0 0D A2 70 */	lfs f0, lbl_8063F530-_SDA_BASE_(r13)
/* 8021C640 002182A0  3B E0 00 00 */	li r31, 0
/* 8021C644 002182A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8021C648 002182A8  D0 0D A2 70 */	stfs f0, lbl_8063F530-_SDA_BASE_(r13)
/* 8021C64C 002182AC  48 00 00 2C */	b lbl_8021C678
lbl_8021C650:
/* 8021C650 002182B0  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C654 002182B4  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 8021C658 002182B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8021C65C 002182BC  2C 00 00 00 */	cmpwi r0, 0
/* 8021C660 002182C0  41 82 00 14 */	beq lbl_8021C674
/* 8021C664 002182C4  C0 2D A2 70 */	lfs f1, lbl_8063F530-_SDA_BASE_(r13)
/* 8021C668 002182C8  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8021C66C 002182CC  A8 8D 85 50 */	lha r4, lbl_8063D810-_SDA_BASE_(r13)
/* 8021C670 002182D0  4B FF FD B9 */	bl func_8021C428
lbl_8021C674:
/* 8021C674 002182D4  3B FF 00 01 */	addi r31, r31, 1
lbl_8021C678:
/* 8021C678 002182D8  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C67C 002182DC  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8021C680 002182E0  7C 03 00 40 */	cmplw r3, r0
/* 8021C684 002182E4  41 80 FF CC */	blt lbl_8021C650
/* 8021C688 002182E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021C68C 002182EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021C690 002182F0  7C 08 03 A6 */	mtlr r0
/* 8021C694 002182F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8021C698 002182F8  4E 80 00 20 */	blr

.global func_8021C69C
func_8021C69C:
/* 8021C69C 002182FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021C6A0 00218300  7C 08 02 A6 */	mflr r0
/* 8021C6A4 00218304  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021C6A8 00218308  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021C6AC 0021830C  3B E0 00 00 */	li r31, 0
/* 8021C6B0 00218310  48 00 00 2C */	b lbl_8021C6DC
lbl_8021C6B4:
/* 8021C6B4 00218314  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C6B8 00218318  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 8021C6BC 0021831C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8021C6C0 00218320  2C 00 00 00 */	cmpwi r0, 0
/* 8021C6C4 00218324  41 82 00 14 */	beq lbl_8021C6D8
/* 8021C6C8 00218328  C0 2D A2 70 */	lfs f1, lbl_8063F530-_SDA_BASE_(r13)
/* 8021C6CC 0021832C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8021C6D0 00218330  A8 8D 85 50 */	lha r4, lbl_8063D810-_SDA_BASE_(r13)
/* 8021C6D4 00218334  4B FF FD 55 */	bl func_8021C428
lbl_8021C6D8:
/* 8021C6D8 00218338  3B FF 00 01 */	addi r31, r31, 1
lbl_8021C6DC:
/* 8021C6DC 0021833C  A0 6D A2 76 */	lhz r3, lbl_8063F536-_SDA_BASE_(r13)
/* 8021C6E0 00218340  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8021C6E4 00218344  7C 00 18 40 */	cmplw r0, r3
/* 8021C6E8 00218348  41 80 FF CC */	blt lbl_8021C6B4
/* 8021C6EC 0021834C  2C 03 00 00 */	cmpwi r3, 0
/* 8021C6F0 00218350  41 82 00 58 */	beq lbl_8021C748
/* 8021C6F4 00218354  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C6F8 00218358  80 63 00 00 */	lwz r3, 0(r3)
/* 8021C6FC 0021835C  2C 03 00 00 */	cmpwi r3, 0
/* 8021C700 00218360  41 82 00 48 */	beq lbl_8021C748
/* 8021C704 00218364  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8021C708 00218368  2C 03 00 00 */	cmpwi r3, 0
/* 8021C70C 0021836C  41 82 00 3C */	beq lbl_8021C748
/* 8021C710 00218370  80 63 00 08 */	lwz r3, 8(r3)
/* 8021C714 00218374  28 03 00 01 */	cmplwi r3, 1
/* 8021C718 00218378  41 80 00 30 */	blt lbl_8021C748
/* 8021C71C 0021837C  3C 00 43 30 */	lis r0, 0x4330
/* 8021C720 00218380  90 61 00 0C */	stw r3, 0xc(r1)
/* 8021C724 00218384  C8 62 9B 68 */	lfd f3, lbl_80642168-_SDA2_BASE_(r2)
/* 8021C728 00218388  90 01 00 08 */	stw r0, 8(r1)
/* 8021C72C 0021838C  C0 22 9B 70 */	lfs f1, lbl_80642170-_SDA2_BASE_(r2)
/* 8021C730 00218390  C8 41 00 08 */	lfd f2, 8(r1)
/* 8021C734 00218394  C0 0D A2 70 */	lfs f0, lbl_8063F530-_SDA_BASE_(r13)
/* 8021C738 00218398  EC 42 18 28 */	fsubs f2, f2, f3
/* 8021C73C 0021839C  EC 21 10 24 */	fdivs f1, f1, f2
/* 8021C740 002183A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8021C744 002183A4  D0 0D A2 70 */	stfs f0, lbl_8063F530-_SDA_BASE_(r13)
lbl_8021C748:
/* 8021C748 002183A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021C74C 002183AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021C750 002183B0  7C 08 03 A6 */	mtlr r0
/* 8021C754 002183B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8021C758 002183B8  4E 80 00 20 */	blr

.global func_8021C75C
func_8021C75C:
/* 8021C75C 002183BC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8021C760 002183C0  7C 08 02 A6 */	mflr r0
/* 8021C764 002183C4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8021C768 002183C8  39 61 00 60 */	addi r11, r1, 0x60
/* 8021C76C 002183CC  4B FA A9 B5 */	bl _savegpr_25
/* 8021C770 002183D0  88 0D A2 6E */	lbz r0, lbl_8063F52E-_SDA_BASE_(r13)
/* 8021C774 002183D4  7C 7C 1B 78 */	mr r28, r3
/* 8021C778 002183D8  2C 00 00 00 */	cmpwi r0, 0
/* 8021C77C 002183DC  41 82 02 E4 */	beq lbl_8021CA60
/* 8021C780 002183E0  48 00 02 F9 */	bl func_8021CA78
/* 8021C784 002183E4  7C 1C 18 40 */	cmplw r28, r3
/* 8021C788 002183E8  40 82 02 D8 */	bne lbl_8021CA60
/* 8021C78C 002183EC  A0 0D A2 74 */	lhz r0, lbl_8063F534-_SDA_BASE_(r13)
/* 8021C790 002183F0  2C 00 00 01 */	cmpwi r0, 1
/* 8021C794 002183F4  41 82 00 20 */	beq lbl_8021C7B4
/* 8021C798 002183F8  40 80 00 28 */	bge lbl_8021C7C0
/* 8021C79C 002183FC  2C 00 00 00 */	cmpwi r0, 0
/* 8021C7A0 00218400  40 80 00 0C */	bge lbl_8021C7AC
/* 8021C7A4 00218404  48 00 00 1C */	b lbl_8021C7C0
/* 8021C7A8 00218408  48 00 00 18 */	b lbl_8021C7C0
lbl_8021C7AC:
/* 8021C7AC 0021840C  4B FF FE 45 */	bl func_8021C5F0
/* 8021C7B0 00218410  48 00 00 10 */	b lbl_8021C7C0
lbl_8021C7B4:
/* 8021C7B4 00218414  4B FF FE E9 */	bl func_8021C69C
/* 8021C7B8 00218418  38 00 00 02 */	li r0, 2
/* 8021C7BC 0021841C  B0 0D A2 74 */	sth r0, lbl_8063F534-_SDA_BASE_(r13)
lbl_8021C7C0:
/* 8021C7C0 00218420  83 AD A3 D8 */	lwz r29, render_context_ptr-_SDA_BASE_(r13)
/* 8021C7C4 00218424  38 61 00 08 */	addi r3, r1, 8
/* 8021C7C8 00218428  C0 22 9B 74 */	lfs f1, lbl_80642174-_SDA2_BASE_(r2)
/* 8021C7CC 0021842C  38 80 00 59 */	li r4, 0x59
/* 8021C7D0 00218430  48 05 FA 99 */	bl PSMTXRotRad
/* 8021C7D4 00218434  C0 22 9B 60 */	lfs f1, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C7D8 00218438  38 61 00 08 */	addi r3, r1, 8
/* 8021C7DC 0021843C  C0 42 9B 78 */	lfs f2, lbl_80642178-_SDA2_BASE_(r2)
/* 8021C7E0 00218440  7C 64 1B 78 */	mr r4, r3
/* 8021C7E4 00218444  FC 60 08 90 */	fmr f3, f1
/* 8021C7E8 00218448  48 05 FD 0D */	bl PSMTXTransApply
/* 8021C7EC 0021844C  80 7D 16 E8 */	lwz r3, 0x16e8(r29)
/* 8021C7F0 00218450  38 81 00 08 */	addi r4, r1, 8
/* 8021C7F4 00218454  48 01 A0 85 */	bl func_80236878
/* 8021C7F8 00218458  38 60 00 00 */	li r3, 0
/* 8021C7FC 0021845C  48 02 07 21 */	bl func_8023CF1C
/* 8021C800 00218460  7C 64 1B 78 */	mr r4, r3
/* 8021C804 00218464  7F A3 EB 78 */	mr r3, r29
/* 8021C808 00218468  48 01 B8 B5 */	bl func_802380BC
/* 8021C80C 0021846C  80 7D 16 38 */	lwz r3, 0x1638(r29)
/* 8021C810 00218470  3B C0 00 00 */	li r30, 0
/* 8021C814 00218474  38 A0 00 A8 */	li r5, 0xa8
/* 8021C818 00218478  3B E0 00 01 */	li r31, 1
/* 8021C81C 0021847C  93 C3 01 84 */	stw r30, 0x184(r3)
/* 8021C820 00218480  38 E0 00 04 */	li r7, 4
/* 8021C824 00218484  38 C0 00 05 */	li r6, 5
/* 8021C828 00218488  38 00 00 06 */	li r0, 6
/* 8021C82C 0021848C  81 3D 16 38 */	lwz r9, 0x1638(r29)
/* 8021C830 00218490  7F A3 EB 78 */	mr r3, r29
/* 8021C834 00218494  38 80 00 06 */	li r4, 6
/* 8021C838 00218498  81 09 00 10 */	lwz r8, 0x10(r9)
/* 8021C83C 0021849C  61 08 00 02 */	ori r8, r8, 2
/* 8021C840 002184A0  91 09 00 10 */	stw r8, 0x10(r9)
/* 8021C844 002184A4  81 3D 16 38 */	lwz r9, 0x1638(r29)
/* 8021C848 002184A8  81 09 00 00 */	lwz r8, 0(r9)
/* 8021C84C 002184AC  61 08 00 02 */	ori r8, r8, 2
/* 8021C850 002184B0  91 09 00 00 */	stw r8, 0(r9)
/* 8021C854 002184B4  90 BD 17 38 */	stw r5, 0x1738(r29)
/* 8021C858 002184B8  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C85C 002184BC  93 E5 0A 24 */	stw r31, 0xa24(r5)
/* 8021C860 002184C0  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C864 002184C4  90 E5 0A 28 */	stw r7, 0xa28(r5)
/* 8021C868 002184C8  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C86C 002184CC  90 C5 0A 2C */	stw r6, 0xa2c(r5)
/* 8021C870 002184D0  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C874 002184D4  90 C5 0A 30 */	stw r6, 0xa30(r5)
/* 8021C878 002184D8  80 DD 16 38 */	lwz r6, 0x1638(r29)
/* 8021C87C 002184DC  80 A6 00 64 */	lwz r5, 0x64(r6)
/* 8021C880 002184E0  60 A5 00 01 */	ori r5, r5, 1
/* 8021C884 002184E4  90 A6 00 64 */	stw r5, 0x64(r6)
/* 8021C888 002184E8  80 DD 16 38 */	lwz r6, 0x1638(r29)
/* 8021C88C 002184EC  80 A6 00 00 */	lwz r5, 0(r6)
/* 8021C890 002184F0  60 A5 00 40 */	ori r5, r5, 0x40
/* 8021C894 002184F4  90 A6 00 00 */	stw r5, 0(r6)
/* 8021C898 002184F8  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C89C 002184FC  98 05 01 2C */	stb r0, 0x12c(r5)
/* 8021C8A0 00218500  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C8A4 00218504  93 C5 01 30 */	stw r30, 0x130(r5)
/* 8021C8A8 00218508  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C8AC 0021850C  80 05 00 04 */	lwz r0, 4(r5)
/* 8021C8B0 00218510  60 00 00 04 */	ori r0, r0, 4
/* 8021C8B4 00218514  90 05 00 04 */	stw r0, 4(r5)
/* 8021C8B8 00218518  80 BD 16 38 */	lwz r5, 0x1638(r29)
/* 8021C8BC 0021851C  80 05 00 00 */	lwz r0, 0(r5)
/* 8021C8C0 00218520  60 00 00 01 */	ori r0, r0, 1
/* 8021C8C4 00218524  90 05 00 00 */	stw r0, 0(r5)
/* 8021C8C8 00218528  48 01 6C 65 */	bl begin_drawing
/* 8021C8CC 0021852C  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C8D0 00218530  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8021C8D4 00218534  38 00 00 FF */	li r0, 0xff
/* 8021C8D8 00218538  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8021C8DC 0021853C  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C8E0 00218540  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C8E4 00218544  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C8E8 00218548  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C8EC 0021854C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C8F0 00218550  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C8F4 00218554  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C8F8 00218558  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C8FC 0021855C  C0 02 9B 7C */	lfs f0, lbl_8064217C-_SDA2_BASE_(r2)
/* 8021C900 00218560  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C904 00218564  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C908 00218568  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C90C 0021856C  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C910 00218570  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C914 00218574  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C918 00218578  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C91C 0021857C  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C920 00218580  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C924 00218584  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C928 00218588  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C92C 0021858C  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C930 00218590  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C934 00218594  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C938 00218598  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C93C 0021859C  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C940 002185A0  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C944 002185A4  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C948 002185A8  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C94C 002185AC  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C950 002185B0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C954 002185B4  C0 02 9B 7C */	lfs f0, lbl_8064217C-_SDA2_BASE_(r2)
/* 8021C958 002185B8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C95C 002185BC  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C960 002185C0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C964 002185C4  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C968 002185C8  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C96C 002185CC  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C970 002185D0  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C974 002185D4  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C978 002185D8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C97C 002185DC  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C980 002185E0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C984 002185E4  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C988 002185E8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C98C 002185EC  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C990 002185F0  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C994 002185F4  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C998 002185F8  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C99C 002185FC  7F A3 EB 78 */	mr r3, r29
/* 8021C9A0 00218600  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C9A4 00218604  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C9A8 00218608  C0 02 9B 60 */	lfs f0, lbl_80642160-_SDA2_BASE_(r2)
/* 8021C9AC 0021860C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C9B0 00218610  C0 02 9B 7C */	lfs f0, lbl_8064217C-_SDA2_BASE_(r2)
/* 8021C9B4 00218614  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8021C9B8 00218618  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C9BC 0021861C  9B C4 80 00 */	stb r30, -0x8000(r4)
/* 8021C9C0 00218620  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C9C4 00218624  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8021C9C8 00218628  48 01 6B B9 */	bl end_drawing
/* 8021C9CC 0021862C  3B 60 00 00 */	li r27, 0
/* 8021C9D0 00218630  3B 40 00 00 */	li r26, 0
/* 8021C9D4 00218634  3B 20 00 00 */	li r25, 0
/* 8021C9D8 00218638  48 00 00 68 */	b lbl_8021CA40
lbl_8021C9DC:
/* 8021C9DC 0021863C  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021C9E0 00218640  57 3E 13 BA */	rlwinm r30, r25, 2, 0xe, 0x1d
/* 8021C9E4 00218644  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8021C9E8 00218648  2C 03 00 00 */	cmpwi r3, 0
/* 8021C9EC 0021864C  41 82 00 50 */	beq lbl_8021CA3C
/* 8021C9F0 00218650  88 03 00 00 */	lbz r0, 0(r3)
/* 8021C9F4 00218654  28 00 00 01 */	cmplwi r0, 1
/* 8021C9F8 00218658  40 82 00 14 */	bne lbl_8021CA0C
/* 8021C9FC 0021865C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8021CA00 00218660  2C 03 00 00 */	cmpwi r3, 0
/* 8021CA04 00218664  41 82 00 08 */	beq lbl_8021CA0C
/* 8021CA08 00218668  9B E3 00 14 */	stb r31, 0x14(r3)
lbl_8021CA0C:
/* 8021CA0C 0021866C  A8 8D 85 50 */	lha r4, lbl_8063D810-_SDA_BASE_(r13)
/* 8021CA10 00218670  7F 85 E3 78 */	mr r5, r28
/* 8021CA14 00218674  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 8021CA18 00218678  4B FF FA 39 */	bl func_8021C450
/* 8021CA1C 0021867C  80 6D A2 78 */	lwz r3, lbl_8063F538-_SDA_BASE_(r13)
/* 8021CA20 00218680  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8021CA24 00218684  4B FF F5 55 */	bl func_8021BF78
/* 8021CA28 00218688  80 8D A2 78 */	lwz r4, lbl_8063F538-_SDA_BASE_(r13)
/* 8021CA2C 0021868C  7F 7B 1A 14 */	add r27, r27, r3
/* 8021CA30 00218690  7C 64 F0 2E */	lwzx r3, r4, r30
/* 8021CA34 00218694  4B FF F5 4D */	bl func_8021BF80
/* 8021CA38 00218698  7F 5A 1A 14 */	add r26, r26, r3
lbl_8021CA3C:
/* 8021CA3C 0021869C  3B 39 00 01 */	addi r25, r25, 1
lbl_8021CA40:
/* 8021CA40 002186A0  A0 0D A2 76 */	lhz r0, lbl_8063F536-_SDA_BASE_(r13)
/* 8021CA44 002186A4  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 8021CA48 002186A8  7C 03 00 40 */	cmplw r3, r0
/* 8021CA4C 002186AC  41 80 FF 90 */	blt lbl_8021C9DC
/* 8021CA50 002186B0  80 9D 16 E8 */	lwz r4, 0x16e8(r29)
/* 8021CA54 002186B4  80 64 00 04 */	lwz r3, 4(r4)
/* 8021CA58 002186B8  38 03 FF 6C */	addi r0, r3, -148
/* 8021CA5C 002186BC  90 04 00 04 */	stw r0, 4(r4)
lbl_8021CA60:
/* 8021CA60 002186C0  39 61 00 60 */	addi r11, r1, 0x60
/* 8021CA64 002186C4  4B FA A7 09 */	bl _restgpr_25
/* 8021CA68 002186C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8021CA6C 002186CC  7C 08 03 A6 */	mtlr r0
/* 8021CA70 002186D0  38 21 00 60 */	addi r1, r1, 0x60
/* 8021CA74 002186D4  4E 80 00 20 */	blr

.global func_8021CA78
func_8021CA78:
/* 8021CA78 002186D8  38 60 00 02 */	li r3, 2
/* 8021CA7C 002186DC  4E 80 00 20 */	blr

.global func_8021CA80
func_8021CA80:
/* 8021CA80 002186E0  38 A0 00 01 */	li r5, 1
/* 8021CA84 002186E4  38 6D A2 68 */	addi r3, r13, lbl_8063F528-_SDA_BASE_
/* 8021CA88 002186E8  38 80 00 04 */	li r4, 4
/* 8021CA8C 002186EC  38 00 00 00 */	li r0, 0
/* 8021CA90 002186F0  98 AD A2 68 */	stb r5, lbl_8063F528-_SDA_BASE_(r13)
/* 8021CA94 002186F4  B0 83 00 02 */	sth r4, 2(r3)
/* 8021CA98 002186F8  98 03 00 04 */	stb r0, 4(r3)
/* 8021CA9C 002186FC  4E 80 00 20 */	blr
