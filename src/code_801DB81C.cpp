#include "types.h"
#include "unkStruct.h"
#include "SDK/os.h"

extern "C" {

// TODO: rename
struct unkClass3
{
    u8 unk0;
    u8 unk1;
    u32 unk4;
};

// TODO: define, rename, localize
// extern unkClass3 lbl_80491370[32];
extern u8 lbl_80491370;


extern u32 lbl_8063F2F8;
extern u32 lbl_8063F2FC;

extern u8 lbl_8063F304;
extern u32 lbl_8063F308;

//static
void func_801DB81C(u8 p1);

void func_801DB92C(u8 p1, u8 p2, u32 p3);



#ifdef NONMATCHING
// 1. wrong instruction order: loading lbl_80491370@ha before 0
// 2. r30/r31 register swap

//static 
void func_801DB81C(u8 p1)
{
    for (size_t i = 0; i < 31; i++)
        lbl_80491370[i].unk0 = 0xff;
    lbl_8063F308 = 0;
    lbl_80491370[31].unk0 = 0xff;
    LCEnable();
    lbl_8063F2FC = 0xE0000000;
    lbl_8063F2F8 = p1 << 9;
    if (p1) {
        func_801DB92C(0, p1, 1);
        lbl_80491370[0].unk0 = 0;
        lbl_80491370[0].unk1 = p1;
    }
    lbl_8063F304 = 0;
}
#else
#define _SDA_BASE_ 0x806452C0;
asm void func_801DB81C(u8 p1)
{
    nofralloc
    /* 801DB81C 001D747C  94 21 FF E0 */	stwu r1, -0x20(r1)
    /* 801DB820 001D7480  7C 08 02 A6 */	mflr r0
    /* 801DB824 001D7484  90 01 00 24 */	stw r0, 0x24(r1)
    /* 801DB828 001D7488  38 00 00 FF */	li r0, 0xff
    /* 801DB82C 001D748C  93 E1 00 1C */	stw r31, 0x1c(r1)
    /* 801DB830 001D7490  3F E0 80 49 */	lis r31, lbl_80491370@ha
    /* 801DB834 001D7494  93 C1 00 18 */	stw r30, 0x18(r1)
    /* 801DB838 001D7498  3B C0 00 00 */	li r30, 0
    /* 801DB83C 001D749C  93 A1 00 14 */	stw r29, 0x14(r1)
    /* 801DB840 001D74A0  3B BF 13 70 */	addi r29, r31, lbl_80491370@l
    /* 801DB844 001D74A4  93 81 00 10 */	stw r28, 0x10(r1)
    /* 801DB848 001D74A8  7C 7C 1B 78 */	mr r28, r3
    /* 801DB84C 001D74AC  98 1D 00 00 */	stb r0, 0(r29)
    /* 801DB850 001D74B0  98 1D 00 08 */	stb r0, 8(r29)
    /* 801DB854 001D74B4  98 1D 00 10 */	stb r0, 0x10(r29)
    /* 801DB858 001D74B8  98 1D 00 18 */	stb r0, 0x18(r29)
    /* 801DB85C 001D74BC  98 1D 00 20 */	stb r0, 0x20(r29)
    /* 801DB860 001D74C0  98 1D 00 28 */	stb r0, 0x28(r29)
    /* 801DB864 001D74C4  98 1D 00 30 */	stb r0, 0x30(r29)
    /* 801DB868 001D74C8  98 1D 00 38 */	stb r0, 0x38(r29)
    /* 801DB86C 001D74CC  98 1D 00 40 */	stb r0, 0x40(r29)
    /* 801DB870 001D74D0  98 1D 00 48 */	stb r0, 0x48(r29)
    /* 801DB874 001D74D4  98 1D 00 50 */	stb r0, 0x50(r29)
    /* 801DB878 001D74D8  98 1D 00 58 */	stb r0, 0x58(r29)
    /* 801DB87C 001D74DC  98 1D 00 60 */	stb r0, 0x60(r29)
    /* 801DB880 001D74E0  98 1D 00 68 */	stb r0, 0x68(r29)
    /* 801DB884 001D74E4  98 1D 00 70 */	stb r0, 0x70(r29)
    /* 801DB888 001D74E8  98 1D 00 78 */	stb r0, 0x78(r29)
    /* 801DB88C 001D74EC  98 1D 00 80 */	stb r0, 0x80(r29)
    /* 801DB890 001D74F0  98 1D 00 88 */	stb r0, 0x88(r29)
    /* 801DB894 001D74F4  98 1D 00 90 */	stb r0, 0x90(r29)
    /* 801DB898 001D74F8  98 1D 00 98 */	stb r0, 0x98(r29)
    /* 801DB89C 001D74FC  98 1D 00 A0 */	stb r0, 0xa0(r29)
    /* 801DB8A0 001D7500  98 1D 00 A8 */	stb r0, 0xa8(r29)
    /* 801DB8A4 001D7504  98 1D 00 B0 */	stb r0, 0xb0(r29)
    /* 801DB8A8 001D7508  98 1D 00 B8 */	stb r0, 0xb8(r29)
    /* 801DB8AC 001D750C  98 1D 00 C0 */	stb r0, 0xc0(r29)
    /* 801DB8B0 001D7510  98 1D 00 C8 */	stb r0, 0xc8(r29)
    /* 801DB8B4 001D7514  98 1D 00 D0 */	stb r0, 0xd0(r29)
    /* 801DB8B8 001D7518  98 1D 00 D8 */	stb r0, 0xd8(r29)
    /* 801DB8BC 001D751C  98 1D 00 E0 */	stb r0, 0xe0(r29)
    /* 801DB8C0 001D7520  98 1D 00 E8 */	stb r0, 0xe8(r29)
    /* 801DB8C4 001D7524  98 1D 00 F0 */	stb r0, 0xf0(r29)
    /* 801DB8C8 001D7528  93 CD A0 48 */	stw r30, 0xA048(r13)
    /* 801DB8CC 001D752C  98 1D 00 F8 */	stb r0, 0xf8(r29)
    /* 801DB8D0 001D7530  48 08 EF 8D */	bl LCEnable
    /* 801DB8D4 001D7534  57 80 4B EC */	rlwinm r0, r28, 9, 0xf, 0x16
    /* 801DB8D8 001D7538  3C 60 E0 00 */	lis r3, 0xe000
    /* 801DB8DC 001D753C  2C 1C 00 00 */	cmpwi r28, 0
    /* 801DB8E0 001D7540  90 6D A0 3C */	stw r3, 0xA03C(r13)
    /* 801DB8E4 001D7544  90 0D A0 38 */	stw r0, 0xA038(r13)
    /* 801DB8E8 001D7548  41 82 00 1C */	beq lbl_801DB904
    /* 801DB8EC 001D754C  7F 84 E3 78 */	mr r4, r28
    /* 801DB8F0 001D7550  38 60 00 00 */	li r3, 0
    /* 801DB8F4 001D7554  38 A0 00 01 */	li r5, 1
    /* 801DB8F8 001D7558  48 00 00 35 */	bl func_801DB92C
    /* 801DB8FC 001D755C  9B DF 13 70 */	stb r30, 0x1370(r31)
    /* 801DB900 001D7560  9B 9D 00 01 */	stb r28, 1(r29)
    lbl_801DB904:
    /* 801DB904 001D7564  38 00 00 00 */	li r0, 0
    /* 801DB908 001D7568  98 0D A0 44 */	stb r0, 0xA044(r13)
    /* 801DB90C 001D756C  83 E1 00 1C */	lwz r31, 0x1c(r1)
    /* 801DB910 001D7570  83 C1 00 18 */	lwz r30, 0x18(r1)
    /* 801DB914 001D7574  83 A1 00 14 */	lwz r29, 0x14(r1)
    /* 801DB918 001D7578  83 81 00 10 */	lwz r28, 0x10(r1)
    /* 801DB91C 001D757C  80 01 00 24 */	lwz r0, 0x24(r1)
    /* 801DB920 001D7580  7C 08 03 A6 */	mtlr r0
    /* 801DB924 001D7584  38 21 00 20 */	addi r1, r1, 0x20
    /* 801DB928 001D7588  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

//static
void func_801DB92C(u8 p1, u8 p2, u32 p3)
{
    u32 r6 = 0x80000000;
    while (p1--)
        r6 >>= 1;
    while (p2--) {
        lbl_8063F308 = (p3 == 1) ? lbl_8063F308 | r6 : lbl_8063F308 & ~r6;
        r6 >>= 1;
    }
}





}