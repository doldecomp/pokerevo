.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8000A7C4
func_8000A7C4:
/* 8000A7C4 00006424  7C 64 1B 78 */	mr r4, r3
/* 8000A7C8 00006428  80 6D 96 2C */	lwz r3, lbl_8063E8EC-_SDA_BASE_(r13)
/* 8000A7CC 0000642C  48 1D 05 7C */	b func_801DAD48

.global func_8000A7D0
func_8000A7D0:
/* 8000A7D0 00006430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000A7D4 00006434  7C 08 02 A6 */	mflr r0
/* 8000A7D8 00006438  2C 03 00 00 */	cmpwi r3, 0
/* 8000A7DC 0000643C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000A7E0 00006440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000A7E4 00006444  7C 7F 1B 78 */	mr r31, r3
/* 8000A7E8 00006448  41 82 00 10 */	beq lbl_8000A7F8
/* 8000A7EC 0000644C  2C 04 00 00 */	cmpwi r4, 0
/* 8000A7F0 00006450  40 81 00 08 */	ble lbl_8000A7F8
/* 8000A7F4 00006454  48 1D 02 C5 */	bl func_801DAAB8
lbl_8000A7F8:
/* 8000A7F8 00006458  7F E3 FB 78 */	mr r3, r31
/* 8000A7FC 0000645C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000A800 00006460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000A804 00006464  7C 08 03 A6 */	mtlr r0
/* 8000A808 00006468  38 21 00 10 */	addi r1, r1, 0x10
/* 8000A80C 0000646C  4E 80 00 20 */	blr

.global func_8000A810
func_8000A810:
/* 8000A810 00006470  4E 80 00 20 */	blr

.global func_8000A814
func_8000A814:
/* 8000A814 00006474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000A818 00006478  7C 08 02 A6 */	mflr r0
/* 8000A81C 0000647C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000A820 00006480  38 00 00 01 */	li r0, 1
/* 8000A824 00006484  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8000A828 00006488  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8000A82C 0000648C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8000A830 00006490  7C 9D 23 78 */	mr r29, r4
/* 8000A834 00006494  98 03 00 04 */	stb r0, 4(r3)
/* 8000A838 00006498  83 ED 96 F0 */	lwz r31, lbl_8063E9B0-_SDA_BASE_(r13)
/* 8000A83C 0000649C  2C 1F 00 00 */	cmpwi r31, 0
/* 8000A840 000064A0  41 82 00 28 */	beq lbl_8000A868
/* 8000A844 000064A4  3C A0 80 40 */	lis r5, lbl_80405E98@ha
/* 8000A848 000064A8  7F E3 FB 78 */	mr r3, r31
/* 8000A84C 000064AC  7F A6 EB 78 */	mr r6, r29
/* 8000A850 000064B0  38 80 00 01 */	li r4, 1
/* 8000A854 000064B4  38 A5 5E 98 */	addi r5, r5, lbl_80405E98@l
/* 8000A858 000064B8  38 E0 00 00 */	li r7, 0
/* 8000A85C 000064BC  39 00 00 00 */	li r8, 0
/* 8000A860 000064C0  39 20 00 00 */	li r9, 0
/* 8000A864 000064C4  48 01 AA 15 */	bl func_80025278
lbl_8000A868:
/* 8000A868 000064C8  48 00 02 D5 */	bl func_8000AB3C
/* 8000A86C 000064CC  2C 03 00 00 */	cmpwi r3, 0
/* 8000A870 000064D0  7C 7E 1B 78 */	mr r30, r3
/* 8000A874 000064D4  41 82 00 8C */	beq lbl_8000A900
/* 8000A878 000064D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8000A87C 000064DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8000A880 000064E0  7D 89 03 A6 */	mtctr r12
/* 8000A884 000064E4  4E 80 04 21 */	bctrl
/* 8000A888 000064E8  2C 03 00 04 */	cmpwi r3, 4
/* 8000A88C 000064EC  41 82 00 0C */	beq lbl_8000A898
/* 8000A890 000064F0  40 80 00 3C */	bge lbl_8000A8CC
/* 8000A894 000064F4  48 00 00 38 */	b lbl_8000A8CC
lbl_8000A898:
/* 8000A898 000064F8  38 60 00 0C */	li r3, 0xc
/* 8000A89C 000064FC  48 23 ED 41 */	bl func_802495DC
/* 8000A8A0 00006500  2C 1F 00 00 */	cmpwi r31, 0
/* 8000A8A4 00006504  41 82 00 28 */	beq lbl_8000A8CC
/* 8000A8A8 00006508  3C A0 80 40 */	lis r5, lbl_80405E98@ha
/* 8000A8AC 0000650C  7F E3 FB 78 */	mr r3, r31
/* 8000A8B0 00006510  7F A6 EB 78 */	mr r6, r29
/* 8000A8B4 00006514  38 80 00 00 */	li r4, 0
/* 8000A8B8 00006518  38 A5 5E 98 */	addi r5, r5, lbl_80405E98@l
/* 8000A8BC 0000651C  38 E0 00 00 */	li r7, 0
/* 8000A8C0 00006520  39 00 00 00 */	li r8, 0
/* 8000A8C4 00006524  39 20 00 00 */	li r9, 0
/* 8000A8C8 00006528  48 01 AA 25 */	bl func_800252EC
lbl_8000A8CC:
/* 8000A8CC 0000652C  4B FF C7 C1 */	bl func_8000708C
/* 8000A8D0 00006530  2C 03 00 00 */	cmpwi r3, 0
/* 8000A8D4 00006534  41 82 00 2C */	beq lbl_8000A900
/* 8000A8D8 00006538  7F C3 F3 78 */	mr r3, r30
/* 8000A8DC 0000653C  48 00 02 49 */	bl func_8000AB24
/* 8000A8E0 00006540  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8000A8E4 00006544  41 82 00 1C */	beq lbl_8000A900
/* 8000A8E8 00006548  7F C3 F3 78 */	mr r3, r30
/* 8000A8EC 0000654C  48 00 02 39 */	bl func_8000AB24
/* 8000A8F0 00006550  C0 22 80 70 */	lfs f1, lbl_80640670-_SDA2_BASE_(r2)
/* 8000A8F4 00006554  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8000A8F8 00006558  38 80 00 00 */	li r4, 0
/* 8000A8FC 0000655C  48 00 08 75 */	bl func_8000B170
lbl_8000A900:
/* 8000A900 00006560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000A904 00006564  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8000A908 00006568  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8000A90C 0000656C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8000A910 00006570  7C 08 03 A6 */	mtlr r0
/* 8000A914 00006574  38 21 00 20 */	addi r1, r1, 0x20
/* 8000A918 00006578  4E 80 00 20 */	blr

.global func_8000A91C
func_8000A91C:
/* 8000A91C 0000657C  88 03 00 04 */	lbz r0, 4(r3)
/* 8000A920 00006580  2C 00 00 00 */	cmpwi r0, 0
/* 8000A924 00006584  4D 82 00 20 */	beqlr
/* 8000A928 00006588  38 00 00 00 */	li r0, 0
/* 8000A92C 0000658C  98 03 00 04 */	stb r0, 4(r3)
/* 8000A930 00006590  80 6D 96 F0 */	lwz r3, lbl_8063E9B0-_SDA_BASE_(r13)
/* 8000A934 00006594  2C 03 00 00 */	cmpwi r3, 0
/* 8000A938 00006598  4D 82 00 20 */	beqlr
/* 8000A93C 0000659C  7C 86 23 78 */	mr r6, r4
/* 8000A940 000065A0  38 80 00 01 */	li r4, 1
/* 8000A944 000065A4  38 AD 80 20 */	addi r5, r13, lbl_8063D2E0-_SDA_BASE_
/* 8000A948 000065A8  38 E0 00 00 */	li r7, 0
/* 8000A94C 000065AC  39 00 00 00 */	li r8, 0
/* 8000A950 000065B0  39 20 00 00 */	li r9, 0
/* 8000A954 000065B4  48 01 A9 24 */	b func_80025278
/* 8000A958 000065B8  4E 80 00 20 */	blr

.global func_8000A95C
func_8000A95C:
/* 8000A95C 000065BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000A960 000065C0  7C 08 02 A6 */	mflr r0
/* 8000A964 000065C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000A968 000065C8  80 6D 96 F0 */	lwz r3, lbl_8063E9B0-_SDA_BASE_(r13)
/* 8000A96C 000065CC  2C 03 00 00 */	cmpwi r3, 0
/* 8000A970 000065D0  41 82 00 24 */	beq lbl_8000A994
/* 8000A974 000065D4  3C A0 80 40 */	lis r5, lbl_80405EA4@ha
/* 8000A978 000065D8  7C 86 23 78 */	mr r6, r4
/* 8000A97C 000065DC  38 80 00 01 */	li r4, 1
/* 8000A980 000065E0  38 E0 00 00 */	li r7, 0
/* 8000A984 000065E4  38 A5 5E A4 */	addi r5, r5, lbl_80405EA4@l
/* 8000A988 000065E8  39 00 00 00 */	li r8, 0
/* 8000A98C 000065EC  39 20 00 00 */	li r9, 0
/* 8000A990 000065F0  48 01 A8 E9 */	bl func_80025278
lbl_8000A994:
/* 8000A994 000065F4  38 60 00 0C */	li r3, 0xc
/* 8000A998 000065F8  48 23 EE F9 */	bl func_80249890
/* 8000A99C 000065FC  38 60 00 0C */	li r3, 0xc
/* 8000A9A0 00006600  48 1D 0C D5 */	bl func_801DB674
/* 8000A9A4 00006604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000A9A8 00006608  7C 08 03 A6 */	mtlr r0
/* 8000A9AC 0000660C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000A9B0 00006610  4E 80 00 20 */	blr

.global func_8000A9B4
func_8000A9B4:
/* 8000A9B4 00006614  4E 80 00 20 */	blr

.global func_8000A9B8
func_8000A9B8:
/* 8000A9B8 00006618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000A9BC 0000661C  7C 08 02 A6 */	mflr r0
/* 8000A9C0 00006620  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000A9C4 00006624  80 0D A3 80 */	lwz r0, lbl_8063F640-_SDA_BASE_(r13)
/* 8000A9C8 00006628  2C 00 00 00 */	cmpwi r0, 0
/* 8000A9CC 0000662C  41 82 00 28 */	beq lbl_8000A9F4
/* 8000A9D0 00006630  80 0D 96 80 */	lwz r0, lbl_8063E940-_SDA_BASE_(r13)
/* 8000A9D4 00006634  2C 00 00 00 */	cmpwi r0, 0
/* 8000A9D8 00006638  40 82 00 1C */	bne lbl_8000A9F4
/* 8000A9DC 0000663C  38 60 00 04 */	li r3, 4
/* 8000A9E0 00006640  48 1D 00 51 */	bl func_801DAA30
/* 8000A9E4 00006644  2C 03 00 00 */	cmpwi r3, 0
/* 8000A9E8 00006648  41 82 00 08 */	beq lbl_8000A9F0
/* 8000A9EC 0000664C  48 00 00 19 */	bl func_8000AA04
lbl_8000A9F0:
/* 8000A9F0 00006650  90 6D 96 80 */	stw r3, lbl_8063E940-_SDA_BASE_(r13)
lbl_8000A9F4:
/* 8000A9F4 00006654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000A9F8 00006658  7C 08 03 A6 */	mtlr r0
/* 8000A9FC 0000665C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000AA00 00006660  4E 80 00 20 */	blr

.global func_8000AA04
func_8000AA04:
/* 8000AA04 00006664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000AA08 00006668  7C 08 02 A6 */	mflr r0
/* 8000AA0C 0000666C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000AA10 00006670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000AA14 00006674  7C 7F 1B 78 */	mr r31, r3
/* 8000AA18 00006678  80 0D A3 80 */	lwz r0, lbl_8063F640-_SDA_BASE_(r13)
/* 8000AA1C 0000667C  2C 00 00 00 */	cmpwi r0, 0
/* 8000AA20 00006680  40 82 00 08 */	bne lbl_8000AA28
/* 8000AA24 00006684  48 00 00 48 */	b lbl_8000AA6C
lbl_8000AA28:
/* 8000AA28 00006688  38 60 00 08 */	li r3, 8
/* 8000AA2C 0000668C  48 1D 00 05 */	bl func_801DAA30
/* 8000AA30 00006690  2C 03 00 00 */	cmpwi r3, 0
/* 8000AA34 00006694  7C 66 1B 78 */	mr r6, r3
/* 8000AA38 00006698  41 82 00 10 */	beq lbl_8000AA48
/* 8000AA3C 0000669C  3C 80 80 40 */	lis r4, lbl_80405EB0@ha
/* 8000AA40 000066A0  38 84 5E B0 */	addi r4, r4, lbl_80405EB0@l
/* 8000AA44 000066A4  90 83 00 00 */	stw r4, 0(r3)
lbl_8000AA48:
/* 8000AA48 000066A8  90 7F 00 00 */	stw r3, 0(r31)
/* 8000AA4C 000066AC  80 6D A3 80 */	lwz r3, lbl_8063F640-_SDA_BASE_(r13)
/* 8000AA50 000066B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8000AA54 000066B4  2C 03 00 00 */	cmpwi r3, 0
/* 8000AA58 000066B8  41 82 00 10 */	beq lbl_8000AA68
/* 8000AA5C 000066BC  38 80 00 00 */	li r4, 0
/* 8000AA60 000066C0  38 A0 00 00 */	li r5, 0
/* 8000AA64 000066C4  48 21 D6 85 */	bl func_802280E8
lbl_8000AA68:
/* 8000AA68 000066C8  7F E3 FB 78 */	mr r3, r31
lbl_8000AA6C:
/* 8000AA6C 000066CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000AA70 000066D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000AA74 000066D4  7C 08 03 A6 */	mtlr r0
/* 8000AA78 000066D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8000AA7C 000066DC  4E 80 00 20 */	blr

.global func_8000AA80
func_8000AA80:
/* 8000AA80 000066E0  38 60 00 00 */	li r3, 0
/* 8000AA84 000066E4  4E 80 00 20 */	blr

.global func_8000AA88
func_8000AA88:
/* 8000AA88 000066E8  38 60 00 00 */	li r3, 0
/* 8000AA8C 000066EC  4E 80 00 20 */	blr

.global func_8000AA90
func_8000AA90:
/* 8000AA90 000066F0  4E 80 00 20 */	blr

.global func_8000AA94
func_8000AA94:
/* 8000AA94 000066F4  4E 80 00 20 */	blr

.global func_8000AA98
func_8000AA98:
/* 8000AA98 000066F8  3C 60 80 40 */	lis r3, lbl_80405F20@ha
/* 8000AA9C 000066FC  38 63 5F 20 */	addi r3, r3, lbl_80405F20@l
/* 8000AAA0 00006700  4E 80 00 20 */	blr

.global func_8000AAA4
func_8000AAA4:
/* 8000AAA4 00006704  38 A0 00 01 */	li r5, 1
/* 8000AAA8 00006708  38 6D 96 78 */	addi r3, r13, lbl_8063E938-_SDA_BASE_
/* 8000AAAC 0000670C  38 80 00 04 */	li r4, 4
/* 8000AAB0 00006710  38 00 00 00 */	li r0, 0
/* 8000AAB4 00006714  98 AD 96 78 */	stb r5, lbl_8063E938-_SDA_BASE_(r13)
/* 8000AAB8 00006718  B0 83 00 02 */	sth r4, 2(r3)
/* 8000AABC 0000671C  98 03 00 04 */	stb r0, 4(r3)
/* 8000AAC0 00006720  4E 80 00 20 */	blr