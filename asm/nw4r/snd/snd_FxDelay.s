.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q34nw4r3snd7FxDelayFv
__ct__Q34nw4r3snd7FxDelayFv:
/* 80370640 0036C2A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370644 0036C2A4  7C 08 02 A6 */	mflr r0
/* 80370648 0036C2A8  3C A0 80 45 */	lis r5, lbl_8044CA28@ha
/* 8037064C 0036C2AC  3C E0 80 40 */	lis r7, lbl_80400004@ha
/* 80370650 0036C2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370654 0036C2B4  38 00 00 00 */	li r0, 0
/* 80370658 0036C2B8  38 A5 CA 28 */	addi r5, r5, lbl_8044CA28@l
/* 8037065C 0036C2BC  38 81 00 08 */	addi r4, r1, 8
/* 80370660 0036C2C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370664 0036C2C4  7C 7F 1B 78 */	mr r31, r3
/* 80370668 0036C2C8  90 03 00 04 */	stw r0, 4(r3)
/* 8037066C 0036C2CC  90 03 00 08 */	stw r0, 8(r3)
/* 80370670 0036C2D0  90 A3 00 00 */	stw r5, 0(r3)
/* 80370674 0036C2D4  98 03 00 0C */	stb r0, 0xc(r3)
/* 80370678 0036C2D8  90 03 00 10 */	stw r0, 0x10(r3)
/* 8037067C 0036C2DC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80370680 0036C2E0  84 C7 28 90 */	lwzu r6, 0x2890(r7)
/* 80370684 0036C2E4  80 A7 00 04 */	lwz r5, lbl_80400004@l(r7)
/* 80370688 0036C2E8  80 07 00 08 */	lwz r0, 8(r7)
/* 8037068C 0036C2EC  90 C1 00 08 */	stw r6, 8(r1)
/* 80370690 0036C2F0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80370694 0036C2F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80370698 0036C2F8  48 00 01 59 */	bl SetParam__Q34nw4r3snd7FxDelayFRCQ44nw4r3snd7FxDelay10DelayParam
/* 8037069C 0036C2FC  7F E3 FB 78 */	mr r3, r31
/* 803706A0 0036C300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803706A4 0036C304  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803706A8 0036C308  7C 08 03 A6 */	mtlr r0
/* 803706AC 0036C30C  38 21 00 20 */	addi r1, r1, 0x20
/* 803706B0 0036C310  4E 80 00 20 */	blr

.global GetRequiredMemSize__Q34nw4r3snd7FxDelayFv
GetRequiredMemSize__Q34nw4r3snd7FxDelayFv:
/* 803706B4 0036C314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803706B8 0036C318  7C 08 02 A6 */	mflr r0
/* 803706BC 0036C31C  38 63 00 24 */	addi r3, r3, 0x24
/* 803706C0 0036C320  90 01 00 14 */	stw r0, 0x14(r1)
/* 803706C4 0036C324  4B F2 51 D1 */	bl AXFXChorusGetMemSize
/* 803706C8 0036C328  38 03 00 87 */	addi r0, r3, 0x87
/* 803706CC 0036C32C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803706D0 0036C330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803706D4 0036C334  7C 08 03 A6 */	mtlr r0
/* 803706D8 0036C338  38 21 00 10 */	addi r1, r1, 0x10
/* 803706DC 0036C33C  4E 80 00 20 */	blr

.global AssignWorkBuffer__Q34nw4r3snd7FxDelayFPvUl
AssignWorkBuffer__Q34nw4r3snd7FxDelayFPvUl:
/* 803706E0 0036C340  38 63 00 0C */	addi r3, r3, 0xc
/* 803706E4 0036C344  4B FF C0 00 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl

.global ReleaseWorkBuffer__Q34nw4r3snd7FxDelayFv
ReleaseWorkBuffer__Q34nw4r3snd7FxDelayFv:
/* 803706E8 0036C348  38 63 00 0C */	addi r3, r3, 0xc
/* 803706EC 0036C34C  4B FF C0 40 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv

.global StartUp__Q34nw4r3snd7FxDelayFv
StartUp__Q34nw4r3snd7FxDelayFv:
/* 803706F0 0036C350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803706F4 0036C354  7C 08 02 A6 */	mflr r0
/* 803706F8 0036C358  90 01 00 24 */	stw r0, 0x24(r1)
/* 803706FC 0036C35C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370700 0036C360  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370704 0036C364  7C 7E 1B 78 */	mr r30, r3
/* 80370708 0036C368  38 63 00 24 */	addi r3, r3, 0x24
/* 8037070C 0036C36C  4B F2 51 89 */	bl AXFXChorusGetMemSize
/* 80370710 0036C370  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80370714 0036C374  38 03 00 87 */	addi r0, r3, 0x87
/* 80370718 0036C378  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8037071C 0036C37C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80370720 0036C380  7C 04 00 50 */	subf r0, r4, r0
/* 80370724 0036C384  7C 03 00 40 */	cmplw r3, r0
/* 80370728 0036C388  40 81 00 0C */	ble lbl_80370734
/* 8037072C 0036C38C  38 60 00 00 */	li r3, 0
/* 80370730 0036C390  48 00 00 54 */	b lbl_80370784
lbl_80370734:
/* 80370734 0036C394  38 7E 00 0C */	addi r3, r30, 0xc
/* 80370738 0036C398  38 81 00 0C */	addi r4, r1, 0xc
/* 8037073C 0036C39C  38 A1 00 08 */	addi r5, r1, 8
/* 80370740 0036C3A0  4B FF C0 01 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80370744 0036C3A4  38 00 00 00 */	li r0, 0
/* 80370748 0036C3A8  38 7E 00 24 */	addi r3, r30, 0x24
/* 8037074C 0036C3AC  90 0D B1 EC */	stw r0, lbl_806404AC-_SDA_BASE_(r13)
/* 80370750 0036C3B0  4B F2 51 49 */	bl AXFXChorusInit
/* 80370754 0036C3B4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80370758 0036C3B8  7C 7F 1B 78 */	mr r31, r3
/* 8037075C 0036C3BC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80370760 0036C3C0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80370764 0036C3C4  4B FF C0 29 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80370768 0036C3C8  38 7E 00 24 */	addi r3, r30, 0x24
/* 8037076C 0036C3CC  4B F2 51 29 */	bl AXFXChorusGetMemSize
/* 80370770 0036C3D0  7C 1F 00 D0 */	neg r0, r31
/* 80370774 0036C3D4  38 60 00 01 */	li r3, 1
/* 80370778 0036C3D8  7C 00 FB 78 */	or r0, r0, r31
/* 8037077C 0036C3DC  98 7E 00 0C */	stb r3, 0xc(r30)
/* 80370780 0036C3E0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80370784:
/* 80370784 0036C3E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370788 0036C3E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037078C 0036C3EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80370790 0036C3F0  7C 08 03 A6 */	mtlr r0
/* 80370794 0036C3F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80370798 0036C3F8  4E 80 00 20 */	blr

.global Shutdown__Q34nw4r3snd7FxDelayFv
Shutdown__Q34nw4r3snd7FxDelayFv:
/* 8037079C 0036C3FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803707A0 0036C400  7C 08 02 A6 */	mflr r0
/* 803707A4 0036C404  90 01 00 24 */	stw r0, 0x24(r1)
/* 803707A8 0036C408  38 00 00 00 */	li r0, 0
/* 803707AC 0036C40C  38 81 00 0C */	addi r4, r1, 0xc
/* 803707B0 0036C410  38 A1 00 08 */	addi r5, r1, 8
/* 803707B4 0036C414  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803707B8 0036C418  7C 7F 1B 78 */	mr r31, r3
/* 803707BC 0036C41C  9C 03 00 0C */	stbu r0, 0xc(r3)
/* 803707C0 0036C420  4B FF BF 81 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 803707C4 0036C424  38 7F 00 24 */	addi r3, r31, 0x24
/* 803707C8 0036C428  4B F2 51 6D */	bl AXFXChorusShutdown
/* 803707CC 0036C42C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803707D0 0036C430  38 7F 00 0C */	addi r3, r31, 0xc
/* 803707D4 0036C434  80 A1 00 08 */	lwz r5, 8(r1)
/* 803707D8 0036C438  4B FF BF B5 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 803707DC 0036C43C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803707E0 0036C440  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803707E4 0036C444  7C 08 03 A6 */	mtlr r0
/* 803707E8 0036C448  38 21 00 20 */	addi r1, r1, 0x20
/* 803707EC 0036C44C  4E 80 00 20 */	blr

.global SetParam__Q34nw4r3snd7FxDelayFRCQ44nw4r3snd7FxDelay10DelayParam
SetParam__Q34nw4r3snd7FxDelayFRCQ44nw4r3snd7FxDelay10DelayParam:
/* 803707F0 0036C450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803707F4 0036C454  7C 08 02 A6 */	mflr r0
/* 803707F8 0036C458  C0 24 00 00 */	lfs f1, 0(r4)
/* 803707FC 0036C45C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370800 0036C460  C0 44 00 04 */	lfs f2, 4(r4)
/* 80370804 0036C464  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370808 0036C468  C0 04 00 08 */	lfs f0, 8(r4)
/* 8037080C 0036C46C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370810 0036C470  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80370814 0036C474  7C 9D 23 78 */	mr r29, r4
/* 80370818 0036C478  93 81 00 10 */	stw r28, 0x10(r1)
/* 8037081C 0036C47C  7C 7C 1B 78 */	mr r28, r3
/* 80370820 0036C480  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80370824 0036C484  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80370828 0036C488  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8037082C 0036C48C  4B E5 67 D5 */	bl __cvt_fp2unsigned
/* 80370830 0036C490  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80370834 0036C494  7C 7F 1B 78 */	mr r31, r3
/* 80370838 0036C498  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8037083C 0036C49C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80370840 0036C4A0  4B E5 67 C1 */	bl __cvt_fp2unsigned
/* 80370844 0036C4A4  C0 22 A6 18 */	lfs f1, lbl_80642C18-_SDA2_BASE_(r2)
/* 80370848 0036C4A8  7C 7E 1B 78 */	mr r30, r3
/* 8037084C 0036C4AC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80370850 0036C4B0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80370854 0036C4B4  4B E5 67 AD */	bl __cvt_fp2unsigned
/* 80370858 0036C4B8  28 1F 00 32 */	cmplwi r31, 0x32
/* 8037085C 0036C4BC  40 81 00 0C */	ble lbl_80370868
/* 80370860 0036C4C0  38 00 00 32 */	li r0, 0x32
/* 80370864 0036C4C4  48 00 00 14 */	b lbl_80370878
lbl_80370868:
/* 80370868 0036C4C8  28 1F 00 01 */	cmplwi r31, 1
/* 8037086C 0036C4CC  38 00 00 01 */	li r0, 1
/* 80370870 0036C4D0  41 80 00 08 */	blt lbl_80370878
/* 80370874 0036C4D4  7F E0 FB 78 */	mr r0, r31
lbl_80370878:
/* 80370878 0036C4D8  28 1E 00 32 */	cmplwi r30, 0x32
/* 8037087C 0036C4DC  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 80370880 0036C4E0  38 00 00 32 */	li r0, 0x32
/* 80370884 0036C4E4  41 81 00 08 */	bgt lbl_8037088C
/* 80370888 0036C4E8  7F C0 F3 78 */	mr r0, r30
lbl_8037088C:
/* 8037088C 0036C4EC  28 03 27 10 */	cmplwi r3, 0x2710
/* 80370890 0036C4F0  90 1C 00 C8 */	stw r0, 0xc8(r28)
/* 80370894 0036C4F4  40 81 00 0C */	ble lbl_803708A0
/* 80370898 0036C4F8  38 80 27 10 */	li r4, 0x2710
/* 8037089C 0036C4FC  48 00 00 14 */	b lbl_803708B0
lbl_803708A0:
/* 803708A0 0036C500  28 03 01 F4 */	cmplwi r3, 0x1f4
/* 803708A4 0036C504  38 80 01 F4 */	li r4, 0x1f4
/* 803708A8 0036C508  41 80 00 08 */	blt lbl_803708B0
/* 803708AC 0036C50C  7C 64 1B 78 */	mr r4, r3
lbl_803708B0:
/* 803708B0 0036C510  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 803708B4 0036C514  90 9C 00 CC */	stw r4, 0xcc(r28)
/* 803708B8 0036C518  2C 00 00 00 */	cmpwi r0, 0
/* 803708BC 0036C51C  40 82 00 0C */	bne lbl_803708C8
/* 803708C0 0036C520  38 60 00 01 */	li r3, 1
/* 803708C4 0036C524  48 00 00 68 */	b lbl_8037092C
lbl_803708C8:
/* 803708C8 0036C528  38 7C 00 24 */	addi r3, r28, 0x24
/* 803708CC 0036C52C  4B F2 4F C9 */	bl AXFXChorusGetMemSize
/* 803708D0 0036C530  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 803708D4 0036C534  38 03 00 87 */	addi r0, r3, 0x87
/* 803708D8 0036C538  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803708DC 0036C53C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 803708E0 0036C540  7C 04 00 50 */	subf r0, r4, r0
/* 803708E4 0036C544  7C 03 00 40 */	cmplw r3, r0
/* 803708E8 0036C548  40 81 00 0C */	ble lbl_803708F4
/* 803708EC 0036C54C  38 60 00 00 */	li r3, 0
/* 803708F0 0036C550  48 00 00 3C */	b lbl_8037092C
lbl_803708F4:
/* 803708F4 0036C554  38 7C 00 0C */	addi r3, r28, 0xc
/* 803708F8 0036C558  38 81 00 0C */	addi r4, r1, 0xc
/* 803708FC 0036C55C  38 A1 00 08 */	addi r5, r1, 8
/* 80370900 0036C560  4B FF BE 41 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80370904 0036C564  38 7C 00 24 */	addi r3, r28, 0x24
/* 80370908 0036C568  4B F2 50 51 */	bl AXFXChorusSettings
/* 8037090C 0036C56C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80370910 0036C570  7C 7F 1B 78 */	mr r31, r3
/* 80370914 0036C574  80 A1 00 08 */	lwz r5, 8(r1)
/* 80370918 0036C578  38 7C 00 0C */	addi r3, r28, 0xc
/* 8037091C 0036C57C  4B FF BE 71 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80370920 0036C580  7C 1F 00 D0 */	neg r0, r31
/* 80370924 0036C584  7C 00 FB 78 */	or r0, r0, r31
/* 80370928 0036C588  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8037092C:
/* 8037092C 0036C58C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370930 0036C590  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80370934 0036C594  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80370938 0036C598  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037093C 0036C59C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80370940 0036C5A0  7C 08 03 A6 */	mtlr r0
/* 80370944 0036C5A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80370948 0036C5A8  4E 80 00 20 */	blr

.global UpdateBuffer__Q34nw4r3snd7FxDelayFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
UpdateBuffer__Q34nw4r3snd7FxDelayFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode:
/* 8037094C 0036C5AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370950 0036C5B0  7C 08 02 A6 */	mflr r0
/* 80370954 0036C5B4  7C 64 1B 78 */	mr r4, r3
/* 80370958 0036C5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037095C 0036C5BC  38 61 00 08 */	addi r3, r1, 8
/* 80370960 0036C5C0  38 84 00 24 */	addi r4, r4, 0x24
/* 80370964 0036C5C4  80 05 00 00 */	lwz r0, 0(r5)
/* 80370968 0036C5C8  90 01 00 08 */	stw r0, 8(r1)
/* 8037096C 0036C5CC  80 05 00 04 */	lwz r0, 4(r5)
/* 80370970 0036C5D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80370974 0036C5D4  80 05 00 08 */	lwz r0, 8(r5)
/* 80370978 0036C5D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8037097C 0036C5DC  4B F2 50 79 */	bl AXFXChorusCallback
/* 80370980 0036C5E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370984 0036C5E4  7C 08 03 A6 */	mtlr r0
/* 80370988 0036C5E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037098C 0036C5EC  4E 80 00 20 */	blr
