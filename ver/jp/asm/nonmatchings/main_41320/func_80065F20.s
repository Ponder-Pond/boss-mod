.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80065F20
/* 41320 80065F20 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 41324 80065F24 AFB00010 */  sw        $s0, 0x10($sp)
/* 41328 80065F28 00808021 */  addu      $s0, $a0, $zero
/* 4132C 80065F2C AFB10014 */  sw        $s1, 0x14($sp)
/* 41330 80065F30 00A08821 */  addu      $s1, $a1, $zero
/* 41334 80065F34 AFBF001C */  sw        $ra, 0x1c($sp)
/* 41338 80065F38 0C01ACD0 */  jal       func_8006B340
/* 4133C 80065F3C AFB20018 */   sw       $s2, 0x18($sp)
/* 41340 80065F40 16000003 */  bnez      $s0, .L80065F50
/* 41344 80065F44 00409021 */   addu     $s2, $v0, $zero
/* 41348 80065F48 3C108009 */  lui       $s0, %hi(D_80094640)
/* 4134C 80065F4C 8E104640 */  lw        $s0, %lo(D_80094640)($s0)
.L80065F50:
/* 41350 80065F50 8E020004 */  lw        $v0, 4($s0)
/* 41354 80065F54 1051001C */  beq       $v0, $s1, .L80065FC8
/* 41358 80065F58 00000000 */   nop
/* 4135C 80065F5C 3C028009 */  lui       $v0, %hi(D_80094640)
/* 41360 80065F60 8C424640 */  lw        $v0, %lo(D_80094640)($v0)
/* 41364 80065F64 1202000B */  beq       $s0, $v0, .L80065F94
/* 41368 80065F68 AE110004 */   sw       $s1, 4($s0)
/* 4136C 80065F6C 96030010 */  lhu       $v1, 0x10($s0)
/* 41370 80065F70 24020001 */  addiu     $v0, $zero, 1
/* 41374 80065F74 10620007 */  beq       $v1, $v0, .L80065F94
/* 41378 80065F78 00000000 */   nop
/* 4137C 80065F7C 8E040008 */  lw        $a0, 8($s0)
/* 41380 80065F80 0C019874 */  jal       func_800661D0
/* 41384 80065F84 02002821 */   addu     $a1, $s0, $zero
/* 41388 80065F88 8E040008 */  lw        $a0, 8($s0)
/* 4138C 80065F8C 0C01AC55 */  jal       func_8006B154
/* 41390 80065F90 02002821 */   addu     $a1, $s0, $zero
.L80065F94:
/* 41394 80065F94 3C048009 */  lui       $a0, %hi(D_80094640)
/* 41398 80065F98 8C844640 */  lw        $a0, %lo(D_80094640)($a0)
/* 4139C 80065F9C 3C028009 */  lui       $v0, %hi(D_80094638)
/* 413A0 80065FA0 8C424638 */  lw        $v0, %lo(D_80094638)($v0)
/* 413A4 80065FA4 8C830004 */  lw        $v1, 4($a0)
/* 413A8 80065FA8 8C420004 */  lw        $v0, 4($v0)
/* 413AC 80065FAC 0062182A */  slt       $v1, $v1, $v0
/* 413B0 80065FB0 10600005 */  beqz      $v1, .L80065FC8
/* 413B4 80065FB4 24020002 */   addiu    $v0, $zero, 2
/* 413B8 80065FB8 A4820010 */  sh        $v0, 0x10($a0)
/* 413BC 80065FBC 3C048009 */  lui       $a0, %hi(D_80094638)
/* 413C0 80065FC0 0C01AC13 */  jal       func_8006B04C
/* 413C4 80065FC4 24844638 */   addiu    $a0, $a0, %lo(D_80094638)
.L80065FC8:
/* 413C8 80065FC8 0C01ACEC */  jal       func_8006B3B0
/* 413CC 80065FCC 02402021 */   addu     $a0, $s2, $zero
/* 413D0 80065FD0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 413D4 80065FD4 8FB20018 */  lw        $s2, 0x18($sp)
/* 413D8 80065FD8 8FB10014 */  lw        $s1, 0x14($sp)
/* 413DC 80065FDC 8FB00010 */  lw        $s0, 0x10($sp)
/* 413E0 80065FE0 03E00008 */  jr        $ra
/* 413E4 80065FE4 27BD0020 */   addiu    $sp, $sp, 0x20
/* 413E8 80065FE8 00000000 */  nop
/* 413EC 80065FEC 00000000 */  nop