.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

lbl_80228B0C:
/* 80228B0C 0022476C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228B10 00224770  7C 08 02 A6 */	mflr r0
/* 80228B14 00224774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228B18 00224778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228B1C 0022477C  7C 7F 1B 78 */	mr r31, r3
/* 80228B20 00224780  48 00 00 6D */	bl func_80228B8C
/* 80228B24 00224784  38 00 00 00 */	li r0, 0
/* 80228B28 00224788  7F E3 FB 78 */	mr r3, r31
/* 80228B2C 0022478C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80228B30 00224790  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80228B34 00224794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228B38 00224798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228B3C 0022479C  7C 08 03 A6 */	mtlr r0
/* 80228B40 002247A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80228B44 002247A4  4E 80 00 20 */	blr

.global func_80228B48
func_80228B48:
/* 80228B48 002247A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228B4C 002247AC  7C 08 02 A6 */	mflr r0
/* 80228B50 002247B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228B54 002247B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228B58 002247B8  7C 7F 1B 78 */	mr r31, r3
/* 80228B5C 002247BC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80228B60 002247C0  2C 00 00 00 */	cmpwi r0, 0
/* 80228B64 002247C4  40 82 00 0C */	bne lbl_80228B70
/* 80228B68 002247C8  4B DF C2 55 */	bl func_80024DBC
/* 80228B6C 002247CC  90 7F 00 14 */	stw r3, 0x14(r31)
lbl_80228B70:
/* 80228B70 002247D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228B74 002247D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228B78 002247D8  7C 08 03 A6 */	mtlr r0
/* 80228B7C 002247DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80228B80 002247E0  4E 80 00 20 */	blr

.global func_80228B84
func_80228B84:
/* 80228B84 002247E4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80228B88 002247E8  4E 80 00 20 */	blr

.global func_80228B8C
func_80228B8C:
/* 80228B8C 002247EC  38 C0 00 00 */	li r6, 0
/* 80228B90 002247F0  38 00 00 01 */	li r0, 1
/* 80228B94 002247F4  90 C3 00 00 */	stw r6, 0(r3)
/* 80228B98 002247F8  38 80 00 00 */	li r4, 0
/* 80228B9C 002247FC  38 A0 02 00 */	li r5, 0x200
/* 80228BA0 00224800  90 C3 00 08 */	stw r6, 8(r3)
/* 80228BA4 00224804  98 C3 00 10 */	stb r6, 0x10(r3)
/* 80228BA8 00224808  98 C3 00 11 */	stb r6, 0x11(r3)
/* 80228BAC 0022480C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80228BB0 00224810  90 C3 02 20 */	stw r6, 0x220(r3)
/* 80228BB4 00224814  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 80228BB8 00224818  38 63 00 20 */	addi r3, r3, 0x20
/* 80228BBC 0022481C  4B DD B5 48 */	b memset

.global func_80228BC0
func_80228BC0:
/* 80228BC0 00224820  38 80 00 01 */	li r4, 1
/* 80228BC4 00224824  38 00 00 00 */	li r0, 0
/* 80228BC8 00224828  98 83 00 10 */	stb r4, 0x10(r3)
/* 80228BCC 0022482C  98 03 00 11 */	stb r0, 0x11(r3)
/* 80228BD0 00224830  4E 80 00 20 */	blr

.global GCAudioStreaming_AudioStreamBuffer___ct
GCAudioStreaming_AudioStreamBuffer___ct:
/* 80228BD4 00224834  38 80 00 00 */	li r4, 0
/* 80228BD8 00224838  38 00 00 01 */	li r0, 1
/* 80228BDC 0022483C  98 83 00 10 */	stb r4, 0x10(r3)
/* 80228BE0 00224840  98 03 00 11 */	stb r0, 0x11(r3)
/* 80228BE4 00224844  4E 80 00 20 */	blr

.global func_80228BE8
func_80228BE8:
/* 80228BE8 00224848  38 00 00 00 */	li r0, 0
/* 80228BEC 0022484C  98 03 00 10 */	stb r0, 0x10(r3)
/* 80228BF0 00224850  98 03 00 11 */	stb r0, 0x11(r3)
/* 80228BF4 00224854  4E 80 00 20 */	blr
lbl_80228BF8:
/* 80228BF8 00224858  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80228BFC 0022485C  2C 00 00 00 */	cmpwi r0, 0
/* 80228C00 00224860  41 82 00 0C */	beq lbl_80228C0C
/* 80228C04 00224864  38 60 00 01 */	li r3, 1
/* 80228C08 00224868  4E 80 00 20 */	blr
lbl_80228C0C:
/* 80228C0C 0022486C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80228C10 00224870  38 60 00 03 */	li r3, 3
/* 80228C14 00224874  2C 00 00 00 */	cmpwi r0, 0
/* 80228C18 00224878  4D 82 00 20 */	beqlr
/* 80228C1C 0022487C  38 60 00 02 */	li r3, 2
/* 80228C20 00224880  4E 80 00 20 */	blr

.global func_80228C24
func_80228C24:
/* 80228C24 00224884  38 04 50 01 */	addi r0, r4, 0x5001
/* 80228C28 00224888  90 83 00 04 */	stw r4, 4(r3)
/* 80228C2C 0022488C  90 03 00 00 */	stw r0, 0(r3)
/* 80228C30 00224890  4E 80 00 20 */	blr

.global func_80228C34
func_80228C34:
/* 80228C34 00224894  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 80228C38 00224898  90 83 00 00 */	stw r4, 0(r3)
/* 80228C3C 0022489C  2C 05 00 00 */	cmpwi r5, 0
/* 80228C40 002248A0  4D 82 00 20 */	beqlr
/* 80228C44 002248A4  38 04 20 00 */	addi r0, r4, 0x2000
/* 80228C48 002248A8  90 05 03 20 */	stw r0, 0x320(r5)
/* 80228C4C 002248AC  4E 80 00 20 */	blr

.global func_80228C50
func_80228C50:
/* 80228C50 002248B0  90 83 00 08 */	stw r4, 8(r3)
/* 80228C54 002248B4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80228C58 002248B8  4E 80 00 20 */	blr

.global func_80228C5C
func_80228C5C:
/* 80228C5C 002248BC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80228C60 002248C0  2C 03 00 00 */	cmpwi r3, 0
/* 80228C64 002248C4  4D 82 00 20 */	beqlr
/* 80228C68 002248C8  4B FF BA C4 */	b func_8022472C
/* 80228C6C 002248CC  4E 80 00 20 */	blr

.global func_80228C70
func_80228C70:
/* 80228C70 002248D0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80228C74 002248D4  2C 03 00 00 */	cmpwi r3, 0
/* 80228C78 002248D8  4D 82 00 20 */	beqlr
/* 80228C7C 002248DC  4B FF BA 1C */	b func_80224698
/* 80228C80 002248E0  4E 80 00 20 */	blr

.global func_80228C84
func_80228C84:
/* 80228C84 002248E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80228C88 002248E8  7C 08 02 A6 */	mflr r0
/* 80228C8C 002248EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80228C90 002248F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80228C94 002248F4  3B E3 02 20 */	addi r31, r3, 0x220
/* 80228C98 002248F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80228C9C 002248FC  3B C3 00 20 */	addi r30, r3, 0x20
/* 80228CA0 00224900  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80228CA4 00224904  7C 7D 1B 78 */	mr r29, r3
/* 80228CA8 00224908  48 00 00 1C */	b lbl_80228CC4
lbl_80228CAC:
/* 80228CAC 0022490C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80228CB0 00224910  2C 03 00 00 */	cmpwi r3, 0
/* 80228CB4 00224914  41 82 00 0C */	beq lbl_80228CC0
/* 80228CB8 00224918  80 9E 00 04 */	lwz r4, 4(r30)
/* 80228CBC 0022491C  4B FB 29 89 */	bl func_801DB644
lbl_80228CC0:
/* 80228CC0 00224920  3B DE 00 08 */	addi r30, r30, 8
lbl_80228CC4:
/* 80228CC4 00224924  7C 1E F8 40 */	cmplw r30, r31
/* 80228CC8 00224928  40 82 FF E4 */	bne lbl_80228CAC
/* 80228CCC 0022492C  38 7D 00 20 */	addi r3, r29, 0x20
/* 80228CD0 00224930  38 80 00 00 */	li r4, 0
/* 80228CD4 00224934  38 A0 02 00 */	li r5, 0x200
/* 80228CD8 00224938  4B DD B4 2D */	bl memset
/* 80228CDC 0022493C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80228CE0 00224940  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80228CE4 00224944  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80228CE8 00224948  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80228CEC 0022494C  7C 08 03 A6 */	mtlr r0
/* 80228CF0 00224950  38 21 00 20 */	addi r1, r1, 0x20
/* 80228CF4 00224954  4E 80 00 20 */	blr

.global lbl_80228CF8
lbl_80228CF8:
/* 80228CF8 00224958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228CFC 0022495C  7C 08 02 A6 */	mflr r0
/* 80228D00 00224960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228D04 00224964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228D08 00224968  7C 7F 1B 78 */	mr r31, r3
/* 80228D0C 0022496C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80228D10 00224970  2C 00 00 00 */	cmpwi r0, 0
/* 80228D14 00224974  41 82 00 10 */	beq lbl_80228D24
/* 80228D18 00224978  4B DD E6 85 */	bl func_8000739C
/* 80228D1C 0022497C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80228D20 00224980  48 00 1E 89 */	bl func_8022ABA8
lbl_80228D24:
/* 80228D24 00224984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228D28 00224988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228D2C 0022498C  7C 08 03 A6 */	mtlr r0
/* 80228D30 00224990  38 21 00 10 */	addi r1, r1, 0x10
/* 80228D34 00224994  4E 80 00 20 */	blr

.global func_80228D38
func_80228D38:
/* 80228D38 00224998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80228D3C 0022499C  7C 08 02 A6 */	mflr r0
/* 80228D40 002249A0  1C A4 02 24 */	mulli r5, r4, 0x224
/* 80228D44 002249A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80228D48 002249A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80228D4C 002249AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80228D50 002249B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80228D54 002249B4  7C 9D 23 78 */	mr r29, r4
/* 80228D58 002249B8  93 81 00 10 */	stw r28, 0x10(r1)
/* 80228D5C 002249BC  7C 7C 1B 78 */	mr r28, r3
/* 80228D60 002249C0  38 65 00 10 */	addi r3, r5, 0x10
/* 80228D64 002249C4  4B FB 1D 11 */	bl func_801DAA74
/* 80228D68 002249C8  3C 80 80 23 */	lis r4, lbl_80228B0C@ha
/* 80228D6C 002249CC  7F A7 EB 78 */	mr r7, r29
/* 80228D70 002249D0  38 84 8B 0C */	addi r4, r4, lbl_80228B0C@l
/* 80228D74 002249D4  38 A0 00 00 */	li r5, 0
/* 80228D78 002249D8  38 C0 02 24 */	li r6, 0x224
/* 80228D7C 002249DC  4B F9 DF 2D */	bl __construct_new_array
/* 80228D80 002249E0  38 00 00 00 */	li r0, 0
/* 80228D84 002249E4  90 7C 00 00 */	stw r3, 0(r28)
/* 80228D88 002249E8  3B C0 00 00 */	li r30, 0
/* 80228D8C 002249EC  3B E0 00 00 */	li r31, 0
/* 80228D90 002249F0  90 1C 00 04 */	stw r0, 4(r28)
/* 80228D94 002249F4  93 BC 00 08 */	stw r29, 8(r28)
/* 80228D98 002249F8  48 00 00 18 */	b lbl_80228DB0
lbl_80228D9C:
/* 80228D9C 002249FC  80 1C 00 00 */	lwz r0, 0(r28)
/* 80228DA0 00224A00  7C 60 FA 14 */	add r3, r0, r31
/* 80228DA4 00224A04  4B FF FD A5 */	bl func_80228B48
/* 80228DA8 00224A08  3B FF 02 24 */	addi r31, r31, 0x224
/* 80228DAC 00224A0C  3B DE 00 01 */	addi r30, r30, 1
lbl_80228DB0:
/* 80228DB0 00224A10  7C 1E E8 40 */	cmplw r30, r29
/* 80228DB4 00224A14  41 80 FF E8 */	blt lbl_80228D9C
/* 80228DB8 00224A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80228DBC 00224A1C  7F 83 E3 78 */	mr r3, r28
/* 80228DC0 00224A20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80228DC4 00224A24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80228DC8 00224A28  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80228DCC 00224A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80228DD0 00224A30  7C 08 03 A6 */	mtlr r0
/* 80228DD4 00224A34  38 21 00 20 */	addi r1, r1, 0x20
/* 80228DD8 00224A38  4E 80 00 20 */	blr

.global func_80228DDC
func_80228DDC:
/* 80228DDC 00224A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228DE0 00224A40  7C 08 02 A6 */	mflr r0
/* 80228DE4 00224A44  2C 03 00 00 */	cmpwi r3, 0
/* 80228DE8 00224A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228DEC 00224A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228DF0 00224A50  7C 9F 23 78 */	mr r31, r4
/* 80228DF4 00224A54  93 C1 00 08 */	stw r30, 8(r1)
/* 80228DF8 00224A58  7C 7E 1B 78 */	mr r30, r3
/* 80228DFC 00224A5C  41 82 00 2C */	beq lbl_80228E28
/* 80228E00 00224A60  80 63 00 00 */	lwz r3, 0(r3)
/* 80228E04 00224A64  2C 03 00 00 */	cmpwi r3, 0
/* 80228E08 00224A68  41 82 00 10 */	beq lbl_80228E18
/* 80228E0C 00224A6C  4B FB 1C AD */	bl __dl__FPv
/* 80228E10 00224A70  38 00 00 00 */	li r0, 0
/* 80228E14 00224A74  90 1E 00 00 */	stw r0, 0(r30)
lbl_80228E18:
/* 80228E18 00224A78  2C 1F 00 00 */	cmpwi r31, 0
/* 80228E1C 00224A7C  40 81 00 0C */	ble lbl_80228E28
/* 80228E20 00224A80  7F C3 F3 78 */	mr r3, r30
/* 80228E24 00224A84  4B FB 1C 95 */	bl __dl__FPv
lbl_80228E28:
/* 80228E28 00224A88  7F C3 F3 78 */	mr r3, r30
/* 80228E2C 00224A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228E30 00224A90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80228E34 00224A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228E38 00224A98  7C 08 03 A6 */	mtlr r0
/* 80228E3C 00224A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80228E40 00224AA0  4E 80 00 20 */	blr

.global func_80228E44
func_80228E44:
/* 80228E44 00224AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228E48 00224AA8  7C 08 02 A6 */	mflr r0
/* 80228E4C 00224AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228E50 00224AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228E54 00224AB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80228E58 00224AB8  7C 9E 23 78 */	mr r30, r4
/* 80228E5C 00224ABC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80228E60 00224AC0  80 83 00 00 */	lwz r4, 0(r3)
/* 80228E64 00224AC4  38 A5 00 01 */	addi r5, r5, 1
/* 80228E68 00224AC8  1C 05 02 24 */	mulli r0, r5, 0x224
/* 80228E6C 00224ACC  90 A3 00 04 */	stw r5, 4(r3)
/* 80228E70 00224AD0  7F E4 02 14 */	add r31, r4, r0
/* 80228E74 00224AD4  7F E3 FB 78 */	mr r3, r31
/* 80228E78 00224AD8  4B FF FD 15 */	bl func_80228B8C
/* 80228E7C 00224ADC  7F E3 FB 78 */	mr r3, r31
/* 80228E80 00224AE0  4B FF FD 41 */	bl func_80228BC0
/* 80228E84 00224AE4  7F E3 FB 78 */	mr r3, r31
/* 80228E88 00224AE8  7F C4 F3 78 */	mr r4, r30
/* 80228E8C 00224AEC  4B FF FD 99 */	bl func_80228C24
/* 80228E90 00224AF0  7F E3 FB 78 */	mr r3, r31
/* 80228E94 00224AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228E98 00224AF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80228E9C 00224AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228EA0 00224B00  7C 08 03 A6 */	mtlr r0
/* 80228EA4 00224B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80228EA8 00224B08  4E 80 00 20 */	blr

.global func_80228EAC
func_80228EAC:
/* 80228EAC 00224B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228EB0 00224B10  7C 08 02 A6 */	mflr r0
/* 80228EB4 00224B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228EB8 00224B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228EBC 00224B1C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80228EC0 00224B20  80 83 00 00 */	lwz r4, 0(r3)
/* 80228EC4 00224B24  38 A5 FF FF */	addi r5, r5, -1
/* 80228EC8 00224B28  1C 05 02 24 */	mulli r0, r5, 0x224
/* 80228ECC 00224B2C  90 A3 00 04 */	stw r5, 4(r3)
/* 80228ED0 00224B30  7F E4 02 14 */	add r31, r4, r0
/* 80228ED4 00224B34  7F E3 FB 78 */	mr r3, r31
/* 80228ED8 00224B38  4B FF FC FD */	bl GCAudioStreaming_AudioStreamBuffer___ct
/* 80228EDC 00224B3C  7F E3 FB 78 */	mr r3, r31
/* 80228EE0 00224B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228EE4 00224B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228EE8 00224B48  7C 08 03 A6 */	mtlr r0
/* 80228EEC 00224B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80228EF0 00224B50  4E 80 00 20 */	blr

.global func_80228EF4
func_80228EF4:
/* 80228EF4 00224B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228EF8 00224B58  7C 08 02 A6 */	mflr r0
/* 80228EFC 00224B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228F00 00224B60  80 03 00 04 */	lwz r0, 4(r3)
/* 80228F04 00224B64  80 AD A3 84 */	lwz r5, lbl_8063F644-_SDA_BASE_(r13)
/* 80228F08 00224B68  1C 00 02 24 */	mulli r0, r0, 0x224
/* 80228F0C 00224B6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80228F10 00224B70  2C 05 00 00 */	cmpwi r5, 0
/* 80228F14 00224B74  7C 83 02 14 */	add r4, r3, r0
/* 80228F18 00224B78  40 82 00 0C */	bne lbl_80228F24
/* 80228F1C 00224B7C  38 60 00 00 */	li r3, 0
/* 80228F20 00224B80  48 00 00 50 */	b lbl_80228F70
lbl_80228F24:
/* 80228F24 00224B84  81 85 00 00 */	lwz r12, 0(r5)
/* 80228F28 00224B88  7C A3 2B 78 */	mr r3, r5
/* 80228F2C 00224B8C  80 84 00 04 */	lwz r4, 4(r4)
/* 80228F30 00224B90  81 8C 00 08 */	lwz r12, 8(r12)
/* 80228F34 00224B94  7D 89 03 A6 */	mtctr r12
/* 80228F38 00224B98  4E 80 04 21 */	bctrl
/* 80228F3C 00224B9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80228F40 00224BA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80228F44 00224BA4  7D 89 03 A6 */	mtctr r12
/* 80228F48 00224BA8  4E 80 04 21 */	bctrl
/* 80228F4C 00224BAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80228F50 00224BB0  28 00 00 03 */	cmplwi r0, 3
/* 80228F54 00224BB4  40 82 00 0C */	bne lbl_80228F60
/* 80228F58 00224BB8  38 60 00 01 */	li r3, 1
/* 80228F5C 00224BBC  48 00 00 14 */	b lbl_80228F70
lbl_80228F60:
/* 80228F60 00224BC0  28 00 00 04 */	cmplwi r0, 4
/* 80228F64 00224BC4  38 60 00 00 */	li r3, 0
/* 80228F68 00224BC8  40 82 00 08 */	bne lbl_80228F70
/* 80228F6C 00224BCC  38 60 00 02 */	li r3, 2
lbl_80228F70:
/* 80228F70 00224BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228F74 00224BD4  7C 08 03 A6 */	mtlr r0
/* 80228F78 00224BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80228F7C 00224BDC  4E 80 00 20 */	blr

.global func_80228F80
func_80228F80:
/* 80228F80 00224BE0  80 03 00 04 */	lwz r0, 4(r3)
/* 80228F84 00224BE4  80 AD A3 84 */	lwz r5, lbl_8063F644-_SDA_BASE_(r13)
/* 80228F88 00224BE8  1C 00 02 24 */	mulli r0, r0, 0x224
/* 80228F8C 00224BEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80228F90 00224BF0  2C 05 00 00 */	cmpwi r5, 0
/* 80228F94 00224BF4  7C 83 02 14 */	add r4, r3, r0
/* 80228F98 00224BF8  40 82 00 0C */	bne lbl_80228FA4
/* 80228F9C 00224BFC  38 60 00 00 */	li r3, 0
/* 80228FA0 00224C00  4E 80 00 20 */	blr
lbl_80228FA4:
/* 80228FA4 00224C04  81 85 00 00 */	lwz r12, 0(r5)
/* 80228FA8 00224C08  7C A3 2B 78 */	mr r3, r5
/* 80228FAC 00224C0C  80 84 00 04 */	lwz r4, 4(r4)
/* 80228FB0 00224C10  81 8C 00 08 */	lwz r12, 8(r12)
/* 80228FB4 00224C14  7D 89 03 A6 */	mtctr r12
/* 80228FB8 00224C18  4E 80 04 20 */	bctr
/* 80228FBC 00224C1C  4E 80 00 20 */	blr

.global func_80228FC0
func_80228FC0:
/* 80228FC0 00224C20  80 03 00 04 */	lwz r0, 4(r3)
/* 80228FC4 00224C24  80 63 00 00 */	lwz r3, 0(r3)
/* 80228FC8 00224C28  1C 00 02 24 */	mulli r0, r0, 0x224
/* 80228FCC 00224C2C  7C 63 02 14 */	add r3, r3, r0
/* 80228FD0 00224C30  4B FF FC 28 */	b lbl_80228BF8

.global func_80228FD4
func_80228FD4:
/* 80228FD4 00224C34  80 03 00 04 */	lwz r0, 4(r3)
/* 80228FD8 00224C38  80 63 00 00 */	lwz r3, 0(r3)
/* 80228FDC 00224C3C  1C 00 02 24 */	mulli r0, r0, 0x224
/* 80228FE0 00224C40  7C 63 02 14 */	add r3, r3, r0
/* 80228FE4 00224C44  90 83 02 20 */	stw r4, 0x220(r3)
/* 80228FE8 00224C48  4E 80 00 20 */	blr

.global func_80228FEC
func_80228FEC:
/* 80228FEC 00224C4C  80 03 00 04 */	lwz r0, 4(r3)
/* 80228FF0 00224C50  80 63 00 00 */	lwz r3, 0(r3)
/* 80228FF4 00224C54  1C 00 02 24 */	mulli r0, r0, 0x224
/* 80228FF8 00224C58  7C 63 02 14 */	add r3, r3, r0
/* 80228FFC 00224C5C  4B FF FC 54 */	b func_80228C50

.global func_80229000
func_80229000:
/* 80229000 00224C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80229004 00224C64  7C 08 02 A6 */	mflr r0
/* 80229008 00224C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022900C 00224C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80229010 00224C70  80 03 00 04 */	lwz r0, 4(r3)
/* 80229014 00224C74  80 63 00 00 */	lwz r3, 0(r3)
/* 80229018 00224C78  1C 00 02 24 */	mulli r0, r0, 0x224
/* 8022901C 00224C7C  7F E3 02 14 */	add r31, r3, r0
/* 80229020 00224C80  7F E3 FB 78 */	mr r3, r31
/* 80229024 00224C84  4B FF FC 11 */	bl func_80228C34
/* 80229028 00224C88  7F E3 FB 78 */	mr r3, r31
/* 8022902C 00224C8C  4B FF FC 45 */	bl func_80228C70
/* 80229030 00224C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80229034 00224C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80229038 00224C98  7C 08 03 A6 */	mtlr r0
/* 8022903C 00224C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80229040 00224CA0  4E 80 00 20 */	blr

.global func_80229044
func_80229044:
/* 80229044 00224CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80229048 00224CA8  7C 08 02 A6 */	mflr r0
/* 8022904C 00224CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80229050 00224CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80229054 00224CB4  7C 7F 1B 78 */	mr r31, r3
/* 80229058 00224CB8  80 1F 00 04 */	lwz r0, 4(r31)
/* 8022905C 00224CBC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80229060 00224CC0  1C 00 02 24 */	mulli r0, r0, 0x224
/* 80229064 00224CC4  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80229068 00224CC8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8022906C 00224CCC  4B FF B3 95 */	bl func_80224400
/* 80229070 00224CD0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80229074 00224CD4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80229078 00224CD8  1C 00 02 24 */	mulli r0, r0, 0x224
/* 8022907C 00224CDC  7C 63 02 14 */	add r3, r3, r0
/* 80229080 00224CE0  4B FF FB DD */	bl func_80228C5C
/* 80229084 00224CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80229088 00224CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022908C 00224CEC  7C 08 03 A6 */	mtlr r0
/* 80229090 00224CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80229094 00224CF4  4E 80 00 20 */	blr

.global func_80229098
func_80229098:
/* 80229098 00224CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022909C 00224CFC  7C 08 02 A6 */	mflr r0
/* 802290A0 00224D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802290A4 00224D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802290A8 00224D08  7C 7F 1B 78 */	mr r31, r3
/* 802290AC 00224D0C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802290B0 00224D10  80 9F 00 00 */	lwz r4, 0(r31)
/* 802290B4 00224D14  1C 00 02 24 */	mulli r0, r0, 0x224
/* 802290B8 00224D18  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 802290BC 00224D1C  7C 84 00 2E */	lwzx r4, r4, r0
/* 802290C0 00224D20  4B FF B3 C1 */	bl func_80224480
/* 802290C4 00224D24  80 1F 00 04 */	lwz r0, 4(r31)
/* 802290C8 00224D28  80 7F 00 00 */	lwz r3, 0(r31)
/* 802290CC 00224D2C  1C 00 02 24 */	mulli r0, r0, 0x224
/* 802290D0 00224D30  7C 63 02 14 */	add r3, r3, r0
/* 802290D4 00224D34  4B FF FB 9D */	bl func_80228C70
/* 802290D8 00224D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802290DC 00224D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802290E0 00224D40  7C 08 03 A6 */	mtlr r0
/* 802290E4 00224D44  38 21 00 10 */	addi r1, r1, 0x10
/* 802290E8 00224D48  4E 80 00 20 */	blr

.global func_802290EC
func_802290EC:
/* 802290EC 00224D4C  38 A0 00 01 */	li r5, 1
/* 802290F0 00224D50  38 6D A3 A0 */	addi r3, r13, lbl_8063F660-_SDA_BASE_
/* 802290F4 00224D54  38 80 00 04 */	li r4, 4
/* 802290F8 00224D58  38 00 00 00 */	li r0, 0
/* 802290FC 00224D5C  98 AD A3 A0 */	stb r5, lbl_8063F660-_SDA_BASE_(r13)
/* 80229100 00224D60  B0 83 00 02 */	sth r4, 2(r3)
/* 80229104 00224D64  98 03 00 04 */	stb r0, 4(r3)
/* 80229108 00224D68  4E 80 00 20 */	blr