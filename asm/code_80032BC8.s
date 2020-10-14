.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global lbl_80032BC8
lbl_80032BC8:
/* 80032BC8 0002E828  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032BCC 0002E82C  7C 08 02 A6 */	mflr r0
/* 80032BD0 0002E830  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032BD4 0002E834  38 04 FF EF */	addi r0, r4, -17
/* 80032BD8 0002E838  28 00 00 22 */	cmplwi r0, 0x22
/* 80032BDC 0002E83C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80032BE0 0002E840  41 81 02 38 */	bgt lbl_80032E18
/* 80032BE4 0002E844  3C 60 80 41 */	lis r3, lbl_8040A1E8@ha
/* 80032BE8 0002E848  54 00 10 3A */	slwi r0, r0, 2
/* 80032BEC 0002E84C  38 63 A1 E8 */	addi r3, r3, lbl_8040A1E8@l
/* 80032BF0 0002E850  7C 63 00 2E */	lwzx r3, r3, r0
/* 80032BF4 0002E854  7C 69 03 A6 */	mtctr r3
/* 80032BF8 0002E858  4E 80 04 20 */	bctr
/* 80032BFC 0002E85C  A8 05 00 08 */	lha r0, 8(r5)
/* 80032C00 0002E860  2C 00 00 01 */	cmpwi r0, 1
/* 80032C04 0002E864  40 82 00 0C */	bne lbl_80032C10
/* 80032C08 0002E868  83 E5 00 0C */	lwz r31, 0xc(r5)
/* 80032C0C 0002E86C  48 00 00 2C */	b lbl_80032C38
lbl_80032C10:
/* 80032C10 0002E870  2C 00 00 02 */	cmpwi r0, 2
/* 80032C14 0002E874  40 82 00 18 */	bne lbl_80032C2C
/* 80032C18 0002E878  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80032C1C 0002E87C  FC 00 00 1E */	fctiwz f0, f0
/* 80032C20 0002E880  D8 01 00 08 */	stfd f0, 8(r1)
/* 80032C24 0002E884  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80032C28 0002E888  48 00 00 0C */	b lbl_80032C34
lbl_80032C2C:
/* 80032C2C 0002E88C  38 65 00 08 */	addi r3, r5, 8
/* 80032C30 0002E890  48 1F B1 05 */	bl func_8022DD34
lbl_80032C34:
/* 80032C34 0002E894  7C 7F 1B 78 */	mr r31, r3
lbl_80032C38:
/* 80032C38 0002E898  4B FD 9B B1 */	bl func_8000C7E8
/* 80032C3C 0002E89C  7F E5 FB 78 */	mr r5, r31
/* 80032C40 0002E8A0  38 80 00 00 */	li r4, 0
/* 80032C44 0002E8A4  4B FE F2 81 */	bl func_80021EC4
/* 80032C48 0002E8A8  48 00 01 E0 */	b lbl_80032E28
/* 80032C4C 0002E8AC  A8 05 00 08 */	lha r0, 8(r5)
/* 80032C50 0002E8B0  2C 00 00 01 */	cmpwi r0, 1
/* 80032C54 0002E8B4  40 82 00 4C */	bne lbl_80032CA0
/* 80032C58 0002E8B8  40 82 00 0C */	bne lbl_80032C64
/* 80032C5C 0002E8BC  83 E5 00 0C */	lwz r31, 0xc(r5)
/* 80032C60 0002E8C0  48 00 00 2C */	b lbl_80032C8C
lbl_80032C64:
/* 80032C64 0002E8C4  2C 00 00 02 */	cmpwi r0, 2
/* 80032C68 0002E8C8  40 82 00 18 */	bne lbl_80032C80
/* 80032C6C 0002E8CC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80032C70 0002E8D0  FC 00 00 1E */	fctiwz f0, f0
/* 80032C74 0002E8D4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80032C78 0002E8D8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80032C7C 0002E8DC  48 00 00 0C */	b lbl_80032C88
lbl_80032C80:
/* 80032C80 0002E8E0  38 65 00 08 */	addi r3, r5, 8
/* 80032C84 0002E8E4  48 1F B0 B1 */	bl func_8022DD34
lbl_80032C88:
/* 80032C88 0002E8E8  7C 7F 1B 78 */	mr r31, r3
lbl_80032C8C:
/* 80032C8C 0002E8EC  4B FD 9B 5D */	bl func_8000C7E8
/* 80032C90 0002E8F0  7F E5 FB 78 */	mr r5, r31
/* 80032C94 0002E8F4  38 80 00 04 */	li r4, 4
/* 80032C98 0002E8F8  4B FE F2 2D */	bl func_80021EC4
/* 80032C9C 0002E8FC  48 00 01 8C */	b lbl_80032E28
lbl_80032CA0:
/* 80032CA0 0002E900  4B FD 9B 49 */	bl func_8000C7E8
/* 80032CA4 0002E904  38 80 00 04 */	li r4, 4
/* 80032CA8 0002E908  38 A0 00 00 */	li r5, 0
/* 80032CAC 0002E90C  4B FE F2 19 */	bl func_80021EC4
/* 80032CB0 0002E910  48 00 01 78 */	b lbl_80032E28
/* 80032CB4 0002E914  4B FD 9B 35 */	bl func_8000C7E8
/* 80032CB8 0002E918  38 80 00 05 */	li r4, 5
/* 80032CBC 0002E91C  38 A0 00 00 */	li r5, 0
/* 80032CC0 0002E920  4B FE F2 05 */	bl func_80021EC4
/* 80032CC4 0002E924  48 00 01 64 */	b lbl_80032E28
/* 80032CC8 0002E928  4B FD 9B 21 */	bl func_8000C7E8
/* 80032CCC 0002E92C  38 80 00 06 */	li r4, 6
/* 80032CD0 0002E930  38 A0 00 00 */	li r5, 0
/* 80032CD4 0002E934  4B FE F1 F1 */	bl func_80021EC4
/* 80032CD8 0002E938  48 00 01 50 */	b lbl_80032E28
/* 80032CDC 0002E93C  4B FD 9B 0D */	bl func_8000C7E8
/* 80032CE0 0002E940  38 80 00 07 */	li r4, 7
/* 80032CE4 0002E944  38 A0 00 00 */	li r5, 0
/* 80032CE8 0002E948  4B FE F1 DD */	bl func_80021EC4
/* 80032CEC 0002E94C  48 00 01 3C */	b lbl_80032E28
/* 80032CF0 0002E950  4B FD 9A F9 */	bl func_8000C7E8
/* 80032CF4 0002E954  38 80 00 08 */	li r4, 8
/* 80032CF8 0002E958  38 A0 00 00 */	li r5, 0
/* 80032CFC 0002E95C  4B FE F1 C9 */	bl func_80021EC4
/* 80032D00 0002E960  48 00 01 28 */	b lbl_80032E28
/* 80032D04 0002E964  4B FD 9A E5 */	bl func_8000C7E8
/* 80032D08 0002E968  38 80 00 09 */	li r4, 9
/* 80032D0C 0002E96C  38 A0 00 00 */	li r5, 0
/* 80032D10 0002E970  4B FE F1 B5 */	bl func_80021EC4
/* 80032D14 0002E974  48 00 01 14 */	b lbl_80032E28
/* 80032D18 0002E978  4B FD 9A D1 */	bl func_8000C7E8
/* 80032D1C 0002E97C  38 80 00 0A */	li r4, 0xa
/* 80032D20 0002E980  38 A0 00 00 */	li r5, 0
/* 80032D24 0002E984  4B FE F1 A1 */	bl func_80021EC4
/* 80032D28 0002E988  48 00 01 00 */	b lbl_80032E28
/* 80032D2C 0002E98C  4B FD 9A BD */	bl func_8000C7E8
/* 80032D30 0002E990  38 80 00 0B */	li r4, 0xb
/* 80032D34 0002E994  38 A0 00 00 */	li r5, 0
/* 80032D38 0002E998  4B FE F1 8D */	bl func_80021EC4
/* 80032D3C 0002E99C  48 00 00 EC */	b lbl_80032E28
/* 80032D40 0002E9A0  A8 05 00 08 */	lha r0, 8(r5)
/* 80032D44 0002E9A4  2C 00 00 01 */	cmpwi r0, 1
/* 80032D48 0002E9A8  40 82 00 0C */	bne lbl_80032D54
/* 80032D4C 0002E9AC  83 E5 00 0C */	lwz r31, 0xc(r5)
/* 80032D50 0002E9B0  48 00 00 2C */	b lbl_80032D7C
lbl_80032D54:
/* 80032D54 0002E9B4  2C 00 00 02 */	cmpwi r0, 2
/* 80032D58 0002E9B8  40 82 00 18 */	bne lbl_80032D70
/* 80032D5C 0002E9BC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80032D60 0002E9C0  FC 00 00 1E */	fctiwz f0, f0
/* 80032D64 0002E9C4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80032D68 0002E9C8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80032D6C 0002E9CC  48 00 00 0C */	b lbl_80032D78
lbl_80032D70:
/* 80032D70 0002E9D0  38 65 00 08 */	addi r3, r5, 8
/* 80032D74 0002E9D4  48 1F AF C1 */	bl func_8022DD34
lbl_80032D78:
/* 80032D78 0002E9D8  7C 7F 1B 78 */	mr r31, r3
lbl_80032D7C:
/* 80032D7C 0002E9DC  4B FD 9A 6D */	bl func_8000C7E8
/* 80032D80 0002E9E0  7F E5 FB 78 */	mr r5, r31
/* 80032D84 0002E9E4  38 80 00 0C */	li r4, 0xc
/* 80032D88 0002E9E8  4B FE F1 3D */	bl func_80021EC4
/* 80032D8C 0002E9EC  48 00 00 9C */	b lbl_80032E28
/* 80032D90 0002E9F0  A8 05 00 08 */	lha r0, 8(r5)
/* 80032D94 0002E9F4  2C 00 00 01 */	cmpwi r0, 1
/* 80032D98 0002E9F8  40 82 00 0C */	bne lbl_80032DA4
/* 80032D9C 0002E9FC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80032DA0 0002EA00  48 00 00 28 */	b lbl_80032DC8
lbl_80032DA4:
/* 80032DA4 0002EA04  2C 00 00 02 */	cmpwi r0, 2
/* 80032DA8 0002EA08  40 82 00 18 */	bne lbl_80032DC0
/* 80032DAC 0002EA0C  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80032DB0 0002EA10  FC 00 00 1E */	fctiwz f0, f0
/* 80032DB4 0002EA14  D8 01 00 08 */	stfd f0, 8(r1)
/* 80032DB8 0002EA18  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80032DBC 0002EA1C  48 00 00 0C */	b lbl_80032DC8
lbl_80032DC0:
/* 80032DC0 0002EA20  38 65 00 08 */	addi r3, r5, 8
/* 80032DC4 0002EA24  48 1F AF 71 */	bl func_8022DD34
lbl_80032DC8:
/* 80032DC8 0002EA28  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80032DCC 0002EA2C  4B FF 19 E1 */	bl func_800247AC
/* 80032DD0 0002EA30  48 00 00 58 */	b lbl_80032E28
/* 80032DD4 0002EA34  A8 05 00 08 */	lha r0, 8(r5)
/* 80032DD8 0002EA38  2C 00 00 01 */	cmpwi r0, 1
/* 80032DDC 0002EA3C  40 82 00 0C */	bne lbl_80032DE8
/* 80032DE0 0002EA40  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80032DE4 0002EA44  48 00 00 28 */	b lbl_80032E0C
lbl_80032DE8:
/* 80032DE8 0002EA48  2C 00 00 02 */	cmpwi r0, 2
/* 80032DEC 0002EA4C  40 82 00 18 */	bne lbl_80032E04
/* 80032DF0 0002EA50  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80032DF4 0002EA54  FC 00 00 1E */	fctiwz f0, f0
/* 80032DF8 0002EA58  D8 01 00 08 */	stfd f0, 8(r1)
/* 80032DFC 0002EA5C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80032E00 0002EA60  48 00 00 0C */	b lbl_80032E0C
lbl_80032E04:
/* 80032E04 0002EA64  38 65 00 08 */	addi r3, r5, 8
/* 80032E08 0002EA68  48 1F AF 2D */	bl func_8022DD34
lbl_80032E0C:
/* 80032E0C 0002EA6C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80032E10 0002EA70  4B FF 1A 91 */	bl func_800248A0
/* 80032E14 0002EA74  48 00 00 14 */	b lbl_80032E28
lbl_80032E18:
/* 80032E18 0002EA78  4B FD 99 D1 */	bl func_8000C7E8
/* 80032E1C 0002EA7C  38 80 00 0D */	li r4, 0xd
/* 80032E20 0002EA80  38 A0 00 00 */	li r5, 0
/* 80032E24 0002EA84  4B FE F0 A1 */	bl func_80021EC4
lbl_80032E28:
/* 80032E28 0002EA88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80032E2C 0002EA8C  38 60 00 01 */	li r3, 1
/* 80032E30 0002EA90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032E34 0002EA94  7C 08 03 A6 */	mtlr r0
/* 80032E38 0002EA98  38 21 00 20 */	addi r1, r1, 0x20
/* 80032E3C 0002EA9C  4E 80 00 20 */	blr

.global func_80032E40
func_80032E40:
/* 80032E40 0002EAA0  38 A0 00 01 */	li r5, 1
/* 80032E44 0002EAA4  38 6D 97 80 */	addi r3, r13, lbl_8063EA40-_SDA_BASE_
/* 80032E48 0002EAA8  38 80 00 04 */	li r4, 4
/* 80032E4C 0002EAAC  38 00 00 00 */	li r0, 0
/* 80032E50 0002EAB0  98 AD 97 80 */	stb r5, lbl_8063EA40-_SDA_BASE_(r13)
/* 80032E54 0002EAB4  B0 83 00 02 */	sth r4, 2(r3)
/* 80032E58 0002EAB8  98 03 00 04 */	stb r0, 4(r3)
/* 80032E5C 0002EABC  4E 80 00 20 */	blr
