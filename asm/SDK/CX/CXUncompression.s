.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global CXGetUncompressedSize
CXGetUncompressedSize:
/* 802A270C 0029E36C  80 A3 00 00 */	lwz r5, 0(r3)
/* 802A2710 0029E370  54 A4 42 1E */	rlwinm r4, r5, 8, 8, 0xf
/* 802A2714 0029E374  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 802A2718 0029E378  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 802A271C 0029E37C  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 802A2720 0029E380  7C 80 03 78 */	or r0, r4, r0
/* 802A2724 0029E384  54 00 C2 3F */	rlwinm. r0, r0, 0x18, 8, 0x1f
/* 802A2728 0029E388  40 82 00 1C */	bne lbl_802A2744
/* 802A272C 0029E38C  80 83 00 04 */	lwz r4, 4(r3)
/* 802A2730 0029E390  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 802A2734 0029E394  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 802A2738 0029E398  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 802A273C 0029E39C  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 802A2740 0029E3A0  7C 60 03 78 */	or r0, r3, r0
lbl_802A2744:
/* 802A2744 0029E3A4  7C 03 03 78 */	mr r3, r0
/* 802A2748 0029E3A8  4E 80 00 20 */	blr

.global CXUncompressLZ
CXUncompressLZ:
/* 802A274C 0029E3AC  80 A3 00 00 */	lwz r5, 0(r3)
/* 802A2750 0029E3B0  38 E3 00 04 */	addi r7, r3, 4
/* 802A2754 0029E3B4  54 A3 42 1E */	rlwinm r3, r5, 8, 8, 0xf
/* 802A2758 0029E3B8  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 802A275C 0029E3BC  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 802A2760 0029E3C0  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 802A2764 0029E3C4  7C 60 03 78 */	or r0, r3, r0
/* 802A2768 0029E3C8  54 08 C2 3F */	rlwinm. r8, r0, 0x18, 8, 0x1f
/* 802A276C 0029E3CC  40 82 00 20 */	bne lbl_802A278C
/* 802A2770 0029E3D0  80 A7 00 00 */	lwz r5, 0(r7)
/* 802A2774 0029E3D4  38 E7 00 04 */	addi r7, r7, 4
/* 802A2778 0029E3D8  54 A3 42 1E */	rlwinm r3, r5, 8, 8, 0xf
/* 802A277C 0029E3DC  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 802A2780 0029E3E0  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 802A2784 0029E3E4  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 802A2788 0029E3E8  7C 68 03 78 */	or r8, r3, r0
lbl_802A278C:
/* 802A278C 0029E3EC  38 00 00 04 */	li r0, 4
/* 802A2790 0029E3F0  48 00 00 E4 */	b lbl_802A2874
lbl_802A2794:
/* 802A2794 0029E3F4  89 47 00 00 */	lbz r10, 0(r7)
/* 802A2798 0029E3F8  39 20 00 00 */	li r9, 0
/* 802A279C 0029E3FC  7C 09 03 A6 */	mtctr r0
/* 802A27A0 0029E400  38 E7 00 01 */	addi r7, r7, 1
lbl_802A27A4:
/* 802A27A4 0029E404  55 43 06 31 */	rlwinm. r3, r10, 0, 0x18, 0x18
/* 802A27A8 0029E408  40 82 00 1C */	bne lbl_802A27C4
/* 802A27AC 0029E40C  88 67 00 00 */	lbz r3, 0(r7)
/* 802A27B0 0029E410  39 08 FF FF */	addi r8, r8, -1
/* 802A27B4 0029E414  38 E7 00 01 */	addi r7, r7, 1
/* 802A27B8 0029E418  98 64 00 00 */	stb r3, 0(r4)
/* 802A27BC 0029E41C  38 84 00 01 */	addi r4, r4, 1
/* 802A27C0 0029E420  48 00 00 3C */	b lbl_802A27FC
lbl_802A27C4:
/* 802A27C4 0029E424  88 C7 00 00 */	lbz r6, 0(r7)
/* 802A27C8 0029E428  88 67 00 01 */	lbz r3, 1(r7)
/* 802A27CC 0029E42C  38 E7 00 02 */	addi r7, r7, 2
/* 802A27D0 0029E430  7C C5 26 70 */	srawi r5, r6, 4
/* 802A27D4 0029E434  50 C3 45 2E */	rlwimi r3, r6, 8, 0x14, 0x17
/* 802A27D8 0029E438  38 C5 00 03 */	addi r6, r5, 3
/* 802A27DC 0029E43C  38 A3 00 01 */	addi r5, r3, 1
/* 802A27E0 0029E440  7D 06 40 50 */	subf r8, r6, r8
lbl_802A27E4:
/* 802A27E4 0029E444  7C 65 20 50 */	subf r3, r5, r4
/* 802A27E8 0029E448  34 C6 FF FF */	addic. r6, r6, -1
/* 802A27EC 0029E44C  88 63 00 00 */	lbz r3, 0(r3)
/* 802A27F0 0029E450  98 64 00 00 */	stb r3, 0(r4)
/* 802A27F4 0029E454  38 84 00 01 */	addi r4, r4, 1
/* 802A27F8 0029E458  41 81 FF EC */	bgt lbl_802A27E4
lbl_802A27FC:
/* 802A27FC 0029E45C  2C 08 00 00 */	cmpwi r8, 0
/* 802A2800 0029E460  41 82 00 74 */	beq lbl_802A2874
/* 802A2804 0029E464  55 4A 08 3C */	slwi r10, r10, 1
/* 802A2808 0029E468  55 43 06 31 */	rlwinm. r3, r10, 0, 0x18, 0x18
/* 802A280C 0029E46C  40 82 00 1C */	bne lbl_802A2828
/* 802A2810 0029E470  88 67 00 00 */	lbz r3, 0(r7)
/* 802A2814 0029E474  39 08 FF FF */	addi r8, r8, -1
/* 802A2818 0029E478  38 E7 00 01 */	addi r7, r7, 1
/* 802A281C 0029E47C  98 64 00 00 */	stb r3, 0(r4)
/* 802A2820 0029E480  38 84 00 01 */	addi r4, r4, 1
/* 802A2824 0029E484  48 00 00 3C */	b lbl_802A2860
lbl_802A2828:
/* 802A2828 0029E488  88 C7 00 00 */	lbz r6, 0(r7)
/* 802A282C 0029E48C  88 67 00 01 */	lbz r3, 1(r7)
/* 802A2830 0029E490  38 E7 00 02 */	addi r7, r7, 2
/* 802A2834 0029E494  7C C5 26 70 */	srawi r5, r6, 4
/* 802A2838 0029E498  50 C3 45 2E */	rlwimi r3, r6, 8, 0x14, 0x17
/* 802A283C 0029E49C  38 C5 00 03 */	addi r6, r5, 3
/* 802A2840 0029E4A0  38 A3 00 01 */	addi r5, r3, 1
/* 802A2844 0029E4A4  7D 06 40 50 */	subf r8, r6, r8
lbl_802A2848:
/* 802A2848 0029E4A8  7C 65 20 50 */	subf r3, r5, r4
/* 802A284C 0029E4AC  34 C6 FF FF */	addic. r6, r6, -1
/* 802A2850 0029E4B0  88 63 00 00 */	lbz r3, 0(r3)
/* 802A2854 0029E4B4  98 64 00 00 */	stb r3, 0(r4)
/* 802A2858 0029E4B8  38 84 00 01 */	addi r4, r4, 1
/* 802A285C 0029E4BC  41 81 FF EC */	bgt lbl_802A2848
lbl_802A2860:
/* 802A2860 0029E4C0  2C 08 00 00 */	cmpwi r8, 0
/* 802A2864 0029E4C4  41 82 00 10 */	beq lbl_802A2874
/* 802A2868 0029E4C8  55 4A 08 3C */	slwi r10, r10, 1
/* 802A286C 0029E4CC  39 29 00 01 */	addi r9, r9, 1
/* 802A2870 0029E4D0  42 00 FF 34 */	bdnz lbl_802A27A4
lbl_802A2874:
/* 802A2874 0029E4D4  2C 08 00 00 */	cmpwi r8, 0
/* 802A2878 0029E4D8  40 82 FF 1C */	bne lbl_802A2794
/* 802A287C 0029E4DC  4E 80 00 20 */	blr
