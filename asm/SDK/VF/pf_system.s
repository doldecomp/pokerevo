.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFiPFSYS_initializeSYS
VFiPFSYS_initializeSYS:
/* 8031A428 00316088  4E 80 00 20 */	blr

.global VFiPFSYS_GetCurrentContextID
VFiPFSYS_GetCurrentContextID:
/* 8031A42C 0031608C  38 00 00 00 */	li r0, 0
/* 8031A430 00316090  90 03 00 00 */	stw r0, 0(r3)
/* 8031A434 00316094  38 60 00 00 */	li r3, 0
/* 8031A438 00316098  4E 80 00 20 */	blr

.global VFiPFSYS_TimeStamp
VFiPFSYS_TimeStamp:
/* 8031A43C 0031609C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031A440 003160A0  7C 08 02 A6 */	mflr r0
/* 8031A444 003160A4  38 A0 00 04 */	li r5, 4
/* 8031A448 003160A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031A44C 003160AC  38 00 07 D0 */	li r0, 0x7d0
/* 8031A450 003160B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031A454 003160B4  3B E0 00 01 */	li r31, 1
/* 8031A458 003160B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8031A45C 003160BC  7C 9E 23 78 */	mr r30, r4
/* 8031A460 003160C0  B0 03 00 00 */	sth r0, 0(r3)
/* 8031A464 003160C4  38 00 00 00 */	li r0, 0
/* 8031A468 003160C8  B0 A3 00 02 */	sth r5, 2(r3)
/* 8031A46C 003160CC  B3 E3 00 04 */	sth r31, 4(r3)
/* 8031A470 003160D0  B0 04 00 00 */	sth r0, 0(r4)
/* 8031A474 003160D4  B0 04 00 02 */	sth r0, 2(r4)
/* 8031A478 003160D8  B0 04 00 04 */	sth r0, 4(r4)
/* 8031A47C 003160DC  B3 E4 00 06 */	sth r31, 6(r4)
/* 8031A480 003160E0  48 00 16 D1 */	bl dTM_GetNowTime
/* 8031A484 003160E4  B3 FE 00 06 */	sth r31, 6(r30)
/* 8031A488 003160E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031A48C 003160EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031A490 003160F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031A494 003160F4  7C 08 03 A6 */	mtlr r0
/* 8031A498 003160F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031A49C 003160FC  4E 80 00 20 */	blr
