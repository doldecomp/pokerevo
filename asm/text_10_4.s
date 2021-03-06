.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80370990
func_80370990:
/* 80370990 0036C5F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80370994 0036C5F4  7C 08 02 A6 */	mflr r0
/* 80370998 0036C5F8  3C 80 80 45 */	lis r4, lbl_8044CA48@ha
/* 8037099C 0036C5FC  3C C0 80 40 */	lis r6, lbl_80400004@ha
/* 803709A0 0036C600  90 01 00 34 */	stw r0, 0x34(r1)
/* 803709A4 0036C604  38 00 00 00 */	li r0, 0
/* 803709A8 0036C608  38 84 CA 48 */	addi r4, r4, lbl_8044CA48@l
/* 803709AC 0036C60C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803709B0 0036C610  7C 7F 1B 78 */	mr r31, r3
/* 803709B4 0036C614  90 03 00 04 */	stw r0, 4(r3)
/* 803709B8 0036C618  90 03 00 08 */	stw r0, 8(r3)
/* 803709BC 0036C61C  90 83 00 00 */	stw r4, 0(r3)
/* 803709C0 0036C620  98 03 00 0C */	stb r0, 0xc(r3)
/* 803709C4 0036C624  90 03 00 10 */	stw r0, 0x10(r3)
/* 803709C8 0036C628  90 03 00 14 */	stw r0, 0x14(r3)
/* 803709CC 0036C62C  84 A6 28 A0 */	lwzu r5, 0x28a0(r6)
/* 803709D0 0036C630  80 86 00 04 */	lwz r4, lbl_80400004@l(r6)
/* 803709D4 0036C634  80 06 00 08 */	lwz r0, 8(r6)
/* 803709D8 0036C638  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803709DC 0036C63C  90 81 00 14 */	stw r4, 0x14(r1)
/* 803709E0 0036C640  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803709E4 0036C644  90 01 00 18 */	stw r0, 0x18(r1)
/* 803709E8 0036C648  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 803709EC 0036C64C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 803709F0 0036C650  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 803709F4 0036C654  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 803709F8 0036C658  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 803709FC 0036C65C  4B E5 66 05 */	bl __cvt_fp2unsigned
/* 80370A00 0036C660  28 03 13 88 */	cmplwi r3, 0x1388
/* 80370A04 0036C664  40 81 00 0C */	ble lbl_80370A10
/* 80370A08 0036C668  38 00 13 88 */	li r0, 0x1388
/* 80370A0C 0036C66C  48 00 00 14 */	b lbl_80370A20
lbl_80370A10:
/* 80370A10 0036C670  28 03 00 01 */	cmplwi r3, 1
/* 80370A14 0036C674  38 00 00 01 */	li r0, 1
/* 80370A18 0036C678  41 80 00 08 */	blt lbl_80370A20
/* 80370A1C 0036C67C  7C 60 1B 78 */	mr r0, r3
lbl_80370A20:
/* 80370A20 0036C680  C0 22 A6 20 */	lfs f1, lbl_80642C20-_SDA2_BASE_(r2)
/* 80370A24 0036C684  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80370A28 0036C688  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80370A2C 0036C68C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80370A30 0036C690  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80370A34 0036C694  90 1F 00 64 */	stw r0, 0x64(r31)
/* 80370A38 0036C698  4B E5 65 C9 */	bl __cvt_fp2unsigned
/* 80370A3C 0036C69C  28 03 00 63 */	cmplwi r3, 0x63
/* 80370A40 0036C6A0  38 00 00 63 */	li r0, 0x63
/* 80370A44 0036C6A4  41 81 00 08 */	bgt lbl_80370A4C
/* 80370A48 0036C6A8  7C 60 1B 78 */	mr r0, r3
lbl_80370A4C:
/* 80370A4C 0036C6AC  C0 22 A6 20 */	lfs f1, lbl_80642C20-_SDA2_BASE_(r2)
/* 80370A50 0036C6B0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80370A54 0036C6B4  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80370A58 0036C6B8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80370A5C 0036C6BC  90 1F 00 74 */	stw r0, 0x74(r31)
/* 80370A60 0036C6C0  90 1F 00 70 */	stw r0, 0x70(r31)
/* 80370A64 0036C6C4  4B E5 65 9D */	bl __cvt_fp2unsigned
/* 80370A68 0036C6C8  28 03 00 64 */	cmplwi r3, 0x64
/* 80370A6C 0036C6CC  38 80 00 64 */	li r4, 0x64
/* 80370A70 0036C6D0  41 81 00 08 */	bgt lbl_80370A78
/* 80370A74 0036C6D4  7C 64 1B 78 */	mr r4, r3
lbl_80370A78:
/* 80370A78 0036C6D8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80370A7C 0036C6DC  90 9F 00 84 */	stw r4, 0x84(r31)
/* 80370A80 0036C6E0  2C 00 00 00 */	cmpwi r0, 0
/* 80370A84 0036C6E4  90 9F 00 80 */	stw r4, 0x80(r31)
/* 80370A88 0036C6E8  90 9F 00 7C */	stw r4, 0x7c(r31)
/* 80370A8C 0036C6EC  41 82 00 50 */	beq lbl_80370ADC
/* 80370A90 0036C6F0  38 7F 00 24 */	addi r3, r31, 0x24
/* 80370A94 0036C6F4  4B F2 3A 35 */	bl AXFXDelayGetMemSize
/* 80370A98 0036C6F8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80370A9C 0036C6FC  38 03 00 87 */	addi r0, r3, 0x87
/* 80370AA0 0036C700  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80370AA4 0036C704  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80370AA8 0036C708  7C 04 00 50 */	subf r0, r4, r0
/* 80370AAC 0036C70C  7C 03 00 40 */	cmplw r3, r0
/* 80370AB0 0036C710  41 81 00 2C */	bgt lbl_80370ADC
/* 80370AB4 0036C714  38 7F 00 0C */	addi r3, r31, 0xc
/* 80370AB8 0036C718  38 81 00 08 */	addi r4, r1, 8
/* 80370ABC 0036C71C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80370AC0 0036C720  4B FF BC 81 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80370AC4 0036C724  38 7F 00 24 */	addi r3, r31, 0x24
/* 80370AC8 0036C728  4B F2 3C 1D */	bl AXFXDelaySettings
/* 80370ACC 0036C72C  80 81 00 08 */	lwz r4, 8(r1)
/* 80370AD0 0036C730  38 7F 00 0C */	addi r3, r31, 0xc
/* 80370AD4 0036C734  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80370AD8 0036C738  4B FF BC B5 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
lbl_80370ADC:
/* 80370ADC 0036C73C  7F E3 FB 78 */	mr r3, r31
/* 80370AE0 0036C740  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80370AE4 0036C744  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80370AE8 0036C748  7C 08 03 A6 */	mtlr r0
/* 80370AEC 0036C74C  38 21 00 30 */	addi r1, r1, 0x30
/* 80370AF0 0036C750  4E 80 00 20 */	blr

.global func_80370AF4
func_80370AF4:
/* 80370AF4 0036C754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370AF8 0036C758  7C 08 02 A6 */	mflr r0
/* 80370AFC 0036C75C  38 63 00 24 */	addi r3, r3, 0x24
/* 80370B00 0036C760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80370B04 0036C764  4B F2 39 C5 */	bl AXFXDelayGetMemSize
/* 80370B08 0036C768  38 03 00 87 */	addi r0, r3, 0x87
/* 80370B0C 0036C76C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80370B10 0036C770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370B14 0036C774  7C 08 03 A6 */	mtlr r0
/* 80370B18 0036C778  38 21 00 10 */	addi r1, r1, 0x10
/* 80370B1C 0036C77C  4E 80 00 20 */	blr

func_80370B20:
/* 80370B20 0036C780  38 63 00 0C */	addi r3, r3, 0xc
/* 80370B24 0036C784  4B FF BB C0 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl

func_80370B28:
/* 80370B28 0036C788  38 63 00 0C */	addi r3, r3, 0xc
/* 80370B2C 0036C78C  4B FF BC 00 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv

func_80370B30:
/* 80370B30 0036C790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370B34 0036C794  7C 08 02 A6 */	mflr r0
/* 80370B38 0036C798  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370B3C 0036C79C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370B40 0036C7A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370B44 0036C7A4  7C 7E 1B 78 */	mr r30, r3
/* 80370B48 0036C7A8  38 63 00 24 */	addi r3, r3, 0x24
/* 80370B4C 0036C7AC  4B F2 39 7D */	bl AXFXDelayGetMemSize
/* 80370B50 0036C7B0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80370B54 0036C7B4  38 03 00 87 */	addi r0, r3, 0x87
/* 80370B58 0036C7B8  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80370B5C 0036C7BC  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80370B60 0036C7C0  7C 04 00 50 */	subf r0, r4, r0
/* 80370B64 0036C7C4  7C 03 00 40 */	cmplw r3, r0
/* 80370B68 0036C7C8  40 81 00 0C */	ble lbl_80370B74
/* 80370B6C 0036C7CC  38 60 00 00 */	li r3, 0
/* 80370B70 0036C7D0  48 00 00 54 */	b lbl_80370BC4
lbl_80370B74:
/* 80370B74 0036C7D4  38 7E 00 0C */	addi r3, r30, 0xc
/* 80370B78 0036C7D8  38 81 00 0C */	addi r4, r1, 0xc
/* 80370B7C 0036C7DC  38 A1 00 08 */	addi r5, r1, 8
/* 80370B80 0036C7E0  4B FF BB C1 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80370B84 0036C7E4  38 00 00 00 */	li r0, 0
/* 80370B88 0036C7E8  38 7E 00 24 */	addi r3, r30, 0x24
/* 80370B8C 0036C7EC  90 0D B1 EC */	stw r0, lbl_806404AC-_SDA_BASE_(r13)
/* 80370B90 0036C7F0  4B F2 39 55 */	bl AXFXDelayInit
/* 80370B94 0036C7F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80370B98 0036C7F8  7C 7F 1B 78 */	mr r31, r3
/* 80370B9C 0036C7FC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80370BA0 0036C800  38 7E 00 0C */	addi r3, r30, 0xc
/* 80370BA4 0036C804  4B FF BB E9 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80370BA8 0036C808  38 7E 00 24 */	addi r3, r30, 0x24
/* 80370BAC 0036C80C  4B F2 39 1D */	bl AXFXDelayGetMemSize
/* 80370BB0 0036C810  7C 1F 00 D0 */	neg r0, r31
/* 80370BB4 0036C814  38 60 00 01 */	li r3, 1
/* 80370BB8 0036C818  7C 00 FB 78 */	or r0, r0, r31
/* 80370BBC 0036C81C  98 7E 00 0C */	stb r3, 0xc(r30)
/* 80370BC0 0036C820  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80370BC4:
/* 80370BC4 0036C824  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370BC8 0036C828  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80370BCC 0036C82C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80370BD0 0036C830  7C 08 03 A6 */	mtlr r0
/* 80370BD4 0036C834  38 21 00 20 */	addi r1, r1, 0x20
/* 80370BD8 0036C838  4E 80 00 20 */	blr

func_80370BDC:
/* 80370BDC 0036C83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370BE0 0036C840  7C 08 02 A6 */	mflr r0
/* 80370BE4 0036C844  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370BE8 0036C848  38 00 00 00 */	li r0, 0
/* 80370BEC 0036C84C  38 81 00 0C */	addi r4, r1, 0xc
/* 80370BF0 0036C850  38 A1 00 08 */	addi r5, r1, 8
/* 80370BF4 0036C854  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370BF8 0036C858  7C 7F 1B 78 */	mr r31, r3
/* 80370BFC 0036C85C  9C 03 00 0C */	stbu r0, 0xc(r3)
/* 80370C00 0036C860  4B FF BB 41 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80370C04 0036C864  38 7F 00 24 */	addi r3, r31, 0x24
/* 80370C08 0036C868  4B F2 3C 01 */	bl AXFXDelayShutdown
/* 80370C0C 0036C86C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80370C10 0036C870  38 7F 00 0C */	addi r3, r31, 0xc
/* 80370C14 0036C874  80 A1 00 08 */	lwz r5, 8(r1)
/* 80370C18 0036C878  4B FF BB 75 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80370C1C 0036C87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370C20 0036C880  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80370C24 0036C884  7C 08 03 A6 */	mtlr r0
/* 80370C28 0036C888  38 21 00 20 */	addi r1, r1, 0x20
/* 80370C2C 0036C88C  4E 80 00 20 */	blr

.global func_80370C30
func_80370C30:
/* 80370C30 0036C890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370C34 0036C894  7C 08 02 A6 */	mflr r0
/* 80370C38 0036C898  C0 24 00 00 */	lfs f1, 0(r4)
/* 80370C3C 0036C89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370C40 0036C8A0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80370C44 0036C8A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370C48 0036C8A8  7C 9F 23 78 */	mr r31, r4
/* 80370C4C 0036C8AC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80370C50 0036C8B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370C54 0036C8B4  7C 7E 1B 78 */	mr r30, r3
/* 80370C58 0036C8B8  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80370C5C 0036C8BC  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80370C60 0036C8C0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80370C64 0036C8C4  4B E5 63 9D */	bl __cvt_fp2unsigned
/* 80370C68 0036C8C8  28 03 13 88 */	cmplwi r3, 0x1388
/* 80370C6C 0036C8CC  40 81 00 0C */	ble lbl_80370C78
/* 80370C70 0036C8D0  38 00 13 88 */	li r0, 0x1388
/* 80370C74 0036C8D4  48 00 00 14 */	b lbl_80370C88
lbl_80370C78:
/* 80370C78 0036C8D8  28 03 00 01 */	cmplwi r3, 1
/* 80370C7C 0036C8DC  38 00 00 01 */	li r0, 1
/* 80370C80 0036C8E0  41 80 00 08 */	blt lbl_80370C88
/* 80370C84 0036C8E4  7C 60 1B 78 */	mr r0, r3
lbl_80370C88:
/* 80370C88 0036C8E8  C0 22 A6 20 */	lfs f1, lbl_80642C20-_SDA2_BASE_(r2)
/* 80370C8C 0036C8EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80370C90 0036C8F0  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 80370C94 0036C8F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80370C98 0036C8F8  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80370C9C 0036C8FC  90 1E 00 64 */	stw r0, 0x64(r30)
/* 80370CA0 0036C900  4B E5 63 61 */	bl __cvt_fp2unsigned
/* 80370CA4 0036C904  28 03 00 63 */	cmplwi r3, 0x63
/* 80370CA8 0036C908  38 00 00 63 */	li r0, 0x63
/* 80370CAC 0036C90C  41 81 00 08 */	bgt lbl_80370CB4
/* 80370CB0 0036C910  7C 60 1B 78 */	mr r0, r3
lbl_80370CB4:
/* 80370CB4 0036C914  C0 22 A6 20 */	lfs f1, lbl_80642C20-_SDA2_BASE_(r2)
/* 80370CB8 0036C918  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80370CBC 0036C91C  90 1E 00 78 */	stw r0, 0x78(r30)
/* 80370CC0 0036C920  EC 21 00 32 */	fmuls f1, f1, f0
/* 80370CC4 0036C924  90 1E 00 74 */	stw r0, 0x74(r30)
/* 80370CC8 0036C928  90 1E 00 70 */	stw r0, 0x70(r30)
/* 80370CCC 0036C92C  4B E5 63 35 */	bl __cvt_fp2unsigned
/* 80370CD0 0036C930  28 03 00 64 */	cmplwi r3, 0x64
/* 80370CD4 0036C934  38 80 00 64 */	li r4, 0x64
/* 80370CD8 0036C938  41 81 00 08 */	bgt lbl_80370CE0
/* 80370CDC 0036C93C  7C 64 1B 78 */	mr r4, r3
lbl_80370CE0:
/* 80370CE0 0036C940  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 80370CE4 0036C944  90 9E 00 84 */	stw r4, 0x84(r30)
/* 80370CE8 0036C948  2C 00 00 00 */	cmpwi r0, 0
/* 80370CEC 0036C94C  90 9E 00 80 */	stw r4, 0x80(r30)
/* 80370CF0 0036C950  90 9E 00 7C */	stw r4, 0x7c(r30)
/* 80370CF4 0036C954  40 82 00 0C */	bne lbl_80370D00
/* 80370CF8 0036C958  38 60 00 01 */	li r3, 1
/* 80370CFC 0036C95C  48 00 00 68 */	b lbl_80370D64
lbl_80370D00:
/* 80370D00 0036C960  38 7E 00 24 */	addi r3, r30, 0x24
/* 80370D04 0036C964  4B F2 37 C5 */	bl AXFXDelayGetMemSize
/* 80370D08 0036C968  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80370D0C 0036C96C  38 03 00 87 */	addi r0, r3, 0x87
/* 80370D10 0036C970  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80370D14 0036C974  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80370D18 0036C978  7C 04 00 50 */	subf r0, r4, r0
/* 80370D1C 0036C97C  7C 03 00 40 */	cmplw r3, r0
/* 80370D20 0036C980  40 81 00 0C */	ble lbl_80370D2C
/* 80370D24 0036C984  38 60 00 00 */	li r3, 0
/* 80370D28 0036C988  48 00 00 3C */	b lbl_80370D64
lbl_80370D2C:
/* 80370D2C 0036C98C  38 7E 00 0C */	addi r3, r30, 0xc
/* 80370D30 0036C990  38 81 00 0C */	addi r4, r1, 0xc
/* 80370D34 0036C994  38 A1 00 08 */	addi r5, r1, 8
/* 80370D38 0036C998  4B FF BA 09 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80370D3C 0036C99C  38 7E 00 24 */	addi r3, r30, 0x24
/* 80370D40 0036C9A0  4B F2 39 A5 */	bl AXFXDelaySettings
/* 80370D44 0036C9A4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80370D48 0036C9A8  7C 7F 1B 78 */	mr r31, r3
/* 80370D4C 0036C9AC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80370D50 0036C9B0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80370D54 0036C9B4  4B FF BA 39 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80370D58 0036C9B8  7C 1F 00 D0 */	neg r0, r31
/* 80370D5C 0036C9BC  7C 00 FB 78 */	or r0, r0, r31
/* 80370D60 0036C9C0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80370D64:
/* 80370D64 0036C9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370D68 0036C9C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80370D6C 0036C9CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80370D70 0036C9D0  7C 08 03 A6 */	mtlr r0
/* 80370D74 0036C9D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80370D78 0036C9D8  4E 80 00 20 */	blr

func_80370D7C:
/* 80370D7C 0036C9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370D80 0036C9E0  7C 08 02 A6 */	mflr r0
/* 80370D84 0036C9E4  7C 64 1B 78 */	mr r4, r3
/* 80370D88 0036C9E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370D8C 0036C9EC  38 61 00 08 */	addi r3, r1, 8
/* 80370D90 0036C9F0  38 84 00 24 */	addi r4, r4, 0x24
/* 80370D94 0036C9F4  80 05 00 00 */	lwz r0, 0(r5)
/* 80370D98 0036C9F8  90 01 00 08 */	stw r0, 8(r1)
/* 80370D9C 0036C9FC  80 05 00 04 */	lwz r0, 4(r5)
/* 80370DA0 0036CA00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80370DA4 0036CA04  80 05 00 08 */	lwz r0, 8(r5)
/* 80370DA8 0036CA08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80370DAC 0036CA0C  4B F2 3A ED */	bl AXFXDelayCallback
/* 80370DB0 0036CA10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370DB4 0036CA14  7C 08 03 A6 */	mtlr r0
/* 80370DB8 0036CA18  38 21 00 20 */	addi r1, r1, 0x20
/* 80370DBC 0036CA1C  4E 80 00 20 */	blr
