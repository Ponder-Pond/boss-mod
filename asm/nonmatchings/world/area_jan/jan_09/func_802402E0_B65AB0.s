.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802402E0_B65D90
/* B65D90 802402E0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B65D94 802402E4 AFB00010 */  sw        $s0, 0x10($sp)
/* B65D98 802402E8 0080802D */  daddu     $s0, $a0, $zero
/* B65D9C 802402EC AFBF0014 */  sw        $ra, 0x14($sp)
/* B65DA0 802402F0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* B65DA4 802402F4 8E020088 */  lw        $v0, 0x88($s0)
/* B65DA8 802402F8 00621821 */  addu      $v1, $v1, $v0
/* B65DAC 802402FC 04610004 */  bgez      $v1, .L80240310
/* B65DB0 80240300 AE0300A8 */   sw       $v1, 0xa8($s0)
/* B65DB4 80240304 3C020002 */  lui       $v0, 2
/* B65DB8 80240308 080900C8 */  j         .L80240320
/* B65DBC 8024030C 00621021 */   addu     $v0, $v1, $v0
.L80240310:
/* B65DC0 80240310 3C040002 */  lui       $a0, 2
/* B65DC4 80240314 0083102A */  slt       $v0, $a0, $v1
/* B65DC8 80240318 10400002 */  beqz      $v0, .L80240324
/* B65DCC 8024031C 00641023 */   subu     $v0, $v1, $a0
.L80240320:
/* B65DD0 80240320 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240324:
/* B65DD4 80240324 8E0300AC */  lw        $v1, 0xac($s0)
/* B65DD8 80240328 8E02008C */  lw        $v0, 0x8c($s0)
/* B65DDC 8024032C 00621821 */  addu      $v1, $v1, $v0
/* B65DE0 80240330 04610004 */  bgez      $v1, .L80240344
/* B65DE4 80240334 AE0300AC */   sw       $v1, 0xac($s0)
/* B65DE8 80240338 3C020002 */  lui       $v0, 2
/* B65DEC 8024033C 080900D5 */  j         .L80240354
/* B65DF0 80240340 00621021 */   addu     $v0, $v1, $v0
.L80240344:
/* B65DF4 80240344 3C040002 */  lui       $a0, 2
/* B65DF8 80240348 0083102A */  slt       $v0, $a0, $v1
/* B65DFC 8024034C 10400002 */  beqz      $v0, .L80240358
/* B65E00 80240350 00641023 */   subu     $v0, $v1, $a0
.L80240354:
/* B65E04 80240354 AE0200AC */  sw        $v0, 0xac($s0)
.L80240358:
/* B65E08 80240358 8E0300B0 */  lw        $v1, 0xb0($s0)
/* B65E0C 8024035C 8E020090 */  lw        $v0, 0x90($s0)
/* B65E10 80240360 00621821 */  addu      $v1, $v1, $v0
/* B65E14 80240364 04610004 */  bgez      $v1, .L80240378
/* B65E18 80240368 AE0300B0 */   sw       $v1, 0xb0($s0)
/* B65E1C 8024036C 3C020002 */  lui       $v0, 2
/* B65E20 80240370 080900E2 */  j         .L80240388
/* B65E24 80240374 00621021 */   addu     $v0, $v1, $v0
.L80240378:
/* B65E28 80240378 3C040002 */  lui       $a0, 2
/* B65E2C 8024037C 0083102A */  slt       $v0, $a0, $v1
/* B65E30 80240380 10400002 */  beqz      $v0, .L8024038C
/* B65E34 80240384 00641023 */   subu     $v0, $v1, $a0
.L80240388:
/* B65E38 80240388 AE0200B0 */  sw        $v0, 0xb0($s0)
.L8024038C:
/* B65E3C 8024038C 8E0300B4 */  lw        $v1, 0xb4($s0)
/* B65E40 80240390 8E020094 */  lw        $v0, 0x94($s0)
/* B65E44 80240394 00621821 */  addu      $v1, $v1, $v0
/* B65E48 80240398 04610004 */  bgez      $v1, .L802403AC
/* B65E4C 8024039C AE0300B4 */   sw       $v1, 0xb4($s0)
/* B65E50 802403A0 3C020002 */  lui       $v0, 2
/* B65E54 802403A4 080900EF */  j         .L802403BC
/* B65E58 802403A8 00621021 */   addu     $v0, $v1, $v0
.L802403AC:
/* B65E5C 802403AC 3C040002 */  lui       $a0, 2
/* B65E60 802403B0 0083102A */  slt       $v0, $a0, $v1
/* B65E64 802403B4 10400002 */  beqz      $v0, .L802403C0
/* B65E68 802403B8 00641023 */   subu     $v0, $v1, $a0
.L802403BC:
/* B65E6C 802403BC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802403C0:
/* B65E70 802403C0 8E040084 */  lw        $a0, 0x84($s0)
/* B65E74 802403C4 0C046F07 */  jal       set_main_pan_u
/* B65E78 802403C8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* B65E7C 802403CC 8E040084 */  lw        $a0, 0x84($s0)
/* B65E80 802403D0 0C046F0D */  jal       set_main_pan_v
/* B65E84 802403D4 8E0500AC */   lw       $a1, 0xac($s0)
/* B65E88 802403D8 8E040084 */  lw        $a0, 0x84($s0)
/* B65E8C 802403DC 0C046F13 */  jal       set_aux_pan_u
/* B65E90 802403E0 8E0500B0 */   lw       $a1, 0xb0($s0)
/* B65E94 802403E4 8E040084 */  lw        $a0, 0x84($s0)
/* B65E98 802403E8 0C046F19 */  jal       set_aux_pan_v
/* B65E9C 802403EC 8E0500B4 */   lw       $a1, 0xb4($s0)
/* B65EA0 802403F0 8FBF0014 */  lw        $ra, 0x14($sp)
/* B65EA4 802403F4 8FB00010 */  lw        $s0, 0x10($sp)
/* B65EA8 802403F8 0000102D */  daddu     $v0, $zero, $zero
/* B65EAC 802403FC 03E00008 */  jr        $ra
/* B65EB0 80240400 27BD0018 */   addiu    $sp, $sp, 0x18