.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global NWC24SuspendScheduler
NWC24SuspendScheduler:
/* 803039F4 002FF654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803039F8 002FF658  7C 08 02 A6 */	mflr r0
/* 803039FC 002FF65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80303A00 002FF660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80303A04 002FF664  3F E0 80 58 */	lis r31, lbl_8057E7A0@ha
/* 80303A08 002FF668  3B FF E7 A0 */	addi r31, r31, lbl_8057E7A0@l
/* 80303A0C 002FF66C  93 C1 00 08 */	stw r30, 8(r1)
/* 80303A10 002FF670  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303A14 002FF674  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303A18 002FF678  40 82 00 5C */	bne lbl_80303A74
/* 80303A1C 002FF67C  4B F6 AD 41 */	bl OSDisableInterrupts
/* 80303A20 002FF680  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303A24 002FF684  7C 7E 1B 78 */	mr r30, r3
/* 80303A28 002FF688  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303A2C 002FF68C  40 82 00 40 */	bne lbl_80303A6C
/* 80303A30 002FF690  38 7F 00 00 */	addi r3, r31, 0
/* 80303A34 002FF694  4B F6 BE DD */	bl OSInitMutex
/* 80303A38 002FF698  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303A3C 002FF69C  4B F6 BE D5 */	bl OSInitMutex
/* 80303A40 002FF6A0  38 7F 00 40 */	addi r3, r31, 0x40
/* 80303A44 002FF6A4  38 80 00 00 */	li r4, 0
/* 80303A48 002FF6A8  38 A0 00 20 */	li r5, 0x20
/* 80303A4C 002FF6AC  4B D0 06 B9 */	bl memset
/* 80303A50 002FF6B0  38 7F 00 60 */	addi r3, r31, 0x60
/* 80303A54 002FF6B4  38 80 00 00 */	li r4, 0
/* 80303A58 002FF6B8  38 A0 00 20 */	li r5, 0x20
/* 80303A5C 002FF6BC  4B D0 06 A9 */	bl memset
/* 80303A60 002FF6C0  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303A64 002FF6C4  60 00 00 01 */	ori r0, r0, 1
/* 80303A68 002FF6C8  90 0D AF B0 */	stw r0, lbl_80640270-_SDA_BASE_(r13)
lbl_80303A6C:
/* 80303A6C 002FF6CC  7F C3 F3 78 */	mr r3, r30
/* 80303A70 002FF6D0  4B F6 AD 15 */	bl OSRestoreInterrupts
lbl_80303A74:
/* 80303A74 002FF6D4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303A78 002FF6D8  4B F6 BE D1 */	bl OSLockMutex
/* 80303A7C 002FF6DC  48 00 04 E1 */	bl ExecSuspendScheduler
/* 80303A80 002FF6E0  2C 03 00 00 */	cmpwi r3, 0
/* 80303A84 002FF6E4  7C 7E 1B 78 */	mr r30, r3
/* 80303A88 002FF6E8  41 80 00 18 */	blt lbl_80303AA0
/* 80303A8C 002FF6EC  80 8D AF B4 */	lwz r4, lbl_80640274-_SDA_BASE_(r13)
/* 80303A90 002FF6F0  80 0D AF B8 */	lwz r0, lbl_80640278-_SDA_BASE_(r13)
/* 80303A94 002FF6F4  38 84 00 01 */	addi r4, r4, 1
/* 80303A98 002FF6F8  90 8D AF B4 */	stw r4, lbl_80640274-_SDA_BASE_(r13)
/* 80303A9C 002FF6FC  7F C0 18 50 */	subf r30, r0, r3
lbl_80303AA0:
/* 80303AA0 002FF700  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303AA4 002FF704  4B F6 BF 81 */	bl OSUnlockMutex
/* 80303AA8 002FF708  7F C3 F3 78 */	mr r3, r30
/* 80303AAC 002FF70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80303AB0 002FF710  83 C1 00 08 */	lwz r30, 8(r1)
/* 80303AB4 002FF714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80303AB8 002FF718  7C 08 03 A6 */	mtlr r0
/* 80303ABC 002FF71C  38 21 00 10 */	addi r1, r1, 0x10
/* 80303AC0 002FF720  4E 80 00 20 */	blr

.global NWC24ResumeScheduler
NWC24ResumeScheduler:
/* 80303AC4 002FF724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80303AC8 002FF728  7C 08 02 A6 */	mflr r0
/* 80303ACC 002FF72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80303AD0 002FF730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80303AD4 002FF734  3F E0 80 58 */	lis r31, lbl_8057E7A0@ha
/* 80303AD8 002FF738  3B FF E7 A0 */	addi r31, r31, lbl_8057E7A0@l
/* 80303ADC 002FF73C  93 C1 00 08 */	stw r30, 8(r1)
/* 80303AE0 002FF740  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303AE4 002FF744  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303AE8 002FF748  40 82 00 5C */	bne lbl_80303B44
/* 80303AEC 002FF74C  4B F6 AC 71 */	bl OSDisableInterrupts
/* 80303AF0 002FF750  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303AF4 002FF754  7C 7E 1B 78 */	mr r30, r3
/* 80303AF8 002FF758  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303AFC 002FF75C  40 82 00 40 */	bne lbl_80303B3C
/* 80303B00 002FF760  38 7F 00 00 */	addi r3, r31, 0
/* 80303B04 002FF764  4B F6 BE 0D */	bl OSInitMutex
/* 80303B08 002FF768  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303B0C 002FF76C  4B F6 BE 05 */	bl OSInitMutex
/* 80303B10 002FF770  38 7F 00 40 */	addi r3, r31, 0x40
/* 80303B14 002FF774  38 80 00 00 */	li r4, 0
/* 80303B18 002FF778  38 A0 00 20 */	li r5, 0x20
/* 80303B1C 002FF77C  4B D0 05 E9 */	bl memset
/* 80303B20 002FF780  38 7F 00 60 */	addi r3, r31, 0x60
/* 80303B24 002FF784  38 80 00 00 */	li r4, 0
/* 80303B28 002FF788  38 A0 00 20 */	li r5, 0x20
/* 80303B2C 002FF78C  4B D0 05 D9 */	bl memset
/* 80303B30 002FF790  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303B34 002FF794  60 00 00 01 */	ori r0, r0, 1
/* 80303B38 002FF798  90 0D AF B0 */	stw r0, lbl_80640270-_SDA_BASE_(r13)
lbl_80303B3C:
/* 80303B3C 002FF79C  7F C3 F3 78 */	mr r3, r30
/* 80303B40 002FF7A0  4B F6 AC 45 */	bl OSRestoreInterrupts
lbl_80303B44:
/* 80303B44 002FF7A4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303B48 002FF7A8  4B F6 BE 01 */	bl OSLockMutex
/* 80303B4C 002FF7AC  80 0D AF B8 */	lwz r0, lbl_80640278-_SDA_BASE_(r13)
/* 80303B50 002FF7B0  2C 00 00 00 */	cmpwi r0, 0
/* 80303B54 002FF7B4  40 81 00 18 */	ble lbl_80303B6C
/* 80303B58 002FF7B8  80 0D AF B4 */	lwz r0, lbl_80640274-_SDA_BASE_(r13)
/* 80303B5C 002FF7BC  2C 00 00 00 */	cmpwi r0, 0
/* 80303B60 002FF7C0  40 82 00 0C */	bne lbl_80303B6C
/* 80303B64 002FF7C4  3B C0 00 00 */	li r30, 0
/* 80303B68 002FF7C8  48 00 00 28 */	b lbl_80303B90
lbl_80303B6C:
/* 80303B6C 002FF7CC  48 00 05 8D */	bl ExecResumeScheduler
/* 80303B70 002FF7D0  80 8D AF B4 */	lwz r4, lbl_80640274-_SDA_BASE_(r13)
/* 80303B74 002FF7D4  7C 7E 1B 78 */	mr r30, r3
/* 80303B78 002FF7D8  2C 04 00 00 */	cmpwi r4, 0
/* 80303B7C 002FF7DC  40 81 00 14 */	ble lbl_80303B90
/* 80303B80 002FF7E0  38 84 FF FF */	addi r4, r4, -1
/* 80303B84 002FF7E4  80 0D AF B8 */	lwz r0, lbl_80640278-_SDA_BASE_(r13)
/* 80303B88 002FF7E8  90 8D AF B4 */	stw r4, lbl_80640274-_SDA_BASE_(r13)
/* 80303B8C 002FF7EC  7F C0 18 50 */	subf r30, r0, r3
lbl_80303B90:
/* 80303B90 002FF7F0  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303B94 002FF7F4  4B F6 BE 91 */	bl OSUnlockMutex
/* 80303B98 002FF7F8  7F C3 F3 78 */	mr r3, r30
/* 80303B9C 002FF7FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80303BA0 002FF800  83 C1 00 08 */	lwz r30, 8(r1)
/* 80303BA4 002FF804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80303BA8 002FF808  7C 08 03 A6 */	mtlr r0
/* 80303BAC 002FF80C  38 21 00 10 */	addi r1, r1, 0x10
/* 80303BB0 002FF810  4E 80 00 20 */	blr

.global NWC24iRequestGenerateUserId
NWC24iRequestGenerateUserId:
/* 80303BB4 002FF814  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80303BB8 002FF818  7C 08 02 A6 */	mflr r0
/* 80303BBC 002FF81C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80303BC0 002FF820  39 61 00 30 */	addi r11, r1, 0x30
/* 80303BC4 002FF824  4B EC 35 65 */	bl _savegpr_27
/* 80303BC8 002FF828  3F A0 80 58 */	lis r29, lbl_8057E7A0@ha
/* 80303BCC 002FF82C  7C 7B 1B 78 */	mr r27, r3
/* 80303BD0 002FF830  7C 9F 23 78 */	mr r31, r4
/* 80303BD4 002FF834  3B BD E7 A0 */	addi r29, r29, lbl_8057E7A0@l
/* 80303BD8 002FF838  4B F6 D7 21 */	bl OSGetCurrentThread
/* 80303BDC 002FF83C  2C 03 00 00 */	cmpwi r3, 0
/* 80303BE0 002FF840  40 82 00 0C */	bne lbl_80303BEC
/* 80303BE4 002FF844  38 60 FF FF */	li r3, -1
/* 80303BE8 002FF848  48 00 00 28 */	b lbl_80303C10
lbl_80303BEC:
/* 80303BEC 002FF84C  4B FF F6 F9 */	bl NWC24IsMsgLibOpened
/* 80303BF0 002FF850  2C 03 00 00 */	cmpwi r3, 0
/* 80303BF4 002FF854  40 82 00 10 */	bne lbl_80303C04
/* 80303BF8 002FF858  4B FF F7 01 */	bl NWC24IsMsgLibOpenedByTool
/* 80303BFC 002FF85C  2C 03 00 00 */	cmpwi r3, 0
/* 80303C00 002FF860  41 82 00 0C */	beq lbl_80303C0C
lbl_80303C04:
/* 80303C04 002FF864  38 60 FF F6 */	li r3, -10
/* 80303C08 002FF868  48 00 00 08 */	b lbl_80303C10
lbl_80303C0C:
/* 80303C0C 002FF86C  38 60 00 00 */	li r3, 0
lbl_80303C10:
/* 80303C10 002FF870  2C 03 00 00 */	cmpwi r3, 0
/* 80303C14 002FF874  40 80 00 08 */	bge lbl_80303C1C
/* 80303C18 002FF878  48 00 01 40 */	b lbl_80303D58
lbl_80303C1C:
/* 80303C1C 002FF87C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303C20 002FF880  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303C24 002FF884  40 82 00 5C */	bne lbl_80303C80
/* 80303C28 002FF888  4B F6 AB 35 */	bl OSDisableInterrupts
/* 80303C2C 002FF88C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303C30 002FF890  7C 7E 1B 78 */	mr r30, r3
/* 80303C34 002FF894  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303C38 002FF898  40 82 00 40 */	bne lbl_80303C78
/* 80303C3C 002FF89C  38 7D 00 00 */	addi r3, r29, 0
/* 80303C40 002FF8A0  4B F6 BC D1 */	bl OSInitMutex
/* 80303C44 002FF8A4  38 7D 00 18 */	addi r3, r29, 0x18
/* 80303C48 002FF8A8  4B F6 BC C9 */	bl OSInitMutex
/* 80303C4C 002FF8AC  38 7D 00 40 */	addi r3, r29, 0x40
/* 80303C50 002FF8B0  38 80 00 00 */	li r4, 0
/* 80303C54 002FF8B4  38 A0 00 20 */	li r5, 0x20
/* 80303C58 002FF8B8  4B D0 04 AD */	bl memset
/* 80303C5C 002FF8BC  38 7D 00 60 */	addi r3, r29, 0x60
/* 80303C60 002FF8C0  38 80 00 00 */	li r4, 0
/* 80303C64 002FF8C4  38 A0 00 20 */	li r5, 0x20
/* 80303C68 002FF8C8  4B D0 04 9D */	bl memset
/* 80303C6C 002FF8CC  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303C70 002FF8D0  60 00 00 01 */	ori r0, r0, 1
/* 80303C74 002FF8D4  90 0D AF B0 */	stw r0, lbl_80640270-_SDA_BASE_(r13)
lbl_80303C78:
/* 80303C78 002FF8D8  7F C3 F3 78 */	mr r3, r30
/* 80303C7C 002FF8DC  4B F6 AB 09 */	bl OSRestoreInterrupts
lbl_80303C80:
/* 80303C80 002FF8E0  38 7D 00 00 */	addi r3, r29, 0
/* 80303C84 002FF8E4  4B F6 BC C5 */	bl OSLockMutex
/* 80303C88 002FF8E8  3F C0 80 44 */	lis r30, lbl_804464D4@ha
/* 80303C8C 002FF8EC  3C 80 80 44 */	lis r4, lbl_804464C0@ha
/* 80303C90 002FF8F0  38 7E 64 D4 */	addi r3, r30, lbl_804464D4@l
/* 80303C94 002FF8F4  38 A1 00 08 */	addi r5, r1, 8
/* 80303C98 002FF8F8  38 84 64 C0 */	addi r4, r4, lbl_804464C0@l
/* 80303C9C 002FF8FC  38 C0 00 00 */	li r6, 0
/* 80303CA0 002FF900  48 00 09 DD */	bl NWC24iOpenResourceManager
/* 80303CA4 002FF904  2C 03 00 00 */	cmpwi r3, 0
/* 80303CA8 002FF908  7C 7C 1B 78 */	mr r28, r3
/* 80303CAC 002FF90C  41 80 00 A0 */	blt lbl_80303D4C
/* 80303CB0 002FF910  80 81 00 08 */	lwz r4, 8(r1)
/* 80303CB4 002FF914  38 7E 64 D4 */	addi r3, r30, 0x64d4
/* 80303CB8 002FF918  39 1D 00 60 */	addi r8, r29, 0x60
/* 80303CBC 002FF91C  38 A0 00 0F */	li r5, 0xf
/* 80303CC0 002FF920  38 C0 00 00 */	li r6, 0
/* 80303CC4 002FF924  38 E0 00 00 */	li r7, 0
/* 80303CC8 002FF928  39 20 00 20 */	li r9, 0x20
/* 80303CCC 002FF92C  48 00 0A 5D */	bl NWC24iIoctlResourceManager
/* 80303CD0 002FF930  2C 03 00 00 */	cmpwi r3, 0
/* 80303CD4 002FF934  7C 7C 1B 78 */	mr r28, r3
/* 80303CD8 002FF938  41 80 00 58 */	blt lbl_80303D30
/* 80303CDC 002FF93C  83 9D 00 60 */	lwz r28, 0x60(r29)
/* 80303CE0 002FF940  2C 1C 00 00 */	cmpwi r28, 0
/* 80303CE4 002FF944  41 82 00 14 */	beq lbl_80303CF8
/* 80303CE8 002FF948  2C 1C FF DD */	cmpwi r28, -35
/* 80303CEC 002FF94C  41 82 00 0C */	beq lbl_80303CF8
/* 80303CF0 002FF950  2C 1C FF DC */	cmpwi r28, -36
/* 80303CF4 002FF954  40 82 00 3C */	bne lbl_80303D30
lbl_80303CF8:
/* 80303CF8 002FF958  38 00 00 00 */	li r0, 0
/* 80303CFC 002FF95C  7C 1B 00 40 */	cmplw r27, r0
/* 80303D00 002FF960  41 82 00 18 */	beq lbl_80303D18
/* 80303D04 002FF964  38 7D 00 60 */	addi r3, r29, 0x60
/* 80303D08 002FF968  80 03 00 04 */	lwz r0, 4(r3)
/* 80303D0C 002FF96C  80 63 00 08 */	lwz r3, 8(r3)
/* 80303D10 002FF970  90 7B 00 04 */	stw r3, 4(r27)
/* 80303D14 002FF974  90 1B 00 00 */	stw r0, 0(r27)
lbl_80303D18:
/* 80303D18 002FF978  38 00 00 00 */	li r0, 0
/* 80303D1C 002FF97C  7C 1F 00 40 */	cmplw r31, r0
/* 80303D20 002FF980  41 82 00 10 */	beq lbl_80303D30
/* 80303D24 002FF984  38 7D 00 60 */	addi r3, r29, 0x60
/* 80303D28 002FF988  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80303D2C 002FF98C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80303D30:
/* 80303D30 002FF990  3C 60 80 44 */	lis r3, lbl_804464D4@ha
/* 80303D34 002FF994  80 81 00 08 */	lwz r4, 8(r1)
/* 80303D38 002FF998  38 63 64 D4 */	addi r3, r3, lbl_804464D4@l
/* 80303D3C 002FF99C  48 00 09 B9 */	bl NWC24iCloseResourceManager
/* 80303D40 002FF9A0  2C 1C 00 00 */	cmpwi r28, 0
/* 80303D44 002FF9A4  41 80 00 08 */	blt lbl_80303D4C
/* 80303D48 002FF9A8  7C 7C 1B 78 */	mr r28, r3
lbl_80303D4C:
/* 80303D4C 002FF9AC  38 7D 00 00 */	addi r3, r29, 0
/* 80303D50 002FF9B0  4B F6 BC D5 */	bl OSUnlockMutex
/* 80303D54 002FF9B4  7F 83 E3 78 */	mr r3, r28
lbl_80303D58:
/* 80303D58 002FF9B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80303D5C 002FF9BC  4B EC 34 19 */	bl _restgpr_27
/* 80303D60 002FF9C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80303D64 002FF9C4  7C 08 03 A6 */	mtlr r0
/* 80303D68 002FF9C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80303D6C 002FF9CC  4E 80 00 20 */	blr

.global NWC24iStartupSocket
NWC24iStartupSocket:
/* 80303D70 002FF9D0  7C 65 1B 78 */	mr r5, r3
/* 80303D74 002FF9D4  38 60 00 00 */	li r3, 0
/* 80303D78 002FF9D8  38 80 00 06 */	li r4, 6
/* 80303D7C 002FF9DC  48 00 03 8C */	b ExecNoParamCommand

.global NWC24iCleanupSocket
NWC24iCleanupSocket:
/* 80303D80 002FF9E0  7C 65 1B 78 */	mr r5, r3
/* 80303D84 002FF9E4  38 60 00 00 */	li r3, 0
/* 80303D88 002FF9E8  38 80 00 07 */	li r4, 7
/* 80303D8C 002FF9EC  48 00 03 7C */	b ExecNoParamCommand

.global NWC24iLockSocket
NWC24iLockSocket:
/* 80303D90 002FF9F0  38 60 00 00 */	li r3, 0
/* 80303D94 002FF9F4  38 80 00 08 */	li r4, 8
/* 80303D98 002FF9F8  38 A0 00 00 */	li r5, 0
/* 80303D9C 002FF9FC  48 00 03 6C */	b ExecNoParamCommand

.global NWC24iUnlockSocket
NWC24iUnlockSocket:
/* 80303DA0 002FFA00  38 60 00 00 */	li r3, 0
/* 80303DA4 002FFA04  38 80 00 09 */	li r4, 9
/* 80303DA8 002FFA08  38 A0 00 00 */	li r5, 0
/* 80303DAC 002FFA0C  48 00 03 5C */	b ExecNoParamCommand

.global NWC24iTrySuspendForOpenLib
NWC24iTrySuspendForOpenLib:
/* 80303DB0 002FFA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80303DB4 002FFA14  7C 08 02 A6 */	mflr r0
/* 80303DB8 002FFA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80303DBC 002FFA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80303DC0 002FFA20  3F E0 80 58 */	lis r31, lbl_8057E7A0@ha
/* 80303DC4 002FFA24  3B FF E7 A0 */	addi r31, r31, lbl_8057E7A0@l
/* 80303DC8 002FFA28  93 C1 00 08 */	stw r30, 8(r1)
/* 80303DCC 002FFA2C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303DD0 002FFA30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303DD4 002FFA34  40 82 00 5C */	bne lbl_80303E30
/* 80303DD8 002FFA38  4B F6 A9 85 */	bl OSDisableInterrupts
/* 80303DDC 002FFA3C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303DE0 002FFA40  7C 7E 1B 78 */	mr r30, r3
/* 80303DE4 002FFA44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303DE8 002FFA48  40 82 00 40 */	bne lbl_80303E28
/* 80303DEC 002FFA4C  38 7F 00 00 */	addi r3, r31, 0
/* 80303DF0 002FFA50  4B F6 BB 21 */	bl OSInitMutex
/* 80303DF4 002FFA54  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303DF8 002FFA58  4B F6 BB 19 */	bl OSInitMutex
/* 80303DFC 002FFA5C  38 7F 00 40 */	addi r3, r31, 0x40
/* 80303E00 002FFA60  38 80 00 00 */	li r4, 0
/* 80303E04 002FFA64  38 A0 00 20 */	li r5, 0x20
/* 80303E08 002FFA68  4B D0 02 FD */	bl memset
/* 80303E0C 002FFA6C  38 7F 00 60 */	addi r3, r31, 0x60
/* 80303E10 002FFA70  38 80 00 00 */	li r4, 0
/* 80303E14 002FFA74  38 A0 00 20 */	li r5, 0x20
/* 80303E18 002FFA78  4B D0 02 ED */	bl memset
/* 80303E1C 002FFA7C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303E20 002FFA80  60 00 00 01 */	ori r0, r0, 1
/* 80303E24 002FFA84  90 0D AF B0 */	stw r0, lbl_80640270-_SDA_BASE_(r13)
lbl_80303E28:
/* 80303E28 002FFA88  7F C3 F3 78 */	mr r3, r30
/* 80303E2C 002FFA8C  4B F6 A9 59 */	bl OSRestoreInterrupts
lbl_80303E30:
/* 80303E30 002FFA90  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303E34 002FFA94  4B F6 BD 25 */	bl OSTryLockMutex
/* 80303E38 002FFA98  2C 03 00 00 */	cmpwi r3, 0
/* 80303E3C 002FFA9C  40 82 00 0C */	bne lbl_80303E48
/* 80303E40 002FFAA0  38 60 FF EA */	li r3, -22
/* 80303E44 002FFAA4  48 00 00 34 */	b lbl_80303E78
lbl_80303E48:
/* 80303E48 002FFAA8  38 60 00 00 */	li r3, 0
/* 80303E4C 002FFAAC  48 00 01 21 */	bl ExecTrySuspendScheduler
/* 80303E50 002FFAB0  2C 03 00 00 */	cmpwi r3, 0
/* 80303E54 002FFAB4  7C 7E 1B 78 */	mr r30, r3
/* 80303E58 002FFAB8  41 80 00 14 */	blt lbl_80303E6C
/* 80303E5C 002FFABC  80 6D AF B8 */	lwz r3, lbl_80640278-_SDA_BASE_(r13)
/* 80303E60 002FFAC0  3B C0 00 00 */	li r30, 0
/* 80303E64 002FFAC4  38 03 00 01 */	addi r0, r3, 1
/* 80303E68 002FFAC8  90 0D AF B8 */	stw r0, lbl_80640278-_SDA_BASE_(r13)
lbl_80303E6C:
/* 80303E6C 002FFACC  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303E70 002FFAD0  4B F6 BB B5 */	bl OSUnlockMutex
/* 80303E74 002FFAD4  7F C3 F3 78 */	mr r3, r30
lbl_80303E78:
/* 80303E78 002FFAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80303E7C 002FFADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80303E80 002FFAE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80303E84 002FFAE4  7C 08 03 A6 */	mtlr r0
/* 80303E88 002FFAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80303E8C 002FFAEC  4E 80 00 20 */	blr

.global NWC24iResumeForCloseLib
NWC24iResumeForCloseLib:
/* 80303E90 002FFAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80303E94 002FFAF4  7C 08 02 A6 */	mflr r0
/* 80303E98 002FFAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80303E9C 002FFAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80303EA0 002FFB00  3F E0 80 58 */	lis r31, lbl_8057E7A0@ha
/* 80303EA4 002FFB04  3B FF E7 A0 */	addi r31, r31, lbl_8057E7A0@l
/* 80303EA8 002FFB08  93 C1 00 08 */	stw r30, 8(r1)
/* 80303EAC 002FFB0C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303EB0 002FFB10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303EB4 002FFB14  40 82 00 5C */	bne lbl_80303F10
/* 80303EB8 002FFB18  4B F6 A8 A5 */	bl OSDisableInterrupts
/* 80303EBC 002FFB1C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303EC0 002FFB20  7C 7E 1B 78 */	mr r30, r3
/* 80303EC4 002FFB24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303EC8 002FFB28  40 82 00 40 */	bne lbl_80303F08
/* 80303ECC 002FFB2C  38 7F 00 00 */	addi r3, r31, 0
/* 80303ED0 002FFB30  4B F6 BA 41 */	bl OSInitMutex
/* 80303ED4 002FFB34  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303ED8 002FFB38  4B F6 BA 39 */	bl OSInitMutex
/* 80303EDC 002FFB3C  38 7F 00 40 */	addi r3, r31, 0x40
/* 80303EE0 002FFB40  38 80 00 00 */	li r4, 0
/* 80303EE4 002FFB44  38 A0 00 20 */	li r5, 0x20
/* 80303EE8 002FFB48  4B D0 02 1D */	bl memset
/* 80303EEC 002FFB4C  38 7F 00 60 */	addi r3, r31, 0x60
/* 80303EF0 002FFB50  38 80 00 00 */	li r4, 0
/* 80303EF4 002FFB54  38 A0 00 20 */	li r5, 0x20
/* 80303EF8 002FFB58  4B D0 02 0D */	bl memset
/* 80303EFC 002FFB5C  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303F00 002FFB60  60 00 00 01 */	ori r0, r0, 1
/* 80303F04 002FFB64  90 0D AF B0 */	stw r0, lbl_80640270-_SDA_BASE_(r13)
lbl_80303F08:
/* 80303F08 002FFB68  7F C3 F3 78 */	mr r3, r30
/* 80303F0C 002FFB6C  4B F6 A8 79 */	bl OSRestoreInterrupts
lbl_80303F10:
/* 80303F10 002FFB70  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303F14 002FFB74  4B F6 BA 35 */	bl OSLockMutex
/* 80303F18 002FFB78  48 00 01 E1 */	bl ExecResumeScheduler
/* 80303F1C 002FFB7C  2C 03 00 00 */	cmpwi r3, 0
/* 80303F20 002FFB80  7C 7E 1B 78 */	mr r30, r3
/* 80303F24 002FFB84  41 80 00 14 */	blt lbl_80303F38
/* 80303F28 002FFB88  80 6D AF B8 */	lwz r3, lbl_80640278-_SDA_BASE_(r13)
/* 80303F2C 002FFB8C  3B C0 00 00 */	li r30, 0
/* 80303F30 002FFB90  38 03 FF FF */	addi r0, r3, -1
/* 80303F34 002FFB94  90 0D AF B8 */	stw r0, lbl_80640278-_SDA_BASE_(r13)
lbl_80303F38:
/* 80303F38 002FFB98  38 7F 00 18 */	addi r3, r31, 0x18
/* 80303F3C 002FFB9C  4B F6 BA E9 */	bl OSUnlockMutex
/* 80303F40 002FFBA0  7F C3 F3 78 */	mr r3, r30
/* 80303F44 002FFBA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80303F48 002FFBA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80303F4C 002FFBAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80303F50 002FFBB0  7C 08 03 A6 */	mtlr r0
/* 80303F54 002FFBB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80303F58 002FFBB8  4E 80 00 20 */	blr

.global ExecSuspendScheduler
ExecSuspendScheduler:
/* 80303F5C 002FFBBC  38 60 00 00 */	li r3, 0
/* 80303F60 002FFBC0  38 80 00 01 */	li r4, 1
/* 80303F64 002FFBC4  38 A0 00 00 */	li r5, 0
/* 80303F68 002FFBC8  48 00 01 A0 */	b ExecNoParamCommand

.global ExecTrySuspendScheduler
ExecTrySuspendScheduler:
/* 80303F6C 002FFBCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80303F70 002FFBD0  7C 08 02 A6 */	mflr r0
/* 80303F74 002FFBD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80303F78 002FFBD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80303F7C 002FFBDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80303F80 002FFBE0  3F C0 80 58 */	lis r30, lbl_8057E7A0@ha
/* 80303F84 002FFBE4  3B DE E7 A0 */	addi r30, r30, lbl_8057E7A0@l
/* 80303F88 002FFBE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80303F8C 002FFBEC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80303F90 002FFBF0  7C 7C 1B 78 */	mr r28, r3
/* 80303F94 002FFBF4  4B F6 D3 65 */	bl OSGetCurrentThread
/* 80303F98 002FFBF8  2C 03 00 00 */	cmpwi r3, 0
/* 80303F9C 002FFBFC  40 82 00 0C */	bne lbl_80303FA8
/* 80303FA0 002FFC00  38 60 FF FF */	li r3, -1
/* 80303FA4 002FFC04  48 00 00 28 */	b lbl_80303FCC
lbl_80303FA8:
/* 80303FA8 002FFC08  4B FF F3 3D */	bl NWC24IsMsgLibOpened
/* 80303FAC 002FFC0C  2C 03 00 00 */	cmpwi r3, 0
/* 80303FB0 002FFC10  40 82 00 10 */	bne lbl_80303FC0
/* 80303FB4 002FFC14  4B FF F3 45 */	bl NWC24IsMsgLibOpenedByTool
/* 80303FB8 002FFC18  2C 03 00 00 */	cmpwi r3, 0
/* 80303FBC 002FFC1C  41 82 00 0C */	beq lbl_80303FC8
lbl_80303FC0:
/* 80303FC0 002FFC20  38 60 FF F6 */	li r3, -10
/* 80303FC4 002FFC24  48 00 00 08 */	b lbl_80303FCC
lbl_80303FC8:
/* 80303FC8 002FFC28  38 60 00 00 */	li r3, 0
lbl_80303FCC:
/* 80303FCC 002FFC2C  2C 03 00 00 */	cmpwi r3, 0
/* 80303FD0 002FFC30  40 80 00 08 */	bge lbl_80303FD8
/* 80303FD4 002FFC34  48 00 01 04 */	b lbl_803040D8
lbl_80303FD8:
/* 80303FD8 002FFC38  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303FDC 002FFC3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303FE0 002FFC40  40 82 00 5C */	bne lbl_8030403C
/* 80303FE4 002FFC44  4B F6 A7 79 */	bl OSDisableInterrupts
/* 80303FE8 002FFC48  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80303FEC 002FFC4C  7C 7F 1B 78 */	mr r31, r3
/* 80303FF0 002FFC50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80303FF4 002FFC54  40 82 00 40 */	bne lbl_80304034
/* 80303FF8 002FFC58  38 7E 00 00 */	addi r3, r30, 0
/* 80303FFC 002FFC5C  4B F6 B9 15 */	bl OSInitMutex
/* 80304000 002FFC60  38 7E 00 18 */	addi r3, r30, 0x18
/* 80304004 002FFC64  4B F6 B9 0D */	bl OSInitMutex
/* 80304008 002FFC68  38 7E 00 40 */	addi r3, r30, 0x40
/* 8030400C 002FFC6C  38 80 00 00 */	li r4, 0
/* 80304010 002FFC70  38 A0 00 20 */	li r5, 0x20
/* 80304014 002FFC74  4B D0 00 F1 */	bl memset
/* 80304018 002FFC78  38 7E 00 60 */	addi r3, r30, 0x60
/* 8030401C 002FFC7C  38 80 00 00 */	li r4, 0
/* 80304020 002FFC80  38 A0 00 20 */	li r5, 0x20
/* 80304024 002FFC84  4B D0 00 E1 */	bl memset
/* 80304028 002FFC88  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 8030402C 002FFC8C  60 00 00 01 */	ori r0, r0, 1
/* 80304030 002FFC90  90 0D AF B0 */	stw r0, lbl_80640270-_SDA_BASE_(r13)
lbl_80304034:
/* 80304034 002FFC94  7F E3 FB 78 */	mr r3, r31
/* 80304038 002FFC98  4B F6 A7 4D */	bl OSRestoreInterrupts
lbl_8030403C:
/* 8030403C 002FFC9C  38 7E 00 00 */	addi r3, r30, 0
/* 80304040 002FFCA0  4B F6 BB 19 */	bl OSTryLockMutex
/* 80304044 002FFCA4  2C 03 00 00 */	cmpwi r3, 0
/* 80304048 002FFCA8  40 82 00 0C */	bne lbl_80304054
/* 8030404C 002FFCAC  38 60 FF EA */	li r3, -22
/* 80304050 002FFCB0  48 00 00 88 */	b lbl_803040D8
lbl_80304054:
/* 80304054 002FFCB4  3F E0 80 44 */	lis r31, lbl_804464F0@ha
/* 80304058 002FFCB8  3C 80 80 44 */	lis r4, lbl_804464C0@ha
/* 8030405C 002FFCBC  38 7F 64 F0 */	addi r3, r31, lbl_804464F0@l
/* 80304060 002FFCC0  38 A1 00 08 */	addi r5, r1, 8
/* 80304064 002FFCC4  38 84 64 C0 */	addi r4, r4, lbl_804464C0@l
/* 80304068 002FFCC8  38 C0 00 00 */	li r6, 0
/* 8030406C 002FFCCC  48 00 06 11 */	bl NWC24iOpenResourceManager
/* 80304070 002FFCD0  2C 03 00 00 */	cmpwi r3, 0
/* 80304074 002FFCD4  7C 7D 1B 78 */	mr r29, r3
/* 80304078 002FFCD8  41 80 00 54 */	blt lbl_803040CC
/* 8030407C 002FFCDC  93 9E 00 40 */	stw r28, 0x40(r30)
/* 80304080 002FFCE0  38 7F 64 F0 */	addi r3, r31, 0x64f0
/* 80304084 002FFCE4  80 81 00 08 */	lwz r4, 8(r1)
/* 80304088 002FFCE8  38 DE 00 40 */	addi r6, r30, 0x40
/* 8030408C 002FFCEC  39 1E 00 60 */	addi r8, r30, 0x60
/* 80304090 002FFCF0  38 A0 00 02 */	li r5, 2
/* 80304094 002FFCF4  38 E0 00 20 */	li r7, 0x20
/* 80304098 002FFCF8  39 20 00 20 */	li r9, 0x20
/* 8030409C 002FFCFC  48 00 06 8D */	bl NWC24iIoctlResourceManager
/* 803040A0 002FFD00  2C 03 00 00 */	cmpwi r3, 0
/* 803040A4 002FFD04  7C 7D 1B 78 */	mr r29, r3
/* 803040A8 002FFD08  41 80 00 08 */	blt lbl_803040B0
/* 803040AC 002FFD0C  83 BE 00 60 */	lwz r29, 0x60(r30)
lbl_803040B0:
/* 803040B0 002FFD10  3C 60 80 44 */	lis r3, lbl_804464F0@ha
/* 803040B4 002FFD14  80 81 00 08 */	lwz r4, 8(r1)
/* 803040B8 002FFD18  38 63 64 F0 */	addi r3, r3, lbl_804464F0@l
/* 803040BC 002FFD1C  48 00 06 39 */	bl NWC24iCloseResourceManager
/* 803040C0 002FFD20  2C 03 00 00 */	cmpwi r3, 0
/* 803040C4 002FFD24  40 80 00 08 */	bge lbl_803040CC
/* 803040C8 002FFD28  7C 7D 1B 78 */	mr r29, r3
lbl_803040CC:
/* 803040CC 002FFD2C  38 7E 00 00 */	addi r3, r30, 0
/* 803040D0 002FFD30  4B F6 B9 55 */	bl OSUnlockMutex
/* 803040D4 002FFD34  7F A3 EB 78 */	mr r3, r29
lbl_803040D8:
/* 803040D8 002FFD38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803040DC 002FFD3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803040E0 002FFD40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803040E4 002FFD44  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803040E8 002FFD48  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803040EC 002FFD4C  7C 08 03 A6 */	mtlr r0
/* 803040F0 002FFD50  38 21 00 20 */	addi r1, r1, 0x20
/* 803040F4 002FFD54  4E 80 00 20 */	blr

.global ExecResumeScheduler
ExecResumeScheduler:
/* 803040F8 002FFD58  38 60 00 00 */	li r3, 0
/* 803040FC 002FFD5C  38 80 00 03 */	li r4, 3
/* 80304100 002FFD60  38 A0 00 00 */	li r5, 0
/* 80304104 002FFD64  48 00 00 04 */	b ExecNoParamCommand

ExecNoParamCommand:
/* 80304108 002FFD68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030410C 002FFD6C  7C 08 02 A6 */	mflr r0
/* 80304110 002FFD70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80304114 002FFD74  39 61 00 30 */	addi r11, r1, 0x30
/* 80304118 002FFD78  4B EC 30 11 */	bl _savegpr_27
/* 8030411C 002FFD7C  3F E0 80 58 */	lis r31, lbl_8057E7A0@ha
/* 80304120 002FFD80  7C 7B 1B 78 */	mr r27, r3
/* 80304124 002FFD84  7C 9C 23 78 */	mr r28, r4
/* 80304128 002FFD88  7C BD 2B 78 */	mr r29, r5
/* 8030412C 002FFD8C  3B FF E7 A0 */	addi r31, r31, lbl_8057E7A0@l
/* 80304130 002FFD90  4B F6 D1 C9 */	bl OSGetCurrentThread
/* 80304134 002FFD94  2C 03 00 00 */	cmpwi r3, 0
/* 80304138 002FFD98  40 82 00 0C */	bne lbl_80304144
/* 8030413C 002FFD9C  38 60 FF FF */	li r3, -1
/* 80304140 002FFDA0  48 00 01 10 */	b lbl_80304250
lbl_80304144:
/* 80304144 002FFDA4  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80304148 002FFDA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8030414C 002FFDAC  40 82 00 5C */	bne lbl_803041A8
/* 80304150 002FFDB0  4B F6 A6 0D */	bl OSDisableInterrupts
/* 80304154 002FFDB4  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80304158 002FFDB8  7C 7E 1B 78 */	mr r30, r3
/* 8030415C 002FFDBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80304160 002FFDC0  40 82 00 40 */	bne lbl_803041A0
/* 80304164 002FFDC4  38 7F 00 00 */	addi r3, r31, 0
/* 80304168 002FFDC8  4B F6 B7 A9 */	bl OSInitMutex
/* 8030416C 002FFDCC  38 7F 00 18 */	addi r3, r31, 0x18
/* 80304170 002FFDD0  4B F6 B7 A1 */	bl OSInitMutex
/* 80304174 002FFDD4  38 7F 00 40 */	addi r3, r31, 0x40
/* 80304178 002FFDD8  38 80 00 00 */	li r4, 0
/* 8030417C 002FFDDC  38 A0 00 20 */	li r5, 0x20
/* 80304180 002FFDE0  4B CF FF 85 */	bl memset
/* 80304184 002FFDE4  38 7F 00 60 */	addi r3, r31, 0x60
/* 80304188 002FFDE8  38 80 00 00 */	li r4, 0
/* 8030418C 002FFDEC  38 A0 00 20 */	li r5, 0x20
/* 80304190 002FFDF0  4B CF FF 75 */	bl memset
/* 80304194 002FFDF4  80 0D AF B0 */	lwz r0, lbl_80640270-_SDA_BASE_(r13)
/* 80304198 002FFDF8  60 00 00 01 */	ori r0, r0, 1
/* 8030419C 002FFDFC  90 0D AF B0 */	stw r0, lbl_80640270-_SDA_BASE_(r13)
lbl_803041A0:
/* 803041A0 002FFE00  7F C3 F3 78 */	mr r3, r30
/* 803041A4 002FFE04  4B F6 A5 E1 */	bl OSRestoreInterrupts
lbl_803041A8:
/* 803041A8 002FFE08  38 7F 00 00 */	addi r3, r31, 0
/* 803041AC 002FFE0C  4B F6 B7 9D */	bl OSLockMutex
/* 803041B0 002FFE10  3C 80 80 44 */	lis r4, lbl_804464C0@ha
/* 803041B4 002FFE14  7F 63 DB 78 */	mr r3, r27
/* 803041B8 002FFE18  38 84 64 C0 */	addi r4, r4, lbl_804464C0@l
/* 803041BC 002FFE1C  38 A1 00 08 */	addi r5, r1, 8
/* 803041C0 002FFE20  38 C0 00 00 */	li r6, 0
/* 803041C4 002FFE24  48 00 04 B9 */	bl NWC24iOpenResourceManager
/* 803041C8 002FFE28  2C 03 00 00 */	cmpwi r3, 0
/* 803041CC 002FFE2C  7C 7E 1B 78 */	mr r30, r3
/* 803041D0 002FFE30  41 80 00 74 */	blt lbl_80304244
/* 803041D4 002FFE34  80 81 00 08 */	lwz r4, 8(r1)
/* 803041D8 002FFE38  7F 63 DB 78 */	mr r3, r27
/* 803041DC 002FFE3C  7F 85 E3 78 */	mr r5, r28
/* 803041E0 002FFE40  39 1F 00 60 */	addi r8, r31, 0x60
/* 803041E4 002FFE44  38 C0 00 00 */	li r6, 0
/* 803041E8 002FFE48  38 E0 00 00 */	li r7, 0
/* 803041EC 002FFE4C  39 20 00 20 */	li r9, 0x20
/* 803041F0 002FFE50  48 00 05 39 */	bl NWC24iIoctlResourceManager
/* 803041F4 002FFE54  2C 03 00 00 */	cmpwi r3, 0
/* 803041F8 002FFE58  7C 7E 1B 78 */	mr r30, r3
/* 803041FC 002FFE5C  41 80 00 30 */	blt lbl_8030422C
/* 80304200 002FFE60  83 DF 00 60 */	lwz r30, 0x60(r31)
/* 80304204 002FFE64  2C 1E FF FE */	cmpwi r30, -2
/* 80304208 002FFE68  41 82 00 0C */	beq lbl_80304214
/* 8030420C 002FFE6C  2C 1E FF DF */	cmpwi r30, -33
/* 80304210 002FFE70  40 82 00 1C */	bne lbl_8030422C
lbl_80304214:
/* 80304214 002FFE74  38 00 00 00 */	li r0, 0
/* 80304218 002FFE78  7C 1D 00 40 */	cmplw r29, r0
/* 8030421C 002FFE7C  41 82 00 10 */	beq lbl_8030422C
/* 80304220 002FFE80  38 7F 00 60 */	addi r3, r31, 0x60
/* 80304224 002FFE84  80 03 00 04 */	lwz r0, 4(r3)
/* 80304228 002FFE88  90 1D 00 00 */	stw r0, 0(r29)
lbl_8030422C:
/* 8030422C 002FFE8C  80 81 00 08 */	lwz r4, 8(r1)
/* 80304230 002FFE90  7F 63 DB 78 */	mr r3, r27
/* 80304234 002FFE94  48 00 04 C1 */	bl NWC24iCloseResourceManager
/* 80304238 002FFE98  2C 03 00 00 */	cmpwi r3, 0
/* 8030423C 002FFE9C  40 80 00 08 */	bge lbl_80304244
/* 80304240 002FFEA0  7C 7E 1B 78 */	mr r30, r3
lbl_80304244:
/* 80304244 002FFEA4  38 7F 00 00 */	addi r3, r31, 0
/* 80304248 002FFEA8  4B F6 B7 DD */	bl OSUnlockMutex
/* 8030424C 002FFEAC  7F C3 F3 78 */	mr r3, r30
lbl_80304250:
/* 80304250 002FFEB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80304254 002FFEB4  4B EC 2F 21 */	bl _restgpr_27
/* 80304258 002FFEB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030425C 002FFEBC  7C 08 03 A6 */	mtlr r0
/* 80304260 002FFEC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80304264 002FFEC4  4E 80 00 20 */	blr