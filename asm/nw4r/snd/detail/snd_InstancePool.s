.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl
CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl:
/* 80371944 0036D5A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371948 0036D5A8  7C 08 02 A6 */	mflr r0
/* 8037194C 0036D5AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371950 0036D5B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371954 0036D5B4  7C 7F 1B 78 */	mr r31, r3
/* 80371958 0036D5B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037195C 0036D5BC  7C DE 33 78 */	mr r30, r6
/* 80371960 0036D5C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80371964 0036D5C4  7C BD 2B 78 */	mr r29, r5
/* 80371968 0036D5C8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8037196C 0036D5CC  7C 9C 23 78 */	mr r28, r4
/* 80371970 0036D5D0  4B EF CD ED */	bl OSDisableInterrupts
/* 80371974 0036D5D4  38 1C 00 03 */	addi r0, r28, 3
/* 80371978 0036D5D8  38 9E 00 03 */	addi r4, r30, 3
/* 8037197C 0036D5DC  54 06 00 3A */	rlwinm r6, r0, 0, 0, 0x1d
/* 80371980 0036D5E0  38 E0 00 00 */	li r7, 0
/* 80371984 0036D5E4  7C 1C 30 50 */	subf r0, r28, r6
/* 80371988 0036D5E8  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 8037198C 0036D5EC  7C 00 E8 50 */	subf r0, r0, r29
/* 80371990 0036D5F0  7F C0 23 97 */	divwu. r30, r0, r4
/* 80371994 0036D5F4  41 82 00 CC */	beq lbl_80371A60
/* 80371998 0036D5F8  28 1E 00 08 */	cmplwi r30, 8
/* 8037199C 0036D5FC  38 BE FF F8 */	addi r5, r30, -8
/* 803719A0 0036D600  40 81 00 9C */	ble lbl_80371A3C
/* 803719A4 0036D604  38 05 00 07 */	addi r0, r5, 7
/* 803719A8 0036D608  54 00 E8 FE */	srwi r0, r0, 3
/* 803719AC 0036D60C  7C 09 03 A6 */	mtctr r0
/* 803719B0 0036D610  28 05 00 00 */	cmplwi r5, 0
/* 803719B4 0036D614  40 81 00 88 */	ble lbl_80371A3C
lbl_803719B8:
/* 803719B8 0036D618  80 1F 00 00 */	lwz r0, 0(r31)
/* 803719BC 0036D61C  7C C8 33 78 */	mr r8, r6
/* 803719C0 0036D620  38 E7 00 08 */	addi r7, r7, 8
/* 803719C4 0036D624  90 06 00 00 */	stw r0, 0(r6)
/* 803719C8 0036D628  90 DF 00 00 */	stw r6, 0(r31)
/* 803719CC 0036D62C  7C C6 22 14 */	add r6, r6, r4
/* 803719D0 0036D630  7C C5 33 78 */	mr r5, r6
/* 803719D4 0036D634  91 06 00 00 */	stw r8, 0(r6)
/* 803719D8 0036D638  90 DF 00 00 */	stw r6, 0(r31)
/* 803719DC 0036D63C  7C C6 22 14 */	add r6, r6, r4
/* 803719E0 0036D640  7C C0 33 78 */	mr r0, r6
/* 803719E4 0036D644  90 A6 00 00 */	stw r5, 0(r6)
/* 803719E8 0036D648  90 DF 00 00 */	stw r6, 0(r31)
/* 803719EC 0036D64C  7C C6 22 14 */	add r6, r6, r4
/* 803719F0 0036D650  7C C5 33 78 */	mr r5, r6
/* 803719F4 0036D654  90 06 00 00 */	stw r0, 0(r6)
/* 803719F8 0036D658  90 DF 00 00 */	stw r6, 0(r31)
/* 803719FC 0036D65C  7C C6 22 14 */	add r6, r6, r4
/* 80371A00 0036D660  7C C0 33 78 */	mr r0, r6
/* 80371A04 0036D664  90 A6 00 00 */	stw r5, 0(r6)
/* 80371A08 0036D668  90 DF 00 00 */	stw r6, 0(r31)
/* 80371A0C 0036D66C  7C C6 22 14 */	add r6, r6, r4
/* 80371A10 0036D670  7C C5 33 78 */	mr r5, r6
/* 80371A14 0036D674  90 06 00 00 */	stw r0, 0(r6)
/* 80371A18 0036D678  90 DF 00 00 */	stw r6, 0(r31)
/* 80371A1C 0036D67C  7C C6 22 14 */	add r6, r6, r4
/* 80371A20 0036D680  7C C0 33 78 */	mr r0, r6
/* 80371A24 0036D684  90 A6 00 00 */	stw r5, 0(r6)
/* 80371A28 0036D688  90 DF 00 00 */	stw r6, 0(r31)
/* 80371A2C 0036D68C  7C 06 21 6E */	stwux r0, r6, r4
/* 80371A30 0036D690  90 DF 00 00 */	stw r6, 0(r31)
/* 80371A34 0036D694  7C C6 22 14 */	add r6, r6, r4
/* 80371A38 0036D698  42 00 FF 80 */	bdnz lbl_803719B8
lbl_80371A3C:
/* 80371A3C 0036D69C  7C 07 F0 50 */	subf r0, r7, r30
/* 80371A40 0036D6A0  7C 09 03 A6 */	mtctr r0
/* 80371A44 0036D6A4  7C 07 F0 40 */	cmplw r7, r30
/* 80371A48 0036D6A8  40 80 00 18 */	bge lbl_80371A60
lbl_80371A4C:
/* 80371A4C 0036D6AC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80371A50 0036D6B0  90 06 00 00 */	stw r0, 0(r6)
/* 80371A54 0036D6B4  90 DF 00 00 */	stw r6, 0(r31)
/* 80371A58 0036D6B8  7C C6 22 14 */	add r6, r6, r4
/* 80371A5C 0036D6BC  42 00 FF F0 */	bdnz lbl_80371A4C
lbl_80371A60:
/* 80371A60 0036D6C0  4B EF CD 25 */	bl OSRestoreInterrupts
/* 80371A64 0036D6C4  7F C3 F3 78 */	mr r3, r30
/* 80371A68 0036D6C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80371A6C 0036D6CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80371A70 0036D6D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80371A74 0036D6D4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80371A78 0036D6D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371A7C 0036D6DC  7C 08 03 A6 */	mtlr r0
/* 80371A80 0036D6E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80371A84 0036D6E4  4E 80 00 20 */	blr

.global DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl
DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl:
/* 80371A88 0036D6E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371A8C 0036D6EC  7C 08 02 A6 */	mflr r0
/* 80371A90 0036D6F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371A94 0036D6F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371A98 0036D6F8  7C BF 2B 78 */	mr r31, r5
/* 80371A9C 0036D6FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80371AA0 0036D700  7C 9E 23 78 */	mr r30, r4
/* 80371AA4 0036D704  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80371AA8 0036D708  7C 7D 1B 78 */	mr r29, r3
/* 80371AAC 0036D70C  4B EF CC B1 */	bl OSDisableInterrupts
/* 80371AB0 0036D710  80 BD 00 00 */	lwz r5, 0(r29)
/* 80371AB4 0036D714  7C 9E FA 14 */	add r4, r30, r31
/* 80371AB8 0036D718  48 00 00 28 */	b lbl_80371AE0
lbl_80371ABC:
/* 80371ABC 0036D71C  7C 1E 28 40 */	cmplw r30, r5
/* 80371AC0 0036D720  41 81 00 18 */	bgt lbl_80371AD8
/* 80371AC4 0036D724  7C 05 20 40 */	cmplw r5, r4
/* 80371AC8 0036D728  40 80 00 10 */	bge lbl_80371AD8
/* 80371ACC 0036D72C  80 05 00 00 */	lwz r0, 0(r5)
/* 80371AD0 0036D730  90 1D 00 00 */	stw r0, 0(r29)
/* 80371AD4 0036D734  48 00 00 08 */	b lbl_80371ADC
lbl_80371AD8:
/* 80371AD8 0036D738  7C BD 2B 78 */	mr r29, r5
lbl_80371ADC:
/* 80371ADC 0036D73C  80 A5 00 00 */	lwz r5, 0(r5)
lbl_80371AE0:
/* 80371AE0 0036D740  2C 05 00 00 */	cmpwi r5, 0
/* 80371AE4 0036D744  40 82 FF D8 */	bne lbl_80371ABC
/* 80371AE8 0036D748  4B EF CC 9D */	bl OSRestoreInterrupts
/* 80371AEC 0036D74C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371AF0 0036D750  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80371AF4 0036D754  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80371AF8 0036D758  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80371AFC 0036D75C  7C 08 03 A6 */	mtlr r0
/* 80371B00 0036D760  38 21 00 20 */	addi r1, r1, 0x20
/* 80371B04 0036D764  4E 80 00 20 */	blr

.global CountImpl__Q44nw4r3snd6detail8PoolImplCFv
CountImpl__Q44nw4r3snd6detail8PoolImplCFv:
/* 80371B08 0036D768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371B0C 0036D76C  7C 08 02 A6 */	mflr r0
/* 80371B10 0036D770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371B14 0036D774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80371B18 0036D778  7C 7F 1B 78 */	mr r31, r3
/* 80371B1C 0036D77C  4B EF CC 41 */	bl OSDisableInterrupts
/* 80371B20 0036D780  80 9F 00 00 */	lwz r4, 0(r31)
/* 80371B24 0036D784  3B E0 00 00 */	li r31, 0
/* 80371B28 0036D788  48 00 00 0C */	b lbl_80371B34
lbl_80371B2C:
/* 80371B2C 0036D78C  80 84 00 00 */	lwz r4, 0(r4)
/* 80371B30 0036D790  3B FF 00 01 */	addi r31, r31, 1
lbl_80371B34:
/* 80371B34 0036D794  2C 04 00 00 */	cmpwi r4, 0
/* 80371B38 0036D798  40 82 FF F4 */	bne lbl_80371B2C
/* 80371B3C 0036D79C  4B EF CC 49 */	bl OSRestoreInterrupts
/* 80371B40 0036D7A0  7F E3 FB 78 */	mr r3, r31
/* 80371B44 0036D7A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80371B48 0036D7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371B4C 0036D7AC  7C 08 03 A6 */	mtlr r0
/* 80371B50 0036D7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80371B54 0036D7B4  4E 80 00 20 */	blr

.global AllocImpl__Q44nw4r3snd6detail8PoolImplFv
AllocImpl__Q44nw4r3snd6detail8PoolImplFv:
/* 80371B58 0036D7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371B5C 0036D7BC  7C 08 02 A6 */	mflr r0
/* 80371B60 0036D7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371B64 0036D7C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80371B68 0036D7C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80371B6C 0036D7CC  7C 7E 1B 78 */	mr r30, r3
/* 80371B70 0036D7D0  4B EF CB ED */	bl OSDisableInterrupts
/* 80371B74 0036D7D4  83 FE 00 00 */	lwz r31, 0(r30)
/* 80371B78 0036D7D8  2C 1F 00 00 */	cmpwi r31, 0
/* 80371B7C 0036D7DC  40 82 00 10 */	bne lbl_80371B8C
/* 80371B80 0036D7E0  4B EF CC 05 */	bl OSRestoreInterrupts
/* 80371B84 0036D7E4  38 60 00 00 */	li r3, 0
/* 80371B88 0036D7E8  48 00 00 14 */	b lbl_80371B9C
lbl_80371B8C:
/* 80371B8C 0036D7EC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80371B90 0036D7F0  90 1E 00 00 */	stw r0, 0(r30)
/* 80371B94 0036D7F4  4B EF CB F1 */	bl OSRestoreInterrupts
/* 80371B98 0036D7F8  7F E3 FB 78 */	mr r3, r31
lbl_80371B9C:
/* 80371B9C 0036D7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371BA0 0036D800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80371BA4 0036D804  83 C1 00 08 */	lwz r30, 8(r1)
/* 80371BA8 0036D808  7C 08 03 A6 */	mtlr r0
/* 80371BAC 0036D80C  38 21 00 10 */	addi r1, r1, 0x10
/* 80371BB0 0036D810  4E 80 00 20 */	blr

.global FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
FreeImpl__Q44nw4r3snd6detail8PoolImplFPv:
/* 80371BB4 0036D814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371BB8 0036D818  7C 08 02 A6 */	mflr r0
/* 80371BBC 0036D81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371BC0 0036D820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80371BC4 0036D824  7C 9F 23 78 */	mr r31, r4
/* 80371BC8 0036D828  93 C1 00 08 */	stw r30, 8(r1)
/* 80371BCC 0036D82C  7C 7E 1B 78 */	mr r30, r3
/* 80371BD0 0036D830  4B EF CB 8D */	bl OSDisableInterrupts
/* 80371BD4 0036D834  80 1E 00 00 */	lwz r0, 0(r30)
/* 80371BD8 0036D838  90 1F 00 00 */	stw r0, 0(r31)
/* 80371BDC 0036D83C  93 FE 00 00 */	stw r31, 0(r30)
/* 80371BE0 0036D840  4B EF CB A5 */	bl OSRestoreInterrupts
/* 80371BE4 0036D844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371BE8 0036D848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80371BEC 0036D84C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80371BF0 0036D850  7C 08 03 A6 */	mtlr r0
/* 80371BF4 0036D854  38 21 00 10 */	addi r1, r1, 0x10
/* 80371BF8 0036D858  4E 80 00 20 */	blr
