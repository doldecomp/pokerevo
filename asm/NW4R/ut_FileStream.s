.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global Skip__Q44nw4r2ut10FileStream12FilePositionFl
Skip__Q44nw4r2ut10FileStream12FilePositionFl:
/* 80363510 0035F170  2C 04 00 00 */	cmpwi r4, 0
/* 80363514 0035F174  41 82 00 58 */	beq lbl_8036356C
/* 80363518 0035F178  80 03 00 04 */	lwz r0, 4(r3)
/* 8036351C 0035F17C  38 A0 00 00 */	li r5, 0
/* 80363520 0035F180  80 C3 00 00 */	lwz r6, 0(r3)
/* 80363524 0035F184  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80363528 0035F188  7C E0 22 14 */	add r7, r0, r4
/* 8036352C 0035F18C  7C 07 30 10 */	subfc r0, r7, r6
/* 80363530 0035F190  7C 05 29 10 */	subfe r0, r5, r5
/* 80363534 0035F194  7C 05 29 10 */	subfe r0, r5, r5
/* 80363538 0035F198  7C 00 00 D1 */	neg. r0, r0
/* 8036353C 0035F19C  41 82 00 08 */	beq lbl_80363544
/* 80363540 0035F1A0  48 00 00 28 */	b lbl_80363568
lbl_80363544:
/* 80363544 0035F1A4  38 C0 00 00 */	li r6, 0
/* 80363548 0035F1A8  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8036354C 0035F1AC  7C 06 38 10 */	subfc r0, r6, r7
/* 80363550 0035F1B0  7C 84 29 10 */	subfe r4, r4, r5
/* 80363554 0035F1B4  7C 85 29 10 */	subfe r4, r5, r5
/* 80363558 0035F1B8  7C 84 00 D1 */	neg. r4, r4
/* 8036355C 0035F1BC  41 82 00 08 */	beq lbl_80363564
/* 80363560 0035F1C0  48 00 00 08 */	b lbl_80363568
lbl_80363564:
/* 80363564 0035F1C4  7C E6 3B 78 */	mr r6, r7
lbl_80363568:
/* 80363568 0035F1C8  90 C3 00 04 */	stw r6, 4(r3)
lbl_8036356C:
/* 8036356C 0035F1CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80363570 0035F1D0  4E 80 00 20 */	blr

.global Seek__Q44nw4r2ut10FileStream12FilePositionFlUl
Seek__Q44nw4r2ut10FileStream12FilePositionFlUl:
/* 80363574 0035F1D4  2C 05 00 01 */	cmpwi r5, 1
/* 80363578 0035F1D8  41 82 00 34 */	beq lbl_803635AC
/* 8036357C 0035F1DC  40 80 00 10 */	bge lbl_8036358C
/* 80363580 0035F1E0  2C 05 00 00 */	cmpwi r5, 0
/* 80363584 0035F1E4  40 80 00 14 */	bge lbl_80363598
/* 80363588 0035F1E8  48 00 00 24 */	b lbl_803635AC
lbl_8036358C:
/* 8036358C 0035F1EC  2C 05 00 03 */	cmpwi r5, 3
/* 80363590 0035F1F0  40 80 00 1C */	bge lbl_803635AC
/* 80363594 0035F1F4  48 00 00 10 */	b lbl_803635A4
lbl_80363598:
/* 80363598 0035F1F8  38 00 00 00 */	li r0, 0
/* 8036359C 0035F1FC  90 03 00 04 */	stw r0, 4(r3)
/* 803635A0 0035F200  48 00 00 0C */	b lbl_803635AC
lbl_803635A4:
/* 803635A4 0035F204  80 03 00 00 */	lwz r0, 0(r3)
/* 803635A8 0035F208  90 03 00 04 */	stw r0, 4(r3)
lbl_803635AC:
/* 803635AC 0035F20C  2C 04 00 00 */	cmpwi r4, 0
/* 803635B0 0035F210  4D 82 00 20 */	beqlr
/* 803635B4 0035F214  80 03 00 04 */	lwz r0, 4(r3)
/* 803635B8 0035F218  38 A0 00 00 */	li r5, 0
/* 803635BC 0035F21C  80 C3 00 00 */	lwz r6, 0(r3)
/* 803635C0 0035F220  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 803635C4 0035F224  7C E0 22 14 */	add r7, r0, r4
/* 803635C8 0035F228  7C 07 30 10 */	subfc r0, r7, r6
/* 803635CC 0035F22C  7C 05 29 10 */	subfe r0, r5, r5
/* 803635D0 0035F230  7C 05 29 10 */	subfe r0, r5, r5
/* 803635D4 0035F234  7C 00 00 D1 */	neg. r0, r0
/* 803635D8 0035F238  41 82 00 08 */	beq lbl_803635E0
/* 803635DC 0035F23C  48 00 00 28 */	b lbl_80363604
lbl_803635E0:
/* 803635E0 0035F240  38 C0 00 00 */	li r6, 0
/* 803635E4 0035F244  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 803635E8 0035F248  7C 06 38 10 */	subfc r0, r6, r7
/* 803635EC 0035F24C  7C 84 29 10 */	subfe r4, r4, r5
/* 803635F0 0035F250  7C 85 29 10 */	subfe r4, r5, r5
/* 803635F4 0035F254  7C 84 00 D1 */	neg. r4, r4
/* 803635F8 0035F258  41 82 00 08 */	beq lbl_80363600
/* 803635FC 0035F25C  48 00 00 08 */	b lbl_80363604
lbl_80363600:
/* 80363600 0035F260  7C E6 3B 78 */	mr r6, r7
lbl_80363604:
/* 80363604 0035F264  90 C3 00 04 */	stw r6, 4(r3)
/* 80363608 0035F268  4E 80 00 20 */	blr

.global __sinit_$3ut_FileStream_cpp
__sinit_$3ut_FileStream_cpp:
/* 8036360C 0035F26C  38 0D B1 A0 */	addi r0, r13, lbl_80640460-_SDA_BASE_
/* 80363610 0035F270  90 0D B1 A8 */	stw r0, lbl_80640468-_SDA_BASE_(r13)
/* 80363614 0035F274  4E 80 00 20 */	blr