.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global DWCi_Np_GetConsoleId
DWCi_Np_GetConsoleId:
/* 803318F4 0032D554  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803318F8 0032D558  7C 08 02 A6 */	mflr r0
/* 803318FC 0032D55C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80331900 0032D560  39 61 00 20 */	addi r11, r1, 0x20
/* 80331904 0032D564  4B E9 58 21 */	bl _savegpr_26
/* 80331908 0032D568  80 0D B0 78 */	lwz r0, lbl_80640338-_SDA_BASE_(r13)
/* 8033190C 0032D56C  3F 80 80 45 */	lis r28, lbl_80449BA0@ha
/* 80331910 0032D570  3B 9C 9B A0 */	addi r28, r28, lbl_80449BA0@l
/* 80331914 0032D574  2C 00 00 00 */	cmpwi r0, 0
/* 80331918 0032D578  40 82 01 14 */	bne lbl_80331A2C
/* 8033191C 0032D57C  4B FE 8B 85 */	bl VFIsAvailable
/* 80331920 0032D580  7C 7D 1B 78 */	mr r29, r3
/* 80331924 0032D584  38 60 00 03 */	li r3, 3
/* 80331928 0032D588  38 80 40 00 */	li r4, 0x4000
/* 8033192C 0032D58C  38 A0 00 20 */	li r5, 0x20
/* 80331930 0032D590  4B FE B0 0D */	bl DWC_AllocEx
/* 80331934 0032D594  38 00 00 01 */	li r0, 1
/* 80331938 0032D598  2C 1D 00 01 */	cmpwi r29, 1
/* 8033193C 0032D59C  90 0D B0 78 */	stw r0, lbl_80640338-_SDA_BASE_(r13)
/* 80331940 0032D5A0  7C 7A 1B 78 */	mr r26, r3
/* 80331944 0032D5A4  41 82 00 08 */	beq lbl_8033194C
/* 80331948 0032D5A8  4B FE 8B 6D */	bl VFInit
lbl_8033194C:
/* 8033194C 0032D5AC  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 80331950 0032D5B0  3F E0 80 00 */	lis r31, 0x8000
/* 80331954 0032D5B4  3B C3 4D D3 */	addi r30, r3, 0x10624DD3@l
lbl_80331958:
/* 80331958 0032D5B8  7F 43 D3 78 */	mr r3, r26
/* 8033195C 0032D5BC  4B FD 17 31 */	bl NWC24OpenLib
/* 80331960 0032D5C0  2C 03 FF E6 */	cmpwi r3, -26
/* 80331964 0032D5C4  7C 7B 1B 78 */	mr r27, r3
/* 80331968 0032D5C8  40 82 00 20 */	bne lbl_80331988
/* 8033196C 0032D5CC  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80331970 0032D5D0  38 60 00 00 */	li r3, 0
/* 80331974 0032D5D4  54 00 F0 BE */	srwi r0, r0, 2
/* 80331978 0032D5D8  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 8033197C 0032D5DC  54 04 D1 BE */	srwi r4, r0, 6
/* 80331980 0032D5E0  4B F4 0D 85 */	bl OSSleepTicks
/* 80331984 0032D5E4  4B FF FF D4 */	b lbl_80331958
lbl_80331988:
/* 80331988 0032D5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8033198C 0032D5EC  41 82 00 0C */	beq lbl_80331998
/* 80331990 0032D5F0  2C 03 FF F6 */	cmpwi r3, -10
/* 80331994 0032D5F4  40 82 00 50 */	bne lbl_803319E4
lbl_80331998:
/* 80331998 0032D5F8  38 6D B0 80 */	addi r3, r13, lbl_80640340-_SDA_BASE_
/* 8033199C 0032D5FC  4B FD 11 BD */	bl NWC24GetMyUserId
/* 803319A0 0032D600  2C 03 00 00 */	cmpwi r3, 0
/* 803319A4 0032D604  40 82 00 20 */	bne lbl_803319C4
/* 803319A8 0032D608  80 AD B0 80 */	lwz r5, lbl_80640340-_SDA_BASE_(r13)
/* 803319AC 0032D60C  38 9C 00 00 */	addi r4, r28, 0
/* 803319B0 0032D610  80 CD B0 84 */	lwz r6, lbl_80640344-_SDA_BASE_(r13)
/* 803319B4 0032D614  3C 60 08 00 */	lis r3, 0x800
/* 803319B8 0032D618  4C C6 31 82 */	crclr 6
/* 803319BC 0032D61C  4B FE B1 79 */	bl DWC_Printf
/* 803319C0 0032D620  48 00 00 44 */	b lbl_80331A04
lbl_803319C4:
/* 803319C4 0032D624  38 9C 00 24 */	addi r4, r28, 0x24
/* 803319C8 0032D628  3C 60 08 00 */	lis r3, 0x800
/* 803319CC 0032D62C  4C C6 31 82 */	crclr 6
/* 803319D0 0032D630  4B FE B1 65 */	bl DWC_Printf
/* 803319D4 0032D634  38 00 00 00 */	li r0, 0
/* 803319D8 0032D638  90 0D B0 84 */	stw r0, lbl_80640344-_SDA_BASE_(r13)
/* 803319DC 0032D63C  90 0D B0 80 */	stw r0, lbl_80640340-_SDA_BASE_(r13)
/* 803319E0 0032D640  48 00 00 24 */	b lbl_80331A04
lbl_803319E4:
/* 803319E4 0032D644  7F 65 DB 78 */	mr r5, r27
/* 803319E8 0032D648  38 9C 00 4C */	addi r4, r28, 0x4c
/* 803319EC 0032D64C  3C 60 08 00 */	lis r3, 0x800
/* 803319F0 0032D650  4C C6 31 82 */	crclr 6
/* 803319F4 0032D654  4B FE B1 41 */	bl DWC_Printf
/* 803319F8 0032D658  38 00 00 00 */	li r0, 0
/* 803319FC 0032D65C  90 0D B0 84 */	stw r0, lbl_80640344-_SDA_BASE_(r13)
/* 80331A00 0032D660  90 0D B0 80 */	stw r0, lbl_80640340-_SDA_BASE_(r13)
lbl_80331A04:
/* 80331A04 0032D664  2C 1B 00 00 */	cmpwi r27, 0
/* 80331A08 0032D668  40 82 00 08 */	bne lbl_80331A10
/* 80331A0C 0032D66C  4B FD 18 6D */	bl NWC24CloseLib
lbl_80331A10:
/* 80331A10 0032D670  2C 1D 00 01 */	cmpwi r29, 1
/* 80331A14 0032D674  41 82 00 08 */	beq lbl_80331A1C
/* 80331A18 0032D678  4B FE 8B 4D */	bl VFFinalize
lbl_80331A1C:
/* 80331A1C 0032D67C  7F 44 D3 78 */	mr r4, r26
/* 80331A20 0032D680  38 60 00 03 */	li r3, 3
/* 80331A24 0032D684  38 A0 40 00 */	li r5, 0x4000
/* 80331A28 0032D688  4B FE AF 61 */	bl DWC_Free
lbl_80331A2C:
/* 80331A2C 0032D68C  39 61 00 20 */	addi r11, r1, 0x20
/* 80331A30 0032D690  80 6D B0 80 */	lwz r3, lbl_80640340-_SDA_BASE_(r13)
/* 80331A34 0032D694  80 8D B0 84 */	lwz r4, lbl_80640344-_SDA_BASE_(r13)
/* 80331A38 0032D698  4B E9 57 39 */	bl _restgpr_26
/* 80331A3C 0032D69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80331A40 0032D6A0  7C 08 03 A6 */	mtlr r0
/* 80331A44 0032D6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80331A48 0032D6A8  4E 80 00 20 */	blr
