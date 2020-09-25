.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global Init__Q44nw4r3snd6detail8LfoParamFv
Init__Q44nw4r3snd6detail8LfoParamFv:
/* 80371BFC 0036D85C  C0 22 A6 58 */	lfs f1, lbl_80642C58-_SDA2_BASE_(r2)
/* 80371C00 0036D860  38 80 00 01 */	li r4, 1
/* 80371C04 0036D864  C0 02 A6 5C */	lfs f0, lbl_80642C5C-_SDA2_BASE_(r2)
/* 80371C08 0036D868  38 00 00 00 */	li r0, 0
/* 80371C0C 0036D86C  D0 23 00 00 */	stfs f1, 0(r3)
/* 80371C10 0036D870  98 83 00 0C */	stb r4, 0xc(r3)
/* 80371C14 0036D874  D0 03 00 04 */	stfs f0, 4(r3)
/* 80371C18 0036D878  90 03 00 08 */	stw r0, 8(r3)
/* 80371C1C 0036D87C  4E 80 00 20 */	blr

.global Reset__Q44nw4r3snd6detail3LfoFv
Reset__Q44nw4r3snd6detail3LfoFv:
/* 80371C20 0036D880  C0 02 A6 58 */	lfs f0, lbl_80642C58-_SDA2_BASE_(r2)
/* 80371C24 0036D884  38 00 00 00 */	li r0, 0
/* 80371C28 0036D888  90 03 00 10 */	stw r0, 0x10(r3)
/* 80371C2C 0036D88C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80371C30 0036D890  4E 80 00 20 */	blr

.global Update__Q44nw4r3snd6detail3LfoFi
Update__Q44nw4r3snd6detail3LfoFi:
/* 80371C34 0036D894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371C38 0036D898  80 C3 00 08 */	lwz r6, 8(r3)
/* 80371C3C 0036D89C  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 80371C40 0036D8A0  7C 05 30 40 */	cmplw r5, r6
/* 80371C44 0036D8A4  40 80 00 24 */	bge lbl_80371C68
/* 80371C48 0036D8A8  7C 05 22 14 */	add r0, r5, r4
/* 80371C4C 0036D8AC  7C 00 30 40 */	cmplw r0, r6
/* 80371C50 0036D8B0  41 81 00 0C */	bgt lbl_80371C5C
/* 80371C54 0036D8B4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80371C58 0036D8B8  48 00 00 70 */	b lbl_80371CC8
lbl_80371C5C:
/* 80371C5C 0036D8BC  7C 05 30 50 */	subf r0, r5, r6
/* 80371C60 0036D8C0  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80371C64 0036D8C4  7C 80 20 50 */	subf r4, r0, r4
lbl_80371C68:
/* 80371C68 0036D8C8  3C 00 43 30 */	lis r0, 0x4330
/* 80371C6C 0036D8CC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80371C70 0036D8D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80371C74 0036D8D4  C8 82 A6 68 */	lfd f4, lbl_80642C68-_SDA2_BASE_(r2)
/* 80371C78 0036D8D8  90 01 00 08 */	stw r0, 8(r1)
/* 80371C7C 0036D8DC  C0 43 00 04 */	lfs f2, 4(r3)
/* 80371C80 0036D8E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80371C84 0036D8E4  C0 22 A6 60 */	lfs f1, lbl_80642C60-_SDA2_BASE_(r2)
/* 80371C88 0036D8E8  EC 60 20 28 */	fsubs f3, f0, f4
/* 80371C8C 0036D8EC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80371C90 0036D8F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80371C94 0036D8F4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80371C98 0036D8F8  EC 22 08 24 */	fdivs f1, f2, f1
/* 80371C9C 0036D8FC  EC 20 08 2A */	fadds f1, f0, f1
/* 80371CA0 0036D900  FC 00 08 1E */	fctiwz f0, f1
/* 80371CA4 0036D904  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80371CA8 0036D908  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80371CAC 0036D90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371CB0 0036D910  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80371CB4 0036D914  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80371CB8 0036D918  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80371CBC 0036D91C  EC 00 20 28 */	fsubs f0, f0, f4
/* 80371CC0 0036D920  EC 01 00 28 */	fsubs f0, f1, f0
/* 80371CC4 0036D924  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_80371CC8:
/* 80371CC8 0036D928  38 21 00 20 */	addi r1, r1, 0x20
/* 80371CCC 0036D92C  4E 80 00 20 */	blr

.global GetValue__Q44nw4r3snd6detail3LfoCFv
GetValue__Q44nw4r3snd6detail3LfoCFv:
/* 80371CD0 0036D930  C0 22 A6 58 */	lfs f1, lbl_80642C58-_SDA2_BASE_(r2)
/* 80371CD4 0036D934  C0 03 00 00 */	lfs f0, 0(r3)
/* 80371CD8 0036D938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371CDC 0036D93C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80371CE0 0036D940  40 82 00 08 */	bne lbl_80371CE8
/* 80371CE4 0036D944  48 00 01 00 */	b lbl_80371DE4
lbl_80371CE8:
/* 80371CE8 0036D948  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80371CEC 0036D94C  80 03 00 08 */	lwz r0, 8(r3)
/* 80371CF0 0036D950  7C 04 00 40 */	cmplw r4, r0
/* 80371CF4 0036D954  40 80 00 08 */	bge lbl_80371CFC
/* 80371CF8 0036D958  48 00 00 EC */	b lbl_80371DE4
lbl_80371CFC:
/* 80371CFC 0036D95C  C0 42 A6 74 */	lfs f2, lbl_80642C74-_SDA2_BASE_(r2)
/* 80371D00 0036D960  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80371D04 0036D964  C0 02 A6 70 */	lfs f0, lbl_80642C70-_SDA2_BASE_(r2)
/* 80371D08 0036D968  EC 22 00 72 */	fmuls f1, f2, f1
/* 80371D0C 0036D96C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80371D10 0036D970  FC 00 00 1E */	fctiwz f0, f0
/* 80371D14 0036D974  D8 01 00 08 */	stfd f0, 8(r1)
/* 80371D18 0036D978  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80371D1C 0036D97C  2C 05 00 20 */	cmpwi r5, 0x20
/* 80371D20 0036D980  40 80 00 18 */	bge lbl_80371D38
/* 80371D24 0036D984  3C 80 80 40 */	lis r4, lbl_804028F8@ha
/* 80371D28 0036D988  38 84 28 F8 */	addi r4, r4, lbl_804028F8@l
/* 80371D2C 0036D98C  7C 04 28 AE */	lbzx r0, r4, r5
/* 80371D30 0036D990  7C 00 07 74 */	extsb r0, r0
/* 80371D34 0036D994  48 00 00 68 */	b lbl_80371D9C
lbl_80371D38:
/* 80371D38 0036D998  2C 05 00 40 */	cmpwi r5, 0x40
/* 80371D3C 0036D99C  40 80 00 20 */	bge lbl_80371D5C
/* 80371D40 0036D9A0  38 05 FF E0 */	addi r0, r5, -32
/* 80371D44 0036D9A4  3C 80 80 40 */	lis r4, lbl_804028F8@ha
/* 80371D48 0036D9A8  20 00 00 20 */	subfic r0, r0, 0x20
/* 80371D4C 0036D9AC  38 84 28 F8 */	addi r4, r4, lbl_804028F8@l
/* 80371D50 0036D9B0  7C 04 00 AE */	lbzx r0, r4, r0
/* 80371D54 0036D9B4  7C 00 07 74 */	extsb r0, r0
/* 80371D58 0036D9B8  48 00 00 44 */	b lbl_80371D9C
lbl_80371D5C:
/* 80371D5C 0036D9BC  2C 05 00 60 */	cmpwi r5, 0x60
/* 80371D60 0036D9C0  40 80 00 20 */	bge lbl_80371D80
/* 80371D64 0036D9C4  3C 80 80 40 */	lis r4, lbl_804028F8@ha
/* 80371D68 0036D9C8  38 84 28 F8 */	addi r4, r4, lbl_804028F8@l
/* 80371D6C 0036D9CC  7C 85 22 14 */	add r4, r5, r4
/* 80371D70 0036D9D0  88 04 FF C0 */	lbz r0, -0x40(r4)
/* 80371D74 0036D9D4  7C 00 00 D0 */	neg r0, r0
/* 80371D78 0036D9D8  7C 00 07 74 */	extsb r0, r0
/* 80371D7C 0036D9DC  48 00 00 20 */	b lbl_80371D9C
lbl_80371D80:
/* 80371D80 0036D9E0  38 05 FF A0 */	addi r0, r5, -96
/* 80371D84 0036D9E4  3C 80 80 40 */	lis r4, lbl_804028F8@ha
/* 80371D88 0036D9E8  20 00 00 20 */	subfic r0, r0, 0x20
/* 80371D8C 0036D9EC  38 84 28 F8 */	addi r4, r4, lbl_804028F8@l
/* 80371D90 0036D9F0  7C 04 00 AE */	lbzx r0, r4, r0
/* 80371D94 0036D9F4  7C 00 00 D0 */	neg r0, r0
/* 80371D98 0036D9F8  7C 00 07 74 */	extsb r0, r0
lbl_80371D9C:
/* 80371D9C 0036D9FC  3C 80 43 30 */	lis r4, 0x4330
/* 80371DA0 0036DA00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80371DA4 0036DA04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80371DA8 0036DA08  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80371DAC 0036DA0C  90 81 00 08 */	stw r4, 8(r1)
/* 80371DB0 0036DA10  C8 42 A6 68 */	lfd f2, lbl_80642C68-_SDA2_BASE_(r2)
/* 80371DB4 0036DA14  C8 21 00 08 */	lfd f1, 8(r1)
/* 80371DB8 0036DA18  C0 02 A6 78 */	lfs f0, lbl_80642C78-_SDA2_BASE_(r2)
/* 80371DBC 0036DA1C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80371DC0 0036DA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371DC4 0036DA24  C0 63 00 00 */	lfs f3, 0(r3)
/* 80371DC8 0036DA28  90 81 00 10 */	stw r4, 0x10(r1)
/* 80371DCC 0036DA2C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80371DD0 0036DA30  C8 42 A6 80 */	lfd f2, lbl_80642C80-_SDA2_BASE_(r2)
/* 80371DD4 0036DA34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80371DD8 0036DA38  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80371DDC 0036DA3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80371DE0 0036DA40  EC 21 00 32 */	fmuls f1, f1, f0
lbl_80371DE4:
/* 80371DE4 0036DA44  38 21 00 20 */	addi r1, r1, 0x20
/* 80371DE8 0036DA48  4E 80 00 20 */	blr