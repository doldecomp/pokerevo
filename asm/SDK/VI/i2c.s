.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global WaitMicroTime
WaitMicroTime:
/* 80279E6C 00275ACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80279E70 00275AD0  7C 08 02 A6 */	mflr r0
/* 80279E74 00275AD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80279E78 00275AD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80279E7C 00275ADC  4B F4 D2 AD */	bl _savegpr_27
/* 80279E80 00275AE0  7C 7B 1B 78 */	mr r27, r3
/* 80279E84 00275AE4  4B FF 89 55 */	bl __OSGetSystemTime
/* 80279E88 00275AE8  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 80279E8C 00275AEC  7C 9C 23 78 */	mr r28, r4
/* 80279E90 00275AF0  7C 7D 1B 78 */	mr r29, r3
/* 80279E94 00275AF4  3F E0 80 00 */	lis r31, 0x8000
/* 80279E98 00275AF8  3B C5 DE 83 */	addi r30, r5, 0x431BDE83@l
lbl_80279E9C:
/* 80279E9C 00275AFC  4B FF 89 3D */	bl __OSGetSystemTime
/* 80279EA0 00275B00  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80279EA4 00275B04  7C DC 20 10 */	subfc r6, r28, r4
/* 80279EA8 00275B08  7C 7D 19 10 */	subfe r3, r29, r3
/* 80279EAC 00275B0C  38 A0 00 00 */	li r5, 0
/* 80279EB0 00275B10  54 00 F0 BE */	srwi r0, r0, 2
/* 80279EB4 00275B14  54 C4 18 38 */	slwi r4, r6, 3
/* 80279EB8 00275B18  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80279EBC 00275B1C  54 63 18 38 */	slwi r3, r3, 3
/* 80279EC0 00275B20  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 80279EC4 00275B24  54 06 8B FE */	srwi r6, r0, 0xf
/* 80279EC8 00275B28  4B F4 D3 B1 */	bl __div2i
/* 80279ECC 00275B2C  7F 65 FE 70 */	srawi r5, r27, 0x1f
/* 80279ED0 00275B30  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80279ED4 00275B34  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80279ED8 00275B38  7C 7B 20 10 */	subfc r3, r27, r4
/* 80279EDC 00275B3C  7C A5 01 10 */	subfe r5, r5, r0
/* 80279EE0 00275B40  7C A0 01 10 */	subfe r5, r0, r0
/* 80279EE4 00275B44  7C A5 00 D1 */	neg. r5, r5
/* 80279EE8 00275B48  40 82 FF B4 */	bne lbl_80279E9C
/* 80279EEC 00275B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80279EF0 00275B50  4B F4 D2 85 */	bl _restgpr_27
/* 80279EF4 00275B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80279EF8 00275B58  7C 08 03 A6 */	mtlr r0
/* 80279EFC 00275B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80279F00 00275B60  4E 80 00 20 */	blr

.global sendSlaveAddr
sendSlaveAddr:
/* 80279F04 00275B64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80279F08 00275B68  7C 08 02 A6 */	mflr r0
/* 80279F0C 00275B6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80279F10 00275B70  39 61 00 30 */	addi r11, r1, 0x30
/* 80279F14 00275B74  4B F4 D2 05 */	bl _savegpr_23
/* 80279F18 00275B78  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 80279F1C 00275B7C  7C 7D 1B 78 */	mr r29, r3
/* 80279F20 00275B80  2C 00 00 00 */	cmpwi r0, 0
/* 80279F24 00275B84  40 82 00 1C */	bne lbl_80279F40
/* 80279F28 00275B88  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 80279F2C 00275B8C  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 80279F30 00275B90  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 80279F34 00275B94  60 00 80 00 */	ori r0, r0, 0x8000
/* 80279F38 00275B98  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80279F3C 00275B9C  48 00 00 14 */	b lbl_80279F50
lbl_80279F40:
/* 80279F40 00275BA0  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 80279F44 00275BA4  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 80279F48 00275BA8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 80279F4C 00275BAC  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_80279F50:
/* 80279F50 00275BB0  4B FF 88 89 */	bl __OSGetSystemTime
/* 80279F54 00275BB4  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 80279F58 00275BB8  7C 9C 23 78 */	mr r28, r4
/* 80279F5C 00275BBC  7C 7B 1B 78 */	mr r27, r3
/* 80279F60 00275BC0  3F 20 80 00 */	lis r25, 0x8000
/* 80279F64 00275BC4  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 80279F68 00275BC8  3B 00 00 02 */	li r24, 2
/* 80279F6C 00275BCC  3A E0 00 00 */	li r23, 0
lbl_80279F70:
/* 80279F70 00275BD0  4B FF 88 69 */	bl __OSGetSystemTime
/* 80279F74 00275BD4  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 80279F78 00275BD8  7C DC 20 10 */	subfc r6, r28, r4
/* 80279F7C 00275BDC  7C 7B 19 10 */	subfe r3, r27, r3
/* 80279F80 00275BE0  38 A0 00 00 */	li r5, 0
/* 80279F84 00275BE4  54 00 F0 BE */	srwi r0, r0, 2
/* 80279F88 00275BE8  54 C4 18 38 */	slwi r4, r6, 3
/* 80279F8C 00275BEC  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 80279F90 00275BF0  54 63 18 38 */	slwi r3, r3, 3
/* 80279F94 00275BF4  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 80279F98 00275BF8  54 06 8B FE */	srwi r6, r0, 0xf
/* 80279F9C 00275BFC  4B F4 D2 DD */	bl __div2i
/* 80279FA0 00275C00  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80279FA4 00275C04  6E E5 80 00 */	xoris r5, r23, 0x8000
/* 80279FA8 00275C08  7C 78 20 10 */	subfc r3, r24, r4
/* 80279FAC 00275C0C  7C A5 01 10 */	subfe r5, r5, r0
/* 80279FB0 00275C10  7C A0 01 10 */	subfe r5, r0, r0
/* 80279FB4 00275C14  7C A5 00 D1 */	neg. r5, r5
/* 80279FB8 00275C18  40 82 FF B8 */	bne lbl_80279F70
/* 80279FBC 00275C1C  3F E0 CD 80 */	lis r31, 0xCD8000C0@ha
/* 80279FC0 00275C20  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 80279FC4 00275C24  80 1F 00 C0 */	lwz r0, 0xCD8000C0@l(r31)
/* 80279FC8 00275C28  3B 23 DE 83 */	addi r25, r3, 0x431BDE83@l
/* 80279FCC 00275C2C  3B C0 00 00 */	li r30, 0
/* 80279FD0 00275C30  3F 80 80 00 */	lis r28, 0x8000
/* 80279FD4 00275C34  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80279FD8 00275C38  3B 60 00 02 */	li r27, 2
/* 80279FDC 00275C3C  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 80279FE0 00275C40  3B 40 00 00 */	li r26, 0
lbl_80279FE4:
/* 80279FE4 00275C44  57 A0 06 31 */	rlwinm. r0, r29, 0, 0x18, 0x18
/* 80279FE8 00275C48  41 82 00 34 */	beq lbl_8027A01C
/* 80279FEC 00275C4C  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 80279FF0 00275C50  2C 00 00 00 */	cmpwi r0, 0
/* 80279FF4 00275C54  40 82 00 14 */	bne lbl_8027A008
/* 80279FF8 00275C58  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80279FFC 00275C5C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A000 00275C60  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8027A004 00275C64  48 00 00 44 */	b lbl_8027A048
lbl_8027A008:
/* 8027A008 00275C68  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8027A00C 00275C6C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A010 00275C70  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A014 00275C74  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8027A018 00275C78  48 00 00 30 */	b lbl_8027A048
lbl_8027A01C:
/* 8027A01C 00275C7C  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A020 00275C80  2C 00 00 00 */	cmpwi r0, 0
/* 8027A024 00275C84  40 82 00 18 */	bne lbl_8027A03C
/* 8027A028 00275C88  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8027A02C 00275C8C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A030 00275C90  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A034 00275C94  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8027A038 00275C98  48 00 00 10 */	b lbl_8027A048
lbl_8027A03C:
/* 8027A03C 00275C9C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8027A040 00275CA0  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A044 00275CA4  90 1F 00 C0 */	stw r0, 0xc0(r31)
lbl_8027A048:
/* 8027A048 00275CA8  4B FF 87 91 */	bl __OSGetSystemTime
/* 8027A04C 00275CAC  7C 98 23 78 */	mr r24, r4
/* 8027A050 00275CB0  7C 77 1B 78 */	mr r23, r3
lbl_8027A054:
/* 8027A054 00275CB4  4B FF 87 85 */	bl __OSGetSystemTime
/* 8027A058 00275CB8  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 8027A05C 00275CBC  7C D8 20 10 */	subfc r6, r24, r4
/* 8027A060 00275CC0  7C 77 19 10 */	subfe r3, r23, r3
/* 8027A064 00275CC4  38 A0 00 00 */	li r5, 0
/* 8027A068 00275CC8  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A06C 00275CCC  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A070 00275CD0  7C 19 00 16 */	mulhwu r0, r25, r0
/* 8027A074 00275CD4  54 63 18 38 */	slwi r3, r3, 3
/* 8027A078 00275CD8  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A07C 00275CDC  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A080 00275CE0  4B F4 D1 F9 */	bl __div2i
/* 8027A084 00275CE4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A088 00275CE8  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 8027A08C 00275CEC  7C 7B 20 10 */	subfc r3, r27, r4
/* 8027A090 00275CF0  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A094 00275CF4  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A098 00275CF8  7C A5 00 D1 */	neg. r5, r5
/* 8027A09C 00275CFC  40 82 FF B8 */	bne lbl_8027A054
/* 8027A0A0 00275D00  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8027A0A4 00275D04  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A0A8 00275D08  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A0AC 00275D0C  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8027A0B0 00275D10  4B FF 87 29 */	bl __OSGetSystemTime
/* 8027A0B4 00275D14  7C 97 23 78 */	mr r23, r4
/* 8027A0B8 00275D18  7C 78 1B 78 */	mr r24, r3
lbl_8027A0BC:
/* 8027A0BC 00275D1C  4B FF 87 1D */	bl __OSGetSystemTime
/* 8027A0C0 00275D20  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 8027A0C4 00275D24  7C D7 20 10 */	subfc r6, r23, r4
/* 8027A0C8 00275D28  7C 78 19 10 */	subfe r3, r24, r3
/* 8027A0CC 00275D2C  38 A0 00 00 */	li r5, 0
/* 8027A0D0 00275D30  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A0D4 00275D34  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A0D8 00275D38  7C 19 00 16 */	mulhwu r0, r25, r0
/* 8027A0DC 00275D3C  54 63 18 38 */	slwi r3, r3, 3
/* 8027A0E0 00275D40  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A0E4 00275D44  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A0E8 00275D48  4B F4 D1 91 */	bl __div2i
/* 8027A0EC 00275D4C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A0F0 00275D50  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 8027A0F4 00275D54  7C 7B 20 10 */	subfc r3, r27, r4
/* 8027A0F8 00275D58  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A0FC 00275D5C  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A100 00275D60  7C A5 00 D1 */	neg. r5, r5
/* 8027A104 00275D64  40 82 FF B8 */	bne lbl_8027A0BC
/* 8027A108 00275D68  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8027A10C 00275D6C  3B DE 00 01 */	addi r30, r30, 1
/* 8027A110 00275D70  2C 1E 00 08 */	cmpwi r30, 8
/* 8027A114 00275D74  57 BD 0E 3C */	rlwinm r29, r29, 1, 0x18, 0x1e
/* 8027A118 00275D78  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A11C 00275D7C  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8027A120 00275D80  41 80 FE C4 */	blt lbl_80279FE4
/* 8027A124 00275D84  3C 60 CD 80 */	lis r3, 0xCD8000C4@ha
/* 8027A128 00275D88  80 03 00 C4 */	lwz r0, 0xCD8000C4@l(r3)
/* 8027A12C 00275D8C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A130 00275D90  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A134 00275D94  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027A138 00275D98  4B FF 86 A1 */	bl __OSGetSystemTime
/* 8027A13C 00275D9C  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 8027A140 00275DA0  7C 9F 23 78 */	mr r31, r4
/* 8027A144 00275DA4  7C 7E 1B 78 */	mr r30, r3
/* 8027A148 00275DA8  3F 80 80 00 */	lis r28, 0x8000
/* 8027A14C 00275DAC  3B A5 DE 83 */	addi r29, r5, 0x431BDE83@l
/* 8027A150 00275DB0  3B 60 00 02 */	li r27, 2
/* 8027A154 00275DB4  3B 40 00 00 */	li r26, 0
lbl_8027A158:
/* 8027A158 00275DB8  4B FF 86 81 */	bl __OSGetSystemTime
/* 8027A15C 00275DBC  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 8027A160 00275DC0  7C DF 20 10 */	subfc r6, r31, r4
/* 8027A164 00275DC4  7C 7E 19 10 */	subfe r3, r30, r3
/* 8027A168 00275DC8  38 A0 00 00 */	li r5, 0
/* 8027A16C 00275DCC  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A170 00275DD0  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A174 00275DD4  7C 1D 00 16 */	mulhwu r0, r29, r0
/* 8027A178 00275DD8  54 63 18 38 */	slwi r3, r3, 3
/* 8027A17C 00275DDC  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A180 00275DE0  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A184 00275DE4  4B F4 D0 F5 */	bl __div2i
/* 8027A188 00275DE8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A18C 00275DEC  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 8027A190 00275DF0  7C 7B 20 10 */	subfc r3, r27, r4
/* 8027A194 00275DF4  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A198 00275DF8  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A19C 00275DFC  7C A5 00 D1 */	neg. r5, r5
/* 8027A1A0 00275E00  40 82 FF B8 */	bne lbl_8027A158
/* 8027A1A4 00275E04  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 8027A1A8 00275E08  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 8027A1AC 00275E0C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A1B0 00275E10  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A1B4 00275E14  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8027A1B8 00275E18  4B FF 86 21 */	bl __OSGetSystemTime
/* 8027A1BC 00275E1C  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 8027A1C0 00275E20  7C 9A 23 78 */	mr r26, r4
/* 8027A1C4 00275E24  7C 7B 1B 78 */	mr r27, r3
/* 8027A1C8 00275E28  3F E0 80 00 */	lis r31, 0x8000
/* 8027A1CC 00275E2C  3B 85 DE 83 */	addi r28, r5, 0x431BDE83@l
/* 8027A1D0 00275E30  3B C0 00 02 */	li r30, 2
/* 8027A1D4 00275E34  3B A0 00 00 */	li r29, 0
lbl_8027A1D8:
/* 8027A1D8 00275E38  4B FF 86 01 */	bl __OSGetSystemTime
/* 8027A1DC 00275E3C  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8027A1E0 00275E40  7C DA 20 10 */	subfc r6, r26, r4
/* 8027A1E4 00275E44  7C 7B 19 10 */	subfe r3, r27, r3
/* 8027A1E8 00275E48  38 A0 00 00 */	li r5, 0
/* 8027A1EC 00275E4C  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A1F0 00275E50  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A1F4 00275E54  7C 1C 00 16 */	mulhwu r0, r28, r0
/* 8027A1F8 00275E58  54 63 18 38 */	slwi r3, r3, 3
/* 8027A1FC 00275E5C  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A200 00275E60  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A204 00275E64  4B F4 D0 75 */	bl __div2i
/* 8027A208 00275E68  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A20C 00275E6C  6F A5 80 00 */	xoris r5, r29, 0x8000
/* 8027A210 00275E70  7C 7E 20 10 */	subfc r3, r30, r4
/* 8027A214 00275E74  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A218 00275E78  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A21C 00275E7C  7C A5 00 D1 */	neg. r5, r5
/* 8027A220 00275E80  40 82 FF B8 */	bne lbl_8027A1D8
/* 8027A224 00275E84  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A228 00275E88  28 00 00 01 */	cmplwi r0, 1
/* 8027A22C 00275E8C  40 82 00 1C */	bne lbl_8027A248
/* 8027A230 00275E90  3C 60 CD 80 */	lis r3, 0xCD8000C8@ha
/* 8027A234 00275E94  80 03 00 C8 */	lwz r0, 0xCD8000C8@l(r3)
/* 8027A238 00275E98  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 8027A23C 00275E9C  41 82 00 0C */	beq lbl_8027A248
/* 8027A240 00275EA0  38 60 00 00 */	li r3, 0
/* 8027A244 00275EA4  48 00 00 5C */	b lbl_8027A2A0
lbl_8027A248:
/* 8027A248 00275EA8  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A24C 00275EAC  2C 00 00 00 */	cmpwi r0, 0
/* 8027A250 00275EB0  40 82 00 1C */	bne lbl_8027A26C
/* 8027A254 00275EB4  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 8027A258 00275EB8  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 8027A25C 00275EBC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A260 00275EC0  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A264 00275EC4  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8027A268 00275EC8  48 00 00 14 */	b lbl_8027A27C
lbl_8027A26C:
/* 8027A26C 00275ECC  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 8027A270 00275ED0  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 8027A274 00275ED4  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A278 00275ED8  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_8027A27C:
/* 8027A27C 00275EDC  3C 80 CD 80 */	lis r4, 0xCD8000C4@ha
/* 8027A280 00275EE0  38 60 00 01 */	li r3, 1
/* 8027A284 00275EE4  80 04 00 C4 */	lwz r0, 0xCD8000C4@l(r4)
/* 8027A288 00275EE8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A28C 00275EEC  60 00 C0 00 */	ori r0, r0, 0xc000
/* 8027A290 00275EF0  90 04 00 C4 */	stw r0, 0xc4(r4)
/* 8027A294 00275EF4  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 8027A298 00275EF8  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A29C 00275EFC  90 04 00 C0 */	stw r0, 0xc0(r4)
lbl_8027A2A0:
/* 8027A2A0 00275F00  39 61 00 30 */	addi r11, r1, 0x30
/* 8027A2A4 00275F04  4B F4 CE C1 */	bl _restgpr_23
/* 8027A2A8 00275F08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027A2AC 00275F0C  7C 08 03 A6 */	mtlr r0
/* 8027A2B0 00275F10  38 21 00 30 */	addi r1, r1, 0x30
/* 8027A2B4 00275F14  4E 80 00 20 */	blr

.global __VISendI2CData
__VISendI2CData:
/* 8027A2B8 00275F18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027A2BC 00275F1C  7C 08 02 A6 */	mflr r0
/* 8027A2C0 00275F20  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027A2C4 00275F24  39 61 00 40 */	addi r11, r1, 0x40
/* 8027A2C8 00275F28  4B F4 CE 45 */	bl _savegpr_20
/* 8027A2CC 00275F2C  80 0D A9 70 */	lwz r0, lbl_8063FC30-_SDA_BASE_(r13)
/* 8027A2D0 00275F30  7C 74 1B 78 */	mr r20, r3
/* 8027A2D4 00275F34  7C 9D 23 78 */	mr r29, r4
/* 8027A2D8 00275F38  7C BE 2B 78 */	mr r30, r5
/* 8027A2DC 00275F3C  2C 00 00 00 */	cmpwi r0, 0
/* 8027A2E0 00275F40  40 82 00 10 */	bne lbl_8027A2F0
/* 8027A2E4 00275F44  38 00 00 01 */	li r0, 1
/* 8027A2E8 00275F48  90 0D 88 28 */	stw r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A2EC 00275F4C  90 0D A9 70 */	stw r0, lbl_8063FC30-_SDA_BASE_(r13)
lbl_8027A2F0:
/* 8027A2F0 00275F50  4B FF 44 6D */	bl OSDisableInterrupts
/* 8027A2F4 00275F54  3C 80 CD 80 */	lis r4, 0xCD8000C4@ha
/* 8027A2F8 00275F58  7C 7F 1B 78 */	mr r31, r3
/* 8027A2FC 00275F5C  80 04 00 C4 */	lwz r0, 0xCD8000C4@l(r4)
/* 8027A300 00275F60  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A304 00275F64  60 00 C0 00 */	ori r0, r0, 0xc000
/* 8027A308 00275F68  90 04 00 C4 */	stw r0, 0xc4(r4)
/* 8027A30C 00275F6C  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 8027A310 00275F70  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A314 00275F74  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A318 00275F78  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 8027A31C 00275F7C  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A320 00275F80  2C 00 00 00 */	cmpwi r0, 0
/* 8027A324 00275F84  40 82 00 14 */	bne lbl_8027A338
/* 8027A328 00275F88  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 8027A32C 00275F8C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A330 00275F90  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 8027A334 00275F94  48 00 00 14 */	b lbl_8027A348
lbl_8027A338:
/* 8027A338 00275F98  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 8027A33C 00275F9C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A340 00275FA0  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A344 00275FA4  90 04 00 C0 */	stw r0, 0xc0(r4)
lbl_8027A348:
/* 8027A348 00275FA8  4B FF 84 91 */	bl __OSGetSystemTime
/* 8027A34C 00275FAC  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 8027A350 00275FB0  7C 97 23 78 */	mr r23, r4
/* 8027A354 00275FB4  7C 76 1B 78 */	mr r22, r3
/* 8027A358 00275FB8  3F 20 80 00 */	lis r25, 0x8000
/* 8027A35C 00275FBC  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 8027A360 00275FC0  3B 00 00 02 */	li r24, 2
/* 8027A364 00275FC4  3A A0 00 00 */	li r21, 0
lbl_8027A368:
/* 8027A368 00275FC8  4B FF 84 71 */	bl __OSGetSystemTime
/* 8027A36C 00275FCC  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 8027A370 00275FD0  7C D7 20 10 */	subfc r6, r23, r4
/* 8027A374 00275FD4  7C 76 19 10 */	subfe r3, r22, r3
/* 8027A378 00275FD8  38 A0 00 00 */	li r5, 0
/* 8027A37C 00275FDC  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A380 00275FE0  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A384 00275FE4  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 8027A388 00275FE8  54 63 18 38 */	slwi r3, r3, 3
/* 8027A38C 00275FEC  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A390 00275FF0  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A394 00275FF4  4B F4 CE E5 */	bl __div2i
/* 8027A398 00275FF8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A39C 00275FFC  6E A5 80 00 */	xoris r5, r21, 0x8000
/* 8027A3A0 00276000  7C 78 20 10 */	subfc r3, r24, r4
/* 8027A3A4 00276004  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A3A8 00276008  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A3AC 0027600C  7C A5 00 D1 */	neg. r5, r5
/* 8027A3B0 00276010  40 82 FF B8 */	bne lbl_8027A368
/* 8027A3B4 00276014  4B FF 84 25 */	bl __OSGetSystemTime
/* 8027A3B8 00276018  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 8027A3BC 0027601C  7C 97 23 78 */	mr r23, r4
/* 8027A3C0 00276020  7C 76 1B 78 */	mr r22, r3
/* 8027A3C4 00276024  3F 20 80 00 */	lis r25, 0x8000
/* 8027A3C8 00276028  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 8027A3CC 0027602C  3B 00 00 02 */	li r24, 2
/* 8027A3D0 00276030  3A A0 00 00 */	li r21, 0
lbl_8027A3D4:
/* 8027A3D4 00276034  4B FF 84 05 */	bl __OSGetSystemTime
/* 8027A3D8 00276038  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 8027A3DC 0027603C  7C D7 20 10 */	subfc r6, r23, r4
/* 8027A3E0 00276040  7C 76 19 10 */	subfe r3, r22, r3
/* 8027A3E4 00276044  38 A0 00 00 */	li r5, 0
/* 8027A3E8 00276048  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A3EC 0027604C  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A3F0 00276050  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 8027A3F4 00276054  54 63 18 38 */	slwi r3, r3, 3
/* 8027A3F8 00276058  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A3FC 0027605C  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A400 00276060  4B F4 CE 79 */	bl __div2i
/* 8027A404 00276064  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A408 00276068  6E A5 80 00 */	xoris r5, r21, 0x8000
/* 8027A40C 0027606C  7C 78 20 10 */	subfc r3, r24, r4
/* 8027A410 00276070  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A414 00276074  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A418 00276078  7C A5 00 D1 */	neg. r5, r5
/* 8027A41C 0027607C  40 82 FF B8 */	bne lbl_8027A3D4
/* 8027A420 00276080  7E 83 A3 78 */	mr r3, r20
/* 8027A424 00276084  4B FF FA E1 */	bl sendSlaveAddr
/* 8027A428 00276088  2C 03 00 00 */	cmpwi r3, 0
/* 8027A42C 0027608C  40 82 00 14 */	bne lbl_8027A440
/* 8027A430 00276090  7F E3 FB 78 */	mr r3, r31
/* 8027A434 00276094  4B FF 43 51 */	bl OSRestoreInterrupts
/* 8027A438 00276098  38 60 00 00 */	li r3, 0
/* 8027A43C 0027609C  48 00 04 34 */	b lbl_8027A870
lbl_8027A440:
/* 8027A440 002760A0  3E C0 CD 80 */	lis r22, 0xCD8000C4@ha
/* 8027A444 002760A4  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 8027A448 002760A8  80 16 00 C4 */	lwz r0, 0xCD8000C4@l(r22)
/* 8027A44C 002760AC  3B 23 DE 83 */	addi r25, r3, 0x431BDE83@l
/* 8027A450 002760B0  3F 40 80 00 */	lis r26, 0x8000
/* 8027A454 002760B4  3B 60 00 02 */	li r27, 2
/* 8027A458 002760B8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A45C 002760BC  3B 80 00 00 */	li r28, 0
/* 8027A460 002760C0  60 00 C0 00 */	ori r0, r0, 0xc000
/* 8027A464 002760C4  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 8027A468 002760C8  48 00 02 94 */	b lbl_8027A6FC
lbl_8027A46C:
/* 8027A46C 002760CC  8A 9D 00 00 */	lbz r20, 0(r29)
/* 8027A470 002760D0  3A A0 00 00 */	li r21, 0
/* 8027A474 002760D4  3B BD 00 01 */	addi r29, r29, 1
lbl_8027A478:
/* 8027A478 002760D8  56 80 06 31 */	rlwinm. r0, r20, 0, 0x18, 0x18
/* 8027A47C 002760DC  41 82 00 34 */	beq lbl_8027A4B0
/* 8027A480 002760E0  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A484 002760E4  2C 00 00 00 */	cmpwi r0, 0
/* 8027A488 002760E8  40 82 00 14 */	bne lbl_8027A49C
/* 8027A48C 002760EC  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A490 002760F0  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A494 002760F4  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 8027A498 002760F8  48 00 00 44 */	b lbl_8027A4DC
lbl_8027A49C:
/* 8027A49C 002760FC  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A4A0 00276100  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A4A4 00276104  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A4A8 00276108  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 8027A4AC 0027610C  48 00 00 30 */	b lbl_8027A4DC
lbl_8027A4B0:
/* 8027A4B0 00276110  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A4B4 00276114  2C 00 00 00 */	cmpwi r0, 0
/* 8027A4B8 00276118  40 82 00 18 */	bne lbl_8027A4D0
/* 8027A4BC 0027611C  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A4C0 00276120  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A4C4 00276124  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A4C8 00276128  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 8027A4CC 0027612C  48 00 00 10 */	b lbl_8027A4DC
lbl_8027A4D0:
/* 8027A4D0 00276130  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A4D4 00276134  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A4D8 00276138  90 16 00 C0 */	stw r0, 0xc0(r22)
lbl_8027A4DC:
/* 8027A4DC 0027613C  4B FF 82 FD */	bl __OSGetSystemTime
/* 8027A4E0 00276140  7C 98 23 78 */	mr r24, r4
/* 8027A4E4 00276144  7C 77 1B 78 */	mr r23, r3
lbl_8027A4E8:
/* 8027A4E8 00276148  4B FF 82 F1 */	bl __OSGetSystemTime
/* 8027A4EC 0027614C  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8027A4F0 00276150  7C D8 20 10 */	subfc r6, r24, r4
/* 8027A4F4 00276154  7C 77 19 10 */	subfe r3, r23, r3
/* 8027A4F8 00276158  38 A0 00 00 */	li r5, 0
/* 8027A4FC 0027615C  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A500 00276160  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A504 00276164  7C 19 00 16 */	mulhwu r0, r25, r0
/* 8027A508 00276168  54 63 18 38 */	slwi r3, r3, 3
/* 8027A50C 0027616C  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A510 00276170  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A514 00276174  4B F4 CD 65 */	bl __div2i
/* 8027A518 00276178  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A51C 0027617C  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 8027A520 00276180  7C 7B 20 10 */	subfc r3, r27, r4
/* 8027A524 00276184  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A528 00276188  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A52C 0027618C  7C A5 00 D1 */	neg. r5, r5
/* 8027A530 00276190  40 82 FF B8 */	bne lbl_8027A4E8
/* 8027A534 00276194  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A538 00276198  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A53C 0027619C  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A540 002761A0  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 8027A544 002761A4  4B FF 82 95 */	bl __OSGetSystemTime
/* 8027A548 002761A8  7C 98 23 78 */	mr r24, r4
/* 8027A54C 002761AC  7C 77 1B 78 */	mr r23, r3
lbl_8027A550:
/* 8027A550 002761B0  4B FF 82 89 */	bl __OSGetSystemTime
/* 8027A554 002761B4  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8027A558 002761B8  7C D8 20 10 */	subfc r6, r24, r4
/* 8027A55C 002761BC  7C 77 19 10 */	subfe r3, r23, r3
/* 8027A560 002761C0  38 A0 00 00 */	li r5, 0
/* 8027A564 002761C4  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A568 002761C8  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A56C 002761CC  7C 19 00 16 */	mulhwu r0, r25, r0
/* 8027A570 002761D0  54 63 18 38 */	slwi r3, r3, 3
/* 8027A574 002761D4  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A578 002761D8  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A57C 002761DC  4B F4 CC FD */	bl __div2i
/* 8027A580 002761E0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A584 002761E4  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 8027A588 002761E8  7C 7B 20 10 */	subfc r3, r27, r4
/* 8027A58C 002761EC  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A590 002761F0  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A594 002761F4  7C A5 00 D1 */	neg. r5, r5
/* 8027A598 002761F8  40 82 FF B8 */	bne lbl_8027A550
/* 8027A59C 002761FC  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A5A0 00276200  3A B5 00 01 */	addi r21, r21, 1
/* 8027A5A4 00276204  2C 15 00 08 */	cmpwi r21, 8
/* 8027A5A8 00276208  56 94 0E 3C */	rlwinm r20, r20, 1, 0x18, 0x1e
/* 8027A5AC 0027620C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A5B0 00276210  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 8027A5B4 00276214  41 80 FE C4 */	blt lbl_8027A478
/* 8027A5B8 00276218  80 16 00 C4 */	lwz r0, 0xc4(r22)
/* 8027A5BC 0027621C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A5C0 00276220  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A5C4 00276224  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 8027A5C8 00276228  4B FF 82 11 */	bl __OSGetSystemTime
/* 8027A5CC 0027622C  7C 98 23 78 */	mr r24, r4
/* 8027A5D0 00276230  7C 77 1B 78 */	mr r23, r3
lbl_8027A5D4:
/* 8027A5D4 00276234  4B FF 82 05 */	bl __OSGetSystemTime
/* 8027A5D8 00276238  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8027A5DC 0027623C  7C D8 20 10 */	subfc r6, r24, r4
/* 8027A5E0 00276240  7C 77 19 10 */	subfe r3, r23, r3
/* 8027A5E4 00276244  38 A0 00 00 */	li r5, 0
/* 8027A5E8 00276248  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A5EC 0027624C  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A5F0 00276250  7C 19 00 16 */	mulhwu r0, r25, r0
/* 8027A5F4 00276254  54 63 18 38 */	slwi r3, r3, 3
/* 8027A5F8 00276258  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A5FC 0027625C  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A600 00276260  4B F4 CC 79 */	bl __div2i
/* 8027A604 00276264  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A608 00276268  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 8027A60C 0027626C  7C 7B 20 10 */	subfc r3, r27, r4
/* 8027A610 00276270  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A614 00276274  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A618 00276278  7C A5 00 D1 */	neg. r5, r5
/* 8027A61C 0027627C  40 82 FF B8 */	bne lbl_8027A5D4
/* 8027A620 00276280  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A624 00276284  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A628 00276288  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A62C 0027628C  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 8027A630 00276290  4B FF 81 A9 */	bl __OSGetSystemTime
/* 8027A634 00276294  7C 97 23 78 */	mr r23, r4
/* 8027A638 00276298  7C 78 1B 78 */	mr r24, r3
lbl_8027A63C:
/* 8027A63C 0027629C  4B FF 81 9D */	bl __OSGetSystemTime
/* 8027A640 002762A0  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8027A644 002762A4  7C D7 20 10 */	subfc r6, r23, r4
/* 8027A648 002762A8  7C 78 19 10 */	subfe r3, r24, r3
/* 8027A64C 002762AC  38 A0 00 00 */	li r5, 0
/* 8027A650 002762B0  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A654 002762B4  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A658 002762B8  7C 19 00 16 */	mulhwu r0, r25, r0
/* 8027A65C 002762BC  54 63 18 38 */	slwi r3, r3, 3
/* 8027A660 002762C0  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A664 002762C4  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A668 002762C8  4B F4 CC 11 */	bl __div2i
/* 8027A66C 002762CC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A670 002762D0  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 8027A674 002762D4  7C 7B 20 10 */	subfc r3, r27, r4
/* 8027A678 002762D8  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A67C 002762DC  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A680 002762E0  7C A5 00 D1 */	neg. r5, r5
/* 8027A684 002762E4  40 82 FF B8 */	bne lbl_8027A63C
/* 8027A688 002762E8  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A68C 002762EC  28 00 00 01 */	cmplwi r0, 1
/* 8027A690 002762F0  40 82 00 20 */	bne lbl_8027A6B0
/* 8027A694 002762F4  80 16 00 C8 */	lwz r0, 0xc8(r22)
/* 8027A698 002762F8  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 8027A69C 002762FC  41 82 00 14 */	beq lbl_8027A6B0
/* 8027A6A0 00276300  7F E3 FB 78 */	mr r3, r31
/* 8027A6A4 00276304  4B FF 40 E1 */	bl OSRestoreInterrupts
/* 8027A6A8 00276308  38 60 00 00 */	li r3, 0
/* 8027A6AC 0027630C  48 00 01 C4 */	b lbl_8027A870
lbl_8027A6B0:
/* 8027A6B0 00276310  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A6B4 00276314  2C 00 00 00 */	cmpwi r0, 0
/* 8027A6B8 00276318  40 82 00 18 */	bne lbl_8027A6D0
/* 8027A6BC 0027631C  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A6C0 00276320  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A6C4 00276324  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A6C8 00276328  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 8027A6CC 0027632C  48 00 00 10 */	b lbl_8027A6DC
lbl_8027A6D0:
/* 8027A6D0 00276330  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A6D4 00276334  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A6D8 00276338  90 16 00 C0 */	stw r0, 0xc0(r22)
lbl_8027A6DC:
/* 8027A6DC 0027633C  80 16 00 C4 */	lwz r0, 0xc4(r22)
/* 8027A6E0 00276340  3B DE FF FF */	addi r30, r30, -1
/* 8027A6E4 00276344  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A6E8 00276348  60 00 C0 00 */	ori r0, r0, 0xc000
/* 8027A6EC 0027634C  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 8027A6F0 00276350  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 8027A6F4 00276354  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A6F8 00276358  90 16 00 C0 */	stw r0, 0xc0(r22)
lbl_8027A6FC:
/* 8027A6FC 0027635C  2C 1E 00 00 */	cmpwi r30, 0
/* 8027A700 00276360  40 82 FD 6C */	bne lbl_8027A46C
/* 8027A704 00276364  3C 60 CD 80 */	lis r3, 0xCD8000C4@ha
/* 8027A708 00276368  80 03 00 C4 */	lwz r0, 0xCD8000C4@l(r3)
/* 8027A70C 0027636C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A710 00276370  60 00 C0 00 */	ori r0, r0, 0xc000
/* 8027A714 00276374  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027A718 00276378  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A71C 0027637C  2C 00 00 00 */	cmpwi r0, 0
/* 8027A720 00276380  40 82 00 18 */	bne lbl_8027A738
/* 8027A724 00276384  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 8027A728 00276388  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A72C 0027638C  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A730 00276390  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8027A734 00276394  48 00 00 10 */	b lbl_8027A744
lbl_8027A738:
/* 8027A738 00276398  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 8027A73C 0027639C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A740 002763A0  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_8027A744:
/* 8027A744 002763A4  4B FF 80 95 */	bl __OSGetSystemTime
/* 8027A748 002763A8  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 8027A74C 002763AC  7C 99 23 78 */	mr r25, r4
/* 8027A750 002763B0  7C 78 1B 78 */	mr r24, r3
/* 8027A754 002763B4  3E C0 80 00 */	lis r22, 0x8000
/* 8027A758 002763B8  3A E5 DE 83 */	addi r23, r5, 0x431BDE83@l
/* 8027A75C 002763BC  3A A0 00 02 */	li r21, 2
/* 8027A760 002763C0  3A 80 00 00 */	li r20, 0
lbl_8027A764:
/* 8027A764 002763C4  4B FF 80 75 */	bl __OSGetSystemTime
/* 8027A768 002763C8  80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 8027A76C 002763CC  7C D9 20 10 */	subfc r6, r25, r4
/* 8027A770 002763D0  7C 78 19 10 */	subfe r3, r24, r3
/* 8027A774 002763D4  38 A0 00 00 */	li r5, 0
/* 8027A778 002763D8  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A77C 002763DC  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A780 002763E0  7C 17 00 16 */	mulhwu r0, r23, r0
/* 8027A784 002763E4  54 63 18 38 */	slwi r3, r3, 3
/* 8027A788 002763E8  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A78C 002763EC  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A790 002763F0  4B F4 CA E9 */	bl __div2i
/* 8027A794 002763F4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A798 002763F8  6E 85 80 00 */	xoris r5, r20, 0x8000
/* 8027A79C 002763FC  7C 75 20 10 */	subfc r3, r21, r4
/* 8027A7A0 00276400  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A7A4 00276404  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A7A8 00276408  7C A5 00 D1 */	neg. r5, r5
/* 8027A7AC 0027640C  40 82 FF B8 */	bne lbl_8027A764
/* 8027A7B0 00276410  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 8027A7B4 00276414  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 8027A7B8 00276418  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8027A7BC 0027641C  60 00 40 00 */	ori r0, r0, 0x4000
/* 8027A7C0 00276420  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8027A7C4 00276424  4B FF 80 15 */	bl __OSGetSystemTime
/* 8027A7C8 00276428  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 8027A7CC 0027642C  7C 99 23 78 */	mr r25, r4
/* 8027A7D0 00276430  7C 78 1B 78 */	mr r24, r3
/* 8027A7D4 00276434  3E C0 80 00 */	lis r22, 0x8000
/* 8027A7D8 00276438  3A E5 DE 83 */	addi r23, r5, 0x431BDE83@l
/* 8027A7DC 0027643C  3A A0 00 02 */	li r21, 2
/* 8027A7E0 00276440  3A 80 00 00 */	li r20, 0
lbl_8027A7E4:
/* 8027A7E4 00276444  4B FF 7F F5 */	bl __OSGetSystemTime
/* 8027A7E8 00276448  80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 8027A7EC 0027644C  7C D9 20 10 */	subfc r6, r25, r4
/* 8027A7F0 00276450  7C 78 19 10 */	subfe r3, r24, r3
/* 8027A7F4 00276454  38 A0 00 00 */	li r5, 0
/* 8027A7F8 00276458  54 00 F0 BE */	srwi r0, r0, 2
/* 8027A7FC 0027645C  54 C4 18 38 */	slwi r4, r6, 3
/* 8027A800 00276460  7C 17 00 16 */	mulhwu r0, r23, r0
/* 8027A804 00276464  54 63 18 38 */	slwi r3, r3, 3
/* 8027A808 00276468  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 8027A80C 0027646C  54 06 8B FE */	srwi r6, r0, 0xf
/* 8027A810 00276470  4B F4 CA 69 */	bl __div2i
/* 8027A814 00276474  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8027A818 00276478  6E 85 80 00 */	xoris r5, r20, 0x8000
/* 8027A81C 0027647C  7C 75 20 10 */	subfc r3, r21, r4
/* 8027A820 00276480  7C A5 01 10 */	subfe r5, r5, r0
/* 8027A824 00276484  7C A0 01 10 */	subfe r5, r0, r0
/* 8027A828 00276488  7C A5 00 D1 */	neg. r5, r5
/* 8027A82C 0027648C  40 82 FF B8 */	bne lbl_8027A7E4
/* 8027A830 00276490  80 0D 88 28 */	lwz r0, lbl_8063DAE8-_SDA_BASE_(r13)
/* 8027A834 00276494  2C 00 00 00 */	cmpwi r0, 0
/* 8027A838 00276498  40 82 00 18 */	bne lbl_8027A850
/* 8027A83C 0027649C  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 8027A840 002764A0  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 8027A844 002764A4  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A848 002764A8  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8027A84C 002764AC  48 00 00 18 */	b lbl_8027A864
lbl_8027A850:
/* 8027A850 002764B0  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 8027A854 002764B4  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 8027A858 002764B8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8027A85C 002764BC  60 00 80 00 */	ori r0, r0, 0x8000
/* 8027A860 002764C0  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_8027A864:
/* 8027A864 002764C4  7F E3 FB 78 */	mr r3, r31
/* 8027A868 002764C8  4B FF 3F 1D */	bl OSRestoreInterrupts
/* 8027A86C 002764CC  38 60 00 01 */	li r3, 1
lbl_8027A870:
/* 8027A870 002764D0  39 61 00 40 */	addi r11, r1, 0x40
/* 8027A874 002764D4  4B F4 C8 E5 */	bl _restgpr_20
/* 8027A878 002764D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027A87C 002764DC  7C 08 03 A6 */	mtlr r0
/* 8027A880 002764E0  38 21 00 40 */	addi r1, r1, 0x40
/* 8027A884 002764E4  4E 80 00 20 */	blr
