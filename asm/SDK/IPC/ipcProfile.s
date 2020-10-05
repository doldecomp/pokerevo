.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global IPCiProfInit
IPCiProfInit:
/* 802A4528 002A0188  38 80 00 00 */	li r4, 0
/* 802A452C 002A018C  3C A0 80 53 */	lis r5, lbl_80536CB0@ha
/* 802A4530 002A0190  3C C0 80 53 */	lis r6, lbl_80536C30@ha
/* 802A4534 002A0194  38 00 00 02 */	li r0, 2
/* 802A4538 002A0198  90 8D AE 10 */	stw r4, lbl_806400D0-_SDA_BASE_(r13)
/* 802A453C 002A019C  38 A5 6C B0 */	addi r5, r5, lbl_80536CB0@l
/* 802A4540 002A01A0  38 C6 6C 30 */	addi r6, r6, lbl_80536C30@l
/* 802A4544 002A01A4  38 60 FF FF */	li r3, -1
/* 802A4548 002A01A8  90 8D AE 14 */	stw r4, lbl_806400D4-_SDA_BASE_(r13)
/* 802A454C 002A01AC  7C 09 03 A6 */	mtctr r0
lbl_802A4550:
/* 802A4550 002A01B0  90 85 00 00 */	stw r4, 0(r5)
/* 802A4554 002A01B4  90 66 00 00 */	stw r3, 0(r6)
/* 802A4558 002A01B8  90 85 00 04 */	stw r4, 4(r5)
/* 802A455C 002A01BC  90 66 00 04 */	stw r3, 4(r6)
/* 802A4560 002A01C0  90 85 00 08 */	stw r4, 8(r5)
/* 802A4564 002A01C4  90 66 00 08 */	stw r3, 8(r6)
/* 802A4568 002A01C8  90 85 00 0C */	stw r4, 0xc(r5)
/* 802A456C 002A01CC  90 66 00 0C */	stw r3, 0xc(r6)
/* 802A4570 002A01D0  90 85 00 10 */	stw r4, 0x10(r5)
/* 802A4574 002A01D4  90 66 00 10 */	stw r3, 0x10(r6)
/* 802A4578 002A01D8  90 85 00 14 */	stw r4, 0x14(r5)
/* 802A457C 002A01DC  90 66 00 14 */	stw r3, 0x14(r6)
/* 802A4580 002A01E0  90 85 00 18 */	stw r4, 0x18(r5)
/* 802A4584 002A01E4  90 66 00 18 */	stw r3, 0x18(r6)
/* 802A4588 002A01E8  90 85 00 1C */	stw r4, 0x1c(r5)
/* 802A458C 002A01EC  90 66 00 1C */	stw r3, 0x1c(r6)
/* 802A4590 002A01F0  90 85 00 20 */	stw r4, 0x20(r5)
/* 802A4594 002A01F4  90 66 00 20 */	stw r3, 0x20(r6)
/* 802A4598 002A01F8  90 85 00 24 */	stw r4, 0x24(r5)
/* 802A459C 002A01FC  90 66 00 24 */	stw r3, 0x24(r6)
/* 802A45A0 002A0200  90 85 00 28 */	stw r4, 0x28(r5)
/* 802A45A4 002A0204  90 66 00 28 */	stw r3, 0x28(r6)
/* 802A45A8 002A0208  90 85 00 2C */	stw r4, 0x2c(r5)
/* 802A45AC 002A020C  90 66 00 2C */	stw r3, 0x2c(r6)
/* 802A45B0 002A0210  90 85 00 30 */	stw r4, 0x30(r5)
/* 802A45B4 002A0214  90 66 00 30 */	stw r3, 0x30(r6)
/* 802A45B8 002A0218  90 85 00 34 */	stw r4, 0x34(r5)
/* 802A45BC 002A021C  90 66 00 34 */	stw r3, 0x34(r6)
/* 802A45C0 002A0220  90 85 00 38 */	stw r4, 0x38(r5)
/* 802A45C4 002A0224  90 66 00 38 */	stw r3, 0x38(r6)
/* 802A45C8 002A0228  90 85 00 3C */	stw r4, 0x3c(r5)
/* 802A45CC 002A022C  38 A5 00 40 */	addi r5, r5, 0x40
/* 802A45D0 002A0230  90 66 00 3C */	stw r3, 0x3c(r6)
/* 802A45D4 002A0234  38 C6 00 40 */	addi r6, r6, 0x40
/* 802A45D8 002A0238  42 00 FF 78 */	bdnz lbl_802A4550
/* 802A45DC 002A023C  4E 80 00 20 */	blr

.global IPCiProfQueueReq
IPCiProfQueueReq:
/* 802A45E0 002A0240  80 CD AE 10 */	lwz r6, lbl_806400D0-_SDA_BASE_(r13)
/* 802A45E4 002A0244  3D 00 80 53 */	lis r8, lbl_80536CB0@ha
/* 802A45E8 002A0248  80 AD AE 14 */	lwz r5, lbl_806400D4-_SDA_BASE_(r13)
/* 802A45EC 002A024C  3D 20 80 53 */	lis r9, lbl_80536C30@ha
/* 802A45F0 002A0250  38 C6 00 01 */	addi r6, r6, 1
/* 802A45F4 002A0254  38 00 00 20 */	li r0, 0x20
/* 802A45F8 002A0258  38 A5 00 01 */	addi r5, r5, 1
/* 802A45FC 002A025C  90 CD AE 10 */	stw r6, lbl_806400D0-_SDA_BASE_(r13)
/* 802A4600 002A0260  39 08 6C B0 */	addi r8, r8, lbl_80536CB0@l
/* 802A4604 002A0264  39 29 6C 30 */	addi r9, r9, lbl_80536C30@l
/* 802A4608 002A0268  90 AD AE 14 */	stw r5, lbl_806400D4-_SDA_BASE_(r13)
/* 802A460C 002A026C  38 E0 00 00 */	li r7, 0
/* 802A4610 002A0270  7C 09 03 A6 */	mtctr r0
lbl_802A4614:
/* 802A4614 002A0274  80 08 00 00 */	lwz r0, 0(r8)
/* 802A4618 002A0278  2C 00 00 00 */	cmpwi r0, 0
/* 802A461C 002A027C  40 82 00 30 */	bne lbl_802A464C
/* 802A4620 002A0280  80 09 00 00 */	lwz r0, 0(r9)
/* 802A4624 002A0284  2C 00 FF FF */	cmpwi r0, -1
/* 802A4628 002A0288  40 82 00 24 */	bne lbl_802A464C
/* 802A462C 002A028C  3C C0 80 53 */	lis r6, lbl_80536CB0@ha
/* 802A4630 002A0290  3C A0 80 53 */	lis r5, lbl_80536C30@ha
/* 802A4634 002A0294  54 E0 10 3A */	slwi r0, r7, 2
/* 802A4638 002A0298  38 C6 6C B0 */	addi r6, r6, lbl_80536CB0@l
/* 802A463C 002A029C  38 A5 6C 30 */	addi r5, r5, lbl_80536C30@l
/* 802A4640 002A02A0  7C 66 01 2E */	stwx r3, r6, r0
/* 802A4644 002A02A4  7C 85 01 2E */	stwx r4, r5, r0
/* 802A4648 002A02A8  4E 80 00 20 */	blr
lbl_802A464C:
/* 802A464C 002A02AC  39 08 00 04 */	addi r8, r8, 4
/* 802A4650 002A02B0  39 29 00 04 */	addi r9, r9, 4
/* 802A4654 002A02B4  38 E7 00 01 */	addi r7, r7, 1
/* 802A4658 002A02B8  42 00 FF BC */	bdnz lbl_802A4614
/* 802A465C 002A02BC  4E 80 00 20 */	blr

.global IPCiProfAck
IPCiProfAck:
/* 802A4660 002A02C0  80 6D AE 14 */	lwz r3, lbl_806400D4-_SDA_BASE_(r13)
/* 802A4664 002A02C4  38 03 FF FF */	addi r0, r3, -1
/* 802A4668 002A02C8  90 0D AE 14 */	stw r0, lbl_806400D4-_SDA_BASE_(r13)
/* 802A466C 002A02CC  4E 80 00 20 */	blr

.global IPCiProfReply
IPCiProfReply:
/* 802A4670 002A02D0  80 AD AE 10 */	lwz r5, lbl_806400D0-_SDA_BASE_(r13)
/* 802A4674 002A02D4  3C C0 80 53 */	lis r6, lbl_80536CB0@ha
/* 802A4678 002A02D8  3C E0 80 53 */	lis r7, lbl_80536C30@ha
/* 802A467C 002A02DC  38 00 00 20 */	li r0, 0x20
/* 802A4680 002A02E0  38 A5 FF FF */	addi r5, r5, -1
/* 802A4684 002A02E4  38 C6 6C B0 */	addi r6, r6, lbl_80536CB0@l
/* 802A4688 002A02E8  90 AD AE 10 */	stw r5, lbl_806400D0-_SDA_BASE_(r13)
/* 802A468C 002A02EC  38 E7 6C 30 */	addi r7, r7, lbl_80536C30@l
/* 802A4690 002A02F0  38 A0 00 00 */	li r5, 0
/* 802A4694 002A02F4  7C 09 03 A6 */	mtctr r0
lbl_802A4698:
/* 802A4698 002A02F8  80 06 00 00 */	lwz r0, 0(r6)
/* 802A469C 002A02FC  7C 03 00 40 */	cmplw r3, r0
/* 802A46A0 002A0300  40 82 00 38 */	bne lbl_802A46D8
/* 802A46A4 002A0304  80 07 00 00 */	lwz r0, 0(r7)
/* 802A46A8 002A0308  7C 04 00 00 */	cmpw r4, r0
/* 802A46AC 002A030C  40 82 00 2C */	bne lbl_802A46D8
/* 802A46B0 002A0310  3C 80 80 53 */	lis r4, lbl_80536CB0@ha
/* 802A46B4 002A0314  3C 60 80 53 */	lis r3, lbl_80536C30@ha
/* 802A46B8 002A0318  54 A6 10 3A */	slwi r6, r5, 2
/* 802A46BC 002A031C  38 A0 00 00 */	li r5, 0
/* 802A46C0 002A0320  38 84 6C B0 */	addi r4, r4, lbl_80536CB0@l
/* 802A46C4 002A0324  38 63 6C 30 */	addi r3, r3, lbl_80536C30@l
/* 802A46C8 002A0328  38 00 FF FF */	li r0, -1
/* 802A46CC 002A032C  7C A4 31 2E */	stwx r5, r4, r6
/* 802A46D0 002A0330  7C 03 31 2E */	stwx r0, r3, r6
/* 802A46D4 002A0334  4E 80 00 20 */	blr
lbl_802A46D8:
/* 802A46D8 002A0338  38 C6 00 04 */	addi r6, r6, 4
/* 802A46DC 002A033C  38 E7 00 04 */	addi r7, r7, 4
/* 802A46E0 002A0340  38 A5 00 01 */	addi r5, r5, 1
/* 802A46E4 002A0344  42 00 FF B4 */	bdnz lbl_802A4698
/* 802A46E8 002A0348  4E 80 00 20 */	blr