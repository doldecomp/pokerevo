.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GXSetFog
GXSetFog:
/* 802841C0 0027FE20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802841C4 0027FE24  7C 08 02 A6 */	mflr r0
/* 802841C8 0027FE28  90 01 00 44 */	stw r0, 0x44(r1)
/* 802841CC 0027FE2C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802841D0 0027FE30  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802841D4 0027FE34  39 00 00 00 */	li r8, 0
/* 802841D8 0027FE38  39 20 00 00 */	li r9, 0
/* 802841DC 0027FE3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802841E0 0027FE40  54 7F 07 7E */	clrlwi r31, r3, 0x1d
/* 802841E4 0027FE44  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802841E8 0027FE48  54 7E EF FF */	rlwinm. r30, r3, 0x1d, 0x1f, 0x1f
/* 802841EC 0027FE4C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802841F0 0027FE50  7C 9D 23 78 */	mr r29, r4
/* 802841F4 0027FE54  93 81 00 20 */	stw r28, 0x20(r1)
/* 802841F8 0027FE58  41 82 00 4C */	beq lbl_80284244
/* 802841FC 0027FE5C  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 80284200 0027FE60  41 82 00 0C */	beq lbl_8028420C
/* 80284204 0027FE64  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80284208 0027FE68  40 82 00 14 */	bne lbl_8028421C
lbl_8028420C:
/* 8028420C 0027FE6C  C0 02 A1 80 */	lfs f0, lbl_80642780-_SDA2_BASE_(r2)
/* 80284210 0027FE70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80284214 0027FE74  D0 01 00 08 */	stfs f0, 8(r1)
/* 80284218 0027FE78  48 00 01 1C */	b lbl_80284334
lbl_8028421C:
/* 8028421C 0027FE7C  EC C2 08 28 */	fsubs f6, f2, f1
/* 80284220 0027FE80  C0 A2 A1 84 */	lfs f5, lbl_80642784-_SDA2_BASE_(r2)
/* 80284224 0027FE84  EC 44 18 28 */	fsubs f2, f4, f3
/* 80284228 0027FE88  EC 01 18 28 */	fsubs f0, f1, f3
/* 8028422C 0027FE8C  EC 65 30 24 */	fdivs f3, f5, f6
/* 80284230 0027FE90  EC 23 00 B2 */	fmuls f1, f3, f2
/* 80284234 0027FE94  EC 03 00 32 */	fmuls f0, f3, f0
/* 80284238 0027FE98  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8028423C 0027FE9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80284240 0027FEA0  48 00 00 F4 */	b lbl_80284334
lbl_80284244:
/* 80284244 0027FEA4  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 80284248 0027FEA8  41 82 00 0C */	beq lbl_80284254
/* 8028424C 0027FEAC  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80284250 0027FEB0  40 82 00 14 */	bne lbl_80284264
lbl_80284254:
/* 80284254 0027FEB4  C0 62 A1 80 */	lfs f3, lbl_80642780-_SDA2_BASE_(r2)
/* 80284258 0027FEB8  C0 82 A1 88 */	lfs f4, lbl_80642788-_SDA2_BASE_(r2)
/* 8028425C 0027FEBC  FF E0 18 90 */	fmr f31, f3
/* 80284260 0027FEC0  48 00 00 20 */	b lbl_80284280
lbl_80284264:
/* 80284264 0027FEC4  EC 04 18 28 */	fsubs f0, f4, f3
/* 80284268 0027FEC8  EC 42 08 28 */	fsubs f2, f2, f1
/* 8028426C 0027FECC  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80284270 0027FED0  EC 84 00 24 */	fdivs f4, f4, f0
/* 80284274 0027FED4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80284278 0027FED8  EF E1 10 24 */	fdivs f31, f1, f2
/* 8028427C 0027FEDC  EC 63 00 24 */	fdivs f3, f3, f0
lbl_80284280:
/* 80284280 0027FEE0  C0 22 A1 88 */	lfs f1, lbl_80642788-_SDA2_BASE_(r2)
/* 80284284 0027FEE4  3B 80 00 00 */	li r28, 0
/* 80284288 0027FEE8  C8 02 A1 90 */	lfd f0, lbl_80642790-_SDA2_BASE_(r2)
/* 8028428C 0027FEEC  48 00 00 0C */	b lbl_80284298
lbl_80284290:
/* 80284290 0027FEF0  EC 84 00 72 */	fmuls f4, f4, f1
/* 80284294 0027FEF4  3B 9C 00 01 */	addi r28, r28, 1
lbl_80284298:
/* 80284298 0027FEF8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8028429C 0027FEFC  41 81 FF F4 */	bgt lbl_80284290
/* 802842A0 0027FF00  C8 02 A1 A0 */	lfd f0, lbl_806427A0-_SDA2_BASE_(r2)
/* 802842A4 0027FF04  C0 42 A1 98 */	lfs f2, lbl_80642798-_SDA2_BASE_(r2)
/* 802842A8 0027FF08  C0 22 A1 80 */	lfs f1, lbl_80642780-_SDA2_BASE_(r2)
/* 802842AC 0027FF0C  48 00 00 0C */	b lbl_802842B8
lbl_802842B0:
/* 802842B0 0027FF10  EC 84 00 B2 */	fmuls f4, f4, f2
/* 802842B4 0027FF14  3B 9C FF FF */	addi r28, r28, -1
lbl_802842B8:
/* 802842B8 0027FF18  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 802842BC 0027FF1C  7C 00 00 26 */	mfcr r0
/* 802842C0 0027FF20  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 802842C4 0027FF24  41 82 00 0C */	beq lbl_802842D0
/* 802842C8 0027FF28  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802842CC 0027FF2C  41 80 FF E4 */	blt lbl_802842B0
lbl_802842D0:
/* 802842D0 0027FF30  38 1C 00 01 */	addi r0, r28, 1
/* 802842D4 0027FF34  38 60 00 01 */	li r3, 1
/* 802842D8 0027FF38  7C 63 00 30 */	slw r3, r3, r0
/* 802842DC 0027FF3C  C0 02 A1 A8 */	lfs f0, lbl_806427A8-_SDA2_BASE_(r2)
/* 802842E0 0027FF40  3C 00 43 30 */	lis r0, 0x4330
/* 802842E4 0027FF44  C8 42 A1 B0 */	lfd f2, lbl_806427B0-_SDA2_BASE_(r2)
/* 802842E8 0027FF48  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802842EC 0027FF4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802842F0 0027FF50  EC 20 01 32 */	fmuls f1, f0, f4
/* 802842F4 0027FF54  90 61 00 14 */	stw r3, 0x14(r1)
/* 802842F8 0027FF58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802842FC 0027FF5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80284300 0027FF60  EC 03 00 24 */	fdivs f0, f3, f0
/* 80284304 0027FF64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80284308 0027FF68  4B F4 2C F9 */	bl __cvt_fp2unsigned
/* 8028430C 0027FF6C  38 1C 00 01 */	addi r0, r28, 1
/* 80284310 0027FF70  39 00 00 00 */	li r8, 0
/* 80284314 0027FF74  50 68 02 3E */	rlwimi r8, r3, 0, 8, 0x1f
/* 80284318 0027FF78  39 20 00 00 */	li r9, 0
/* 8028431C 0027FF7C  50 09 06 FE */	rlwimi r9, r0, 0, 0x1b, 0x1f
/* 80284320 0027FF80  38 60 00 EF */	li r3, 0xef
/* 80284324 0027FF84  38 00 00 F0 */	li r0, 0xf0
/* 80284328 0027FF88  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8028432C 0027FF8C  50 68 C0 0E */	rlwimi r8, r3, 0x18, 0, 7
/* 80284330 0027FF90  50 09 C0 0E */	rlwimi r9, r0, 0x18, 0, 7
lbl_80284334:
/* 80284334 0027FF94  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80284338 0027FF98  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8028433C 0027FF9C  38 A0 00 61 */	li r5, 0x61
/* 80284340 0027FFA0  38 00 00 EE */	li r0, 0xee
/* 80284344 0027FFA4  38 C0 00 00 */	li r6, 0
/* 80284348 0027FFA8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8028434C 0027FFAC  50 66 A5 7E */	rlwimi r6, r3, 0x14, 0x15, 0x1f
/* 80284350 0027FFB0  81 41 00 08 */	lwz r10, 8(r1)
/* 80284354 0027FFB4  50 66 A3 68 */	rlwimi r6, r3, 0x14, 0xd, 0x14
/* 80284358 0027FFB8  38 E0 00 00 */	li r7, 0
/* 8028435C 0027FFBC  50 66 A3 18 */	rlwimi r6, r3, 0x14, 0xc, 0xc
/* 80284360 0027FFC0  38 60 00 F1 */	li r3, 0xf1
/* 80284364 0027FFC4  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 80284368 0027FFC8  51 47 A5 7E */	rlwimi r7, r10, 0x14, 0x15, 0x1f
/* 8028436C 0027FFCC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80284370 0027FFD0  51 47 A3 68 */	rlwimi r7, r10, 0x14, 0xd, 0x14
/* 80284374 0027FFD4  51 47 A3 18 */	rlwimi r7, r10, 0x14, 0xc, 0xc
/* 80284378 0027FFD8  80 1D 00 00 */	lwz r0, 0(r29)
/* 8028437C 0027FFDC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 80284380 0027FFE0  53 C7 A2 D6 */	rlwimi r7, r30, 0x14, 0xb, 0xb
/* 80284384 0027FFE4  53 E7 AA 14 */	rlwimi r7, r31, 0x15, 8, 0xa
/* 80284388 0027FFE8  38 C0 00 00 */	li r6, 0
/* 8028438C 0027FFEC  91 04 80 00 */	stw r8, -0x8000(r4)
/* 80284390 0027FFF0  50 67 C0 0E */	rlwimi r7, r3, 0x18, 0, 7
/* 80284394 0027FFF4  50 06 C2 3E */	rlwimi r6, r0, 0x18, 8, 0x1f
/* 80284398 0027FFF8  38 00 00 F2 */	li r0, 0xf2
/* 8028439C 0027FFFC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 802843A0 00280000  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 802843A4 00280004  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 802843A8 00280008  38 00 00 00 */	li r0, 0
/* 802843AC 0028000C  91 24 80 00 */	stw r9, -0x8000(r4)
/* 802843B0 00280010  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 802843B4 00280014  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 802843B8 00280018  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 802843BC 0028001C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 802843C0 00280020  B0 03 00 02 */	sth r0, 2(r3)
/* 802843C4 00280024  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 802843C8 00280028  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802843CC 0028002C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802843D0 00280030  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802843D4 00280034  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802843D8 00280038  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802843DC 0028003C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802843E0 00280040  7C 08 03 A6 */	mtlr r0
/* 802843E4 00280044  38 21 00 40 */	addi r1, r1, 0x40
/* 802843E8 00280048  4E 80 00 20 */	blr

.global GXSetFogColor
GXSetFogColor:
/* 802843EC 0028004C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 802843F0 00280050  38 00 00 61 */	li r0, 0x61
/* 802843F4 00280054  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 802843F8 00280058  3C A0 F2 00 */	lis r5, 0xf200
/* 802843FC 0028005C  80 63 00 00 */	lwz r3, 0(r3)
/* 80284400 00280060  38 00 00 00 */	li r0, 0
/* 80284404 00280064  50 65 C2 3E */	rlwimi r5, r3, 0x18, 8, 0x1f
/* 80284408 00280068  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 8028440C 0028006C  90 A4 80 00 */	stw r5, -0x8000(r4)
/* 80284410 00280070  B0 03 00 02 */	sth r0, 2(r3)
/* 80284414 00280074  4E 80 00 20 */	blr

.global GXInitFogAdjTable
GXInitFogAdjTable:
/* 80284418 00280078  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8028441C 0028007C  7C 08 02 A6 */	mflr r0
/* 80284420 00280080  90 01 00 84 */	stw r0, 0x84(r1)
/* 80284424 00280084  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80284428 00280088  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8028442C 0028008C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80284430 00280090  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80284434 00280094  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80284438 00280098  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 8028443C 0028009C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80284440 002800A0  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 80284444 002800A4  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 80284448 002800A8  F3 61 00 38 */	psq_st f27, 56(r1), 0, qr0
/* 8028444C 002800AC  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 80284450 002800B0  F3 41 00 28 */	psq_st f26, 40(r1), 0, qr0
/* 80284454 002800B4  C8 22 A1 B8 */	lfd f1, lbl_806427B8-_SDA2_BASE_(r2)
/* 80284458 002800B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028445C 002800BC  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 80284460 002800C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80284464 002800C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80284468 002800C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8028446C 002800CC  40 82 00 24 */	bne lbl_80284490
/* 80284470 002800D0  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 80284474 002800D4  C0 02 A1 84 */	lfs f0, lbl_80642784-_SDA2_BASE_(r2)
/* 80284478 002800D8  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 8028447C 002800DC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80284480 002800E0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80284484 002800E4  EC 21 10 24 */	fdivs f1, f1, f2
/* 80284488 002800E8  EF 41 00 24 */	fdivs f26, f1, f0
/* 8028448C 002800EC  48 00 00 18 */	b lbl_802844A4
lbl_80284490:
/* 80284490 002800F0  C0 42 A1 84 */	lfs f2, lbl_80642784-_SDA2_BASE_(r2)
/* 80284494 002800F4  C0 25 00 00 */	lfs f1, 0(r5)
/* 80284498 002800F8  C0 02 A1 C0 */	lfs f0, lbl_806427C0-_SDA2_BASE_(r2)
/* 8028449C 002800FC  EF 42 08 24 */	fdivs f26, f2, f1
/* 802844A0 00280100  EC 20 06 B2 */	fmuls f1, f0, f26
lbl_802844A4:
/* 802844A4 00280104  3F E0 43 30 */	lis r31, 0x4330
/* 802844A8 00280108  90 81 00 0C */	stw r4, 0xc(r1)
/* 802844AC 0028010C  CB 82 A1 C8 */	lfd f28, lbl_806427C8-_SDA2_BASE_(r2)
/* 802844B0 00280110  EF A1 00 72 */	fmuls f29, f1, f1
/* 802844B4 00280114  93 E1 00 08 */	stw r31, 8(r1)
/* 802844B8 00280118  7C 7E 1B 78 */	mr r30, r3
/* 802844BC 0028011C  C0 02 A1 98 */	lfs f0, lbl_80642798-_SDA2_BASE_(r2)
/* 802844C0 00280120  3B A0 00 00 */	li r29, 0
/* 802844C4 00280124  C8 21 00 08 */	lfd f1, 8(r1)
/* 802844C8 00280128  C3 C2 A1 84 */	lfs f30, lbl_80642784-_SDA2_BASE_(r2)
/* 802844CC 0028012C  EC 21 E0 28 */	fsubs f1, f1, f28
/* 802844D0 00280130  C3 E2 A1 C4 */	lfs f31, lbl_806427C4-_SDA2_BASE_(r2)
/* 802844D4 00280134  EF 60 08 24 */	fdivs f27, f0, f1
lbl_802844D8:
/* 802844D8 00280138  38 1D 00 01 */	addi r0, r29, 1
/* 802844DC 0028013C  93 E1 00 08 */	stw r31, 8(r1)
/* 802844E0 00280140  54 00 28 34 */	slwi r0, r0, 5
/* 802844E4 00280144  90 01 00 0C */	stw r0, 0xc(r1)
/* 802844E8 00280148  C8 01 00 08 */	lfd f0, 8(r1)
/* 802844EC 0028014C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 802844F0 00280150  EC 00 06 F2 */	fmuls f0, f0, f27
/* 802844F4 00280154  EC 00 06 B2 */	fmuls f0, f0, f26
/* 802844F8 00280158  EC 00 00 32 */	fmuls f0, f0, f0
/* 802844FC 0028015C  EC 00 E8 24 */	fdivs f0, f0, f29
/* 80284500 00280160  EC 3E 00 2A */	fadds f1, f30, f0
/* 80284504 00280164  4B F5 03 31 */	bl sqrt
/* 80284508 00280168  FC 00 08 18 */	frsp f0, f1
/* 8028450C 0028016C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80284510 00280170  4B F4 2A F1 */	bl __cvt_fp2unsigned
/* 80284514 00280174  3B BD 00 01 */	addi r29, r29, 1
/* 80284518 00280178  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 8028451C 0028017C  28 1D 00 0A */	cmplwi r29, 0xa
/* 80284520 00280180  B0 1E 00 00 */	sth r0, 0(r30)
/* 80284524 00280184  3B DE 00 02 */	addi r30, r30, 2
/* 80284528 00280188  41 80 FF B0 */	blt lbl_802844D8
/* 8028452C 0028018C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80284530 00280190  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80284534 00280194  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 80284538 00280198  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8028453C 0028019C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 80284540 002801A0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80284544 002801A4  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 80284548 002801A8  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8028454C 002801AC  E3 61 00 38 */	psq_l f27, 56(r1), 0, qr0
/* 80284550 002801B0  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 80284554 002801B4  E3 41 00 28 */	psq_l f26, 40(r1), 0, qr0
/* 80284558 002801B8  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 8028455C 002801BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80284560 002801C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80284564 002801C4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80284568 002801C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8028456C 002801CC  7C 08 03 A6 */	mtlr r0
/* 80284570 002801D0  38 21 00 80 */	addi r1, r1, 0x80
/* 80284574 002801D4  4E 80 00 20 */	blr

.global GXSetFogRangeAdj
GXSetFogRangeAdj:
/* 80284578 002801D8  2C 03 00 00 */	cmpwi r3, 0
/* 8028457C 002801DC  41 82 00 E8 */	beq lbl_80284664
/* 80284580 002801E0  A1 85 00 00 */	lhz r12, 0(r5)
/* 80284584 002801E4  39 60 00 00 */	li r11, 0
/* 80284588 002801E8  A1 45 00 02 */	lhz r10, 2(r5)
/* 8028458C 002801EC  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80284590 002801F0  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 80284594 002801F4  38 00 00 61 */	li r0, 0x61
/* 80284598 002801F8  7D 69 5B 78 */	mr r9, r11
/* 8028459C 002801FC  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802845A0 00280200  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 802845A4 00280204  38 E0 00 E9 */	li r7, 0xe9
/* 802845A8 00280208  7D 28 4B 78 */	mr r8, r9
/* 802845AC 0028020C  A1 85 00 04 */	lhz r12, 4(r5)
/* 802845B0 00280210  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 802845B4 00280214  39 60 00 00 */	li r11, 0
/* 802845B8 00280218  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 802845BC 0028021C  91 06 80 00 */	stw r8, -0x8000(r6)
/* 802845C0 00280220  7D 69 5B 78 */	mr r9, r11
/* 802845C4 00280224  A1 45 00 06 */	lhz r10, 6(r5)
/* 802845C8 00280228  38 E0 00 EA */	li r7, 0xea
/* 802845CC 0028022C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 802845D0 00280230  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 802845D4 00280234  A1 85 00 08 */	lhz r12, 8(r5)
/* 802845D8 00280238  7D 28 4B 78 */	mr r8, r9
/* 802845DC 0028023C  39 60 00 00 */	li r11, 0
/* 802845E0 00280240  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 802845E4 00280244  A1 45 00 0A */	lhz r10, 0xa(r5)
/* 802845E8 00280248  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 802845EC 0028024C  91 06 80 00 */	stw r8, -0x8000(r6)
/* 802845F0 00280250  7D 69 5B 78 */	mr r9, r11
/* 802845F4 00280254  38 E0 00 EB */	li r7, 0xeb
/* 802845F8 00280258  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 802845FC 0028025C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 80284600 00280260  7D 28 4B 78 */	mr r8, r9
/* 80284604 00280264  A1 85 00 0C */	lhz r12, 0xc(r5)
/* 80284608 00280268  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8028460C 0028026C  39 60 00 00 */	li r11, 0
/* 80284610 00280270  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 80284614 00280274  91 06 80 00 */	stw r8, -0x8000(r6)
/* 80284618 00280278  7D 69 5B 78 */	mr r9, r11
/* 8028461C 0028027C  A1 45 00 0E */	lhz r10, 0xe(r5)
/* 80284620 00280280  38 E0 00 EC */	li r7, 0xec
/* 80284624 00280284  98 06 80 00 */	stb r0, -0x8000(r6)
/* 80284628 00280288  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 8028462C 0028028C  A1 85 00 10 */	lhz r12, 0x10(r5)
/* 80284630 00280290  7D 28 4B 78 */	mr r8, r9
/* 80284634 00280294  39 60 00 00 */	li r11, 0
/* 80284638 00280298  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8028463C 0028029C  A1 45 00 12 */	lhz r10, 0x12(r5)
/* 80284640 002802A0  91 06 80 00 */	stw r8, -0x8000(r6)
/* 80284644 002802A4  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 80284648 002802A8  7D 69 5B 78 */	mr r9, r11
/* 8028464C 002802AC  38 E0 00 ED */	li r7, 0xed
/* 80284650 002802B0  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 80284654 002802B4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 80284658 002802B8  7D 28 4B 78 */	mr r8, r9
/* 8028465C 002802BC  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 80284660 002802C0  91 06 80 00 */	stw r8, -0x8000(r6)
lbl_80284664:
/* 80284664 002802C4  38 04 01 56 */	addi r0, r4, 0x156
/* 80284668 002802C8  38 C0 00 00 */	li r6, 0
/* 8028466C 002802CC  50 06 05 BE */	rlwimi r6, r0, 0, 0x16, 0x1f
/* 80284670 002802D0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80284674 002802D4  38 00 00 61 */	li r0, 0x61
/* 80284678 002802D8  38 A0 00 E8 */	li r5, 0xe8
/* 8028467C 002802DC  50 66 55 6A */	rlwimi r6, r3, 0xa, 0x15, 0x15
/* 80284680 002802E0  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80284684 002802E4  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 80284688 002802E8  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 8028468C 002802EC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80284690 002802F0  38 00 00 00 */	li r0, 0
/* 80284694 002802F4  B0 03 00 02 */	sth r0, 2(r3)
/* 80284698 002802F8  4E 80 00 20 */	blr

.global GXSetBlendMode
GXSetBlendMode:
/* 8028469C 002802FC  81 42 A0 D0 */	lwz r10, lbl_806426D0-_SDA2_BASE_(r2)
/* 802846A0 00280300  38 03 FF FD */	addi r0, r3, -3
/* 802846A4 00280304  39 03 FF FE */	addi r8, r3, -2
/* 802846A8 00280308  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 802846AC 0028030C  7C 00 00 34 */	cntlzw r0, r0
/* 802846B0 00280310  81 2A 02 20 */	lwz r9, 0x220(r10)
/* 802846B4 00280314  50 09 35 28 */	rlwimi r9, r0, 6, 0x14, 0x14
/* 802846B8 00280318  7D 08 00 34 */	cntlzw r8, r8
/* 802846BC 0028031C  38 00 00 61 */	li r0, 0x61
/* 802846C0 00280320  98 07 80 00 */	stb r0, 0xCC008000@l(r7)
/* 802846C4 00280324  50 69 07 FE */	rlwimi r9, r3, 0, 0x1f, 0x1f
/* 802846C8 00280328  51 09 E7 BC */	rlwimi r9, r8, 0x1c, 0x1e, 0x1e
/* 802846CC 0028032C  38 00 00 00 */	li r0, 0
/* 802846D0 00280330  50 C9 64 26 */	rlwimi r9, r6, 0xc, 0x10, 0x13
/* 802846D4 00280334  50 89 45 6E */	rlwimi r9, r4, 8, 0x15, 0x17
/* 802846D8 00280338  50 A9 2E 34 */	rlwimi r9, r5, 5, 0x18, 0x1a
/* 802846DC 0028033C  91 27 80 00 */	stw r9, -0x8000(r7)
/* 802846E0 00280340  91 2A 02 20 */	stw r9, 0x220(r10)
/* 802846E4 00280344  B0 0A 00 02 */	sth r0, 2(r10)
/* 802846E8 00280348  4E 80 00 20 */	blr

.global GXSetColorUpdate
GXSetColorUpdate:
/* 802846EC 0028034C  80 E2 A0 D0 */	lwz r7, lbl_806426D0-_SDA2_BASE_(r2)
/* 802846F0 00280350  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 802846F4 00280354  38 A0 00 61 */	li r5, 0x61
/* 802846F8 00280358  38 00 00 00 */	li r0, 0
/* 802846FC 0028035C  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 80284700 00280360  50 66 1F 38 */	rlwimi r6, r3, 3, 0x1c, 0x1c
/* 80284704 00280364  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80284708 00280368  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8028470C 0028036C  90 C7 02 20 */	stw r6, 0x220(r7)
/* 80284710 00280370  B0 07 00 02 */	sth r0, 2(r7)
/* 80284714 00280374  4E 80 00 20 */	blr

.global GXSetAlphaUpdate
GXSetAlphaUpdate:
/* 80284718 00280378  80 E2 A0 D0 */	lwz r7, lbl_806426D0-_SDA2_BASE_(r2)
/* 8028471C 0028037C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80284720 00280380  38 A0 00 61 */	li r5, 0x61
/* 80284724 00280384  38 00 00 00 */	li r0, 0
/* 80284728 00280388  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 8028472C 0028038C  50 66 26 F6 */	rlwimi r6, r3, 4, 0x1b, 0x1b
/* 80284730 00280390  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80284734 00280394  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80284738 00280398  90 C7 02 20 */	stw r6, 0x220(r7)
/* 8028473C 0028039C  B0 07 00 02 */	sth r0, 2(r7)
/* 80284740 002803A0  4E 80 00 20 */	blr

.global GXSetZMode
GXSetZMode:
/* 80284744 002803A4  81 22 A0 D0 */	lwz r9, lbl_806426D0-_SDA2_BASE_(r2)
/* 80284748 002803A8  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 8028474C 002803AC  38 E0 00 61 */	li r7, 0x61
/* 80284750 002803B0  38 00 00 00 */	li r0, 0
/* 80284754 002803B4  81 09 02 28 */	lwz r8, 0x228(r9)
/* 80284758 002803B8  50 68 07 FE */	rlwimi r8, r3, 0, 0x1f, 0x1f
/* 8028475C 002803BC  50 88 0F 3C */	rlwimi r8, r4, 1, 0x1c, 0x1e
/* 80284760 002803C0  98 E6 80 00 */	stb r7, 0xCC008000@l(r6)
/* 80284764 002803C4  50 A8 26 F6 */	rlwimi r8, r5, 4, 0x1b, 0x1b
/* 80284768 002803C8  91 06 80 00 */	stw r8, -0x8000(r6)
/* 8028476C 002803CC  91 09 02 28 */	stw r8, 0x228(r9)
/* 80284770 002803D0  B0 09 00 02 */	sth r0, 2(r9)
/* 80284774 002803D4  4E 80 00 20 */	blr

.global GXSetZCompLoc
GXSetZCompLoc:
/* 80284778 002803D8  80 E2 A0 D0 */	lwz r7, lbl_806426D0-_SDA2_BASE_(r2)
/* 8028477C 002803DC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80284780 002803E0  38 A0 00 61 */	li r5, 0x61
/* 80284784 002803E4  38 00 00 00 */	li r0, 0
/* 80284788 002803E8  80 C7 02 2C */	lwz r6, 0x22c(r7)
/* 8028478C 002803EC  50 66 36 72 */	rlwimi r6, r3, 6, 0x19, 0x19
/* 80284790 002803F0  90 C7 02 2C */	stw r6, 0x22c(r7)
/* 80284794 002803F4  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80284798 002803F8  80 67 02 2C */	lwz r3, 0x22c(r7)
/* 8028479C 002803FC  90 64 80 00 */	stw r3, -0x8000(r4)
/* 802847A0 00280400  B0 07 00 02 */	sth r0, 2(r7)
/* 802847A4 00280404  4E 80 00 20 */	blr

.global GXSetPixelFmt
GXSetPixelFmt:
/* 802847A8 00280408  81 22 A0 D0 */	lwz r9, lbl_806426D0-_SDA2_BASE_(r2)
/* 802847AC 0028040C  3C C0 80 43 */	lis r6, lbl_80435948@ha
/* 802847B0 00280410  54 67 10 3A */	slwi r7, r3, 2
/* 802847B4 00280414  38 C6 59 48 */	addi r6, r6, lbl_80435948@l
/* 802847B8 00280418  81 09 02 2C */	lwz r8, 0x22c(r9)
/* 802847BC 0028041C  7C 06 38 2E */	lwzx r0, r6, r7
/* 802847C0 00280420  7D 05 43 78 */	mr r5, r8
/* 802847C4 00280424  50 05 07 7E */	rlwimi r5, r0, 0, 0x1d, 0x1f
/* 802847C8 00280428  50 85 1E B8 */	rlwimi r5, r4, 3, 0x1a, 0x1c
/* 802847CC 0028042C  7C 08 28 40 */	cmplw r8, r5
/* 802847D0 00280430  90 A9 02 2C */	stw r5, 0x22c(r9)
/* 802847D4 00280434  41 82 00 38 */	beq lbl_8028480C
/* 802847D8 00280438  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 802847DC 0028043C  38 00 00 61 */	li r0, 0x61
/* 802847E0 00280440  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 802847E4 00280444  38 03 FF FE */	addi r0, r3, -2
/* 802847E8 00280448  7C 04 00 34 */	cntlzw r4, r0
/* 802847EC 0028044C  80 09 02 2C */	lwz r0, 0x22c(r9)
/* 802847F0 00280450  90 05 80 00 */	stw r0, -0x8000(r5)
/* 802847F4 00280454  80 09 02 54 */	lwz r0, 0x254(r9)
/* 802847F8 00280458  50 80 25 AC */	rlwimi r0, r4, 4, 0x16, 0x16
/* 802847FC 0028045C  90 09 02 54 */	stw r0, 0x254(r9)
/* 80284800 00280460  80 09 05 FC */	lwz r0, 0x5fc(r9)
/* 80284804 00280464  60 00 00 04 */	ori r0, r0, 4
/* 80284808 00280468  90 09 05 FC */	stw r0, 0x5fc(r9)
lbl_8028480C:
/* 8028480C 0028046C  7C 06 38 2E */	lwzx r0, r6, r7
/* 80284810 00280470  28 00 00 04 */	cmplwi r0, 4
/* 80284814 00280474  40 82 00 30 */	bne lbl_80284844
/* 80284818 00280478  38 03 FF FC */	addi r0, r3, -4
/* 8028481C 0028047C  80 89 02 24 */	lwz r4, 0x224(r9)
/* 80284820 00280480  50 04 4D 6C */	rlwimi r4, r0, 9, 0x15, 0x16
/* 80284824 00280484  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80284828 00280488  38 00 00 42 */	li r0, 0x42
/* 8028482C 0028048C  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 80284830 00280490  90 89 02 24 */	stw r4, 0x224(r9)
/* 80284834 00280494  38 00 00 61 */	li r0, 0x61
/* 80284838 00280498  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8028483C 0028049C  80 09 02 24 */	lwz r0, 0x224(r9)
/* 80284840 002804A0  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_80284844:
/* 80284844 002804A4  38 00 00 00 */	li r0, 0
/* 80284848 002804A8  B0 09 00 02 */	sth r0, 2(r9)
/* 8028484C 002804AC  4E 80 00 20 */	blr

.global GXSetDither
GXSetDither:
/* 80284850 002804B0  80 E2 A0 D0 */	lwz r7, lbl_806426D0-_SDA2_BASE_(r2)
/* 80284854 002804B4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80284858 002804B8  38 A0 00 61 */	li r5, 0x61
/* 8028485C 002804BC  38 00 00 00 */	li r0, 0
/* 80284860 002804C0  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 80284864 002804C4  50 66 17 7A */	rlwimi r6, r3, 2, 0x1d, 0x1d
/* 80284868 002804C8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8028486C 002804CC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80284870 002804D0  90 C7 02 20 */	stw r6, 0x220(r7)
/* 80284874 002804D4  B0 07 00 02 */	sth r0, 2(r7)
/* 80284878 002804D8  4E 80 00 20 */	blr

.global GXSetDstAlpha
GXSetDstAlpha:
/* 8028487C 002804DC  81 02 A0 D0 */	lwz r8, lbl_806426D0-_SDA2_BASE_(r2)
/* 80284880 002804E0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80284884 002804E4  38 C0 00 61 */	li r6, 0x61
/* 80284888 002804E8  38 00 00 00 */	li r0, 0
/* 8028488C 002804EC  80 E8 02 24 */	lwz r7, 0x224(r8)
/* 80284890 002804F0  50 87 06 3E */	rlwimi r7, r4, 0, 0x18, 0x1f
/* 80284894 002804F4  50 67 45 EE */	rlwimi r7, r3, 8, 0x17, 0x17
/* 80284898 002804F8  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 8028489C 002804FC  90 E5 80 00 */	stw r7, -0x8000(r5)
/* 802848A0 00280500  90 E8 02 24 */	stw r7, 0x224(r8)
/* 802848A4 00280504  B0 08 00 02 */	sth r0, 2(r8)
/* 802848A8 00280508  4E 80 00 20 */	blr

.global GXSetFieldMask
GXSetFieldMask:
/* 802848AC 0028050C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 802848B0 00280510  38 00 00 61 */	li r0, 0x61
/* 802848B4 00280514  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 802848B8 00280518  38 00 00 44 */	li r0, 0x44
/* 802848BC 0028051C  38 C0 00 00 */	li r6, 0
/* 802848C0 00280520  50 86 07 FE */	rlwimi r6, r4, 0, 0x1f, 0x1f
/* 802848C4 00280524  50 66 0F BC */	rlwimi r6, r3, 1, 0x1e, 0x1e
/* 802848C8 00280528  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 802848CC 0028052C  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 802848D0 00280530  38 00 00 00 */	li r0, 0
/* 802848D4 00280534  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 802848D8 00280538  B0 03 00 02 */	sth r0, 2(r3)
/* 802848DC 0028053C  4E 80 00 20 */	blr

.global GXSetFieldMode
GXSetFieldMode:
/* 802848E0 00280540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802848E4 00280544  7C 08 02 A6 */	mflr r0
/* 802848E8 00280548  80 A2 A0 D0 */	lwz r5, lbl_806426D0-_SDA2_BASE_(r2)
/* 802848EC 0028054C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802848F0 00280550  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802848F4 00280554  3F E0 CC 01 */	lis r31, 0xCC008000@ha
/* 802848F8 00280558  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802848FC 0028055C  3B C0 00 61 */	li r30, 0x61
/* 80284900 00280560  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80284904 00280564  7C 7D 1B 78 */	mr r29, r3
/* 80284908 00280568  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 8028490C 0028056C  50 80 B2 52 */	rlwimi r0, r4, 0x16, 9, 9
/* 80284910 00280570  90 05 00 7C */	stw r0, 0x7c(r5)
/* 80284914 00280574  9B DF 80 00 */	stb r30, 0xCC008000@l(r31)
/* 80284918 00280578  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 8028491C 0028057C  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 80284920 00280580  4B FF F1 FD */	bl __GXFlushTextureState
/* 80284924 00280584  9B DF 80 00 */	stb r30, -0x8000(r31)
/* 80284928 00280588  67 A0 68 00 */	oris r0, r29, 0x6800
/* 8028492C 0028058C  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 80284930 00280590  4B FF F1 ED */	bl __GXFlushTextureState
/* 80284934 00280594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80284938 00280598  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028493C 0028059C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80284940 002805A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80284944 002805A4  7C 08 03 A6 */	mtlr r0
/* 80284948 002805A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8028494C 002805AC  4E 80 00 20 */	blr
