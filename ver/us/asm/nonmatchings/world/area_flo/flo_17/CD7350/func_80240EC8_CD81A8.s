.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240EC8_CD81A8
/* CD81A8 80240EC8 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* CD81AC 80240ECC AFB20030 */  sw        $s2, 0x30($sp)
/* CD81B0 80240ED0 0080902D */  daddu     $s2, $a0, $zero
/* CD81B4 80240ED4 AFBF0038 */  sw        $ra, 0x38($sp)
/* CD81B8 80240ED8 AFB30034 */  sw        $s3, 0x34($sp)
/* CD81BC 80240EDC AFB1002C */  sw        $s1, 0x2c($sp)
/* CD81C0 80240EE0 AFB00028 */  sw        $s0, 0x28($sp)
/* CD81C4 80240EE4 F7B60048 */  sdc1      $f22, 0x48($sp)
/* CD81C8 80240EE8 F7B40040 */  sdc1      $f20, 0x40($sp)
/* CD81CC 80240EEC 8E510148 */  lw        $s1, 0x148($s2)
/* CD81D0 80240EF0 86240008 */  lh        $a0, 8($s1)
/* CD81D4 80240EF4 0C00EABB */  jal       get_npc_unsafe
/* CD81D8 80240EF8 00A0982D */   daddu    $s3, $a1, $zero
/* CD81DC 80240EFC 0040802D */  daddu     $s0, $v0, $zero
/* CD81E0 80240F00 0200202D */  daddu     $a0, $s0, $zero
/* CD81E4 80240F04 C6220088 */  lwc1      $f2, 0x88($s1)
/* CD81E8 80240F08 468010A0 */  cvt.s.w   $f2, $f2
/* CD81EC 80240F0C 460010A1 */  cvt.d.s   $f2, $f2
/* CD81F0 80240F10 C604001C */  lwc1      $f4, 0x1c($s0)
/* CD81F4 80240F14 C6000014 */  lwc1      $f0, 0x14($s0)
/* CD81F8 80240F18 8E050018 */  lw        $a1, 0x18($s0)
/* CD81FC 80240F1C 46002100 */  add.s     $f4, $f4, $f0
/* CD8200 80240F20 8E06000C */  lw        $a2, 0xc($s0)
/* CD8204 80240F24 C6200078 */  lwc1      $f0, 0x78($s1)
/* CD8208 80240F28 46800020 */  cvt.s.w   $f0, $f0
/* CD820C 80240F2C E604001C */  swc1      $f4, 0x1c($s0)
/* CD8210 80240F30 3C014059 */  lui       $at, 0x4059
/* CD8214 80240F34 44812800 */  mtc1      $at, $f5
/* CD8218 80240F38 44802000 */  mtc1      $zero, $f4
/* CD821C 80240F3C 46000021 */  cvt.d.s   $f0, $f0
/* CD8220 80240F40 46240003 */  div.d     $f0, $f0, $f4
/* CD8224 80240F44 46200520 */  cvt.s.d   $f20, $f0
/* CD8228 80240F48 46241083 */  div.d     $f2, $f2, $f4
/* CD822C 80240F4C 0C00EA95 */  jal       npc_move_heading
/* CD8230 80240F50 462015A0 */   cvt.s.d  $f22, $f2
/* CD8234 80240F54 C604001C */  lwc1      $f4, 0x1c($s0)
/* CD8238 80240F58 44801000 */  mtc1      $zero, $f2
/* CD823C 80240F5C 44801800 */  mtc1      $zero, $f3
/* CD8240 80240F60 46002021 */  cvt.d.s   $f0, $f4
/* CD8244 80240F64 4620103E */  c.le.d    $f2, $f0
/* CD8248 80240F68 00000000 */  nop
/* CD824C 80240F6C 45000030 */  bc1f      .L80241030
/* CD8250 80240F70 00000000 */   nop
/* CD8254 80240F74 C600003C */  lwc1      $f0, 0x3c($s0)
/* CD8258 80240F78 46040000 */  add.s     $f0, $f0, $f4
/* CD825C 80240F7C E600003C */  swc1      $f0, 0x3c($s0)
/* CD8260 80240F80 8E2200CC */  lw        $v0, 0xcc($s1)
/* CD8264 80240F84 8C420024 */  lw        $v0, 0x24($v0)
/* CD8268 80240F88 AE020028 */  sw        $v0, 0x28($s0)
/* CD826C 80240F8C A2200007 */  sb        $zero, 7($s1)
/* CD8270 80240F90 8E020000 */  lw        $v0, ($s0)
/* CD8274 80240F94 30420008 */  andi      $v0, $v0, 8
/* CD8278 80240F98 14400011 */  bnez      $v0, .L80240FE0
/* CD827C 80240F9C 0000102D */   daddu    $v0, $zero, $zero
/* CD8280 80240FA0 27A50018 */  addiu     $a1, $sp, 0x18
/* CD8284 80240FA4 27A6001C */  addiu     $a2, $sp, 0x1c
/* CD8288 80240FA8 C6000038 */  lwc1      $f0, 0x38($s0)
/* CD828C 80240FAC C602003C */  lwc1      $f2, 0x3c($s0)
/* CD8290 80240FB0 C6040040 */  lwc1      $f4, 0x40($s0)
/* CD8294 80240FB4 3C01447A */  lui       $at, 0x447a
/* CD8298 80240FB8 44813000 */  mtc1      $at, $f6
/* CD829C 80240FBC 27A20024 */  addiu     $v0, $sp, 0x24
/* CD82A0 80240FC0 E7A00018 */  swc1      $f0, 0x18($sp)
/* CD82A4 80240FC4 E7A2001C */  swc1      $f2, 0x1c($sp)
/* CD82A8 80240FC8 E7A40020 */  swc1      $f4, 0x20($sp)
/* CD82AC 80240FCC E7A60024 */  swc1      $f6, 0x24($sp)
/* CD82B0 80240FD0 AFA20010 */  sw        $v0, 0x10($sp)
/* CD82B4 80240FD4 8E040080 */  lw        $a0, 0x80($s0)
/* CD82B8 80240FD8 0C0372DF */  jal       func_800DCB7C
/* CD82BC 80240FDC 27A70020 */   addiu    $a3, $sp, 0x20
.L80240FE0:
/* CD82C0 80240FE0 1040000B */  beqz      $v0, .L80241010
/* CD82C4 80240FE4 00000000 */   nop
/* CD82C8 80240FE8 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* CD82CC 80240FEC 46140080 */  add.s     $f2, $f0, $f20
/* CD82D0 80240FF0 C600003C */  lwc1      $f0, 0x3c($s0)
/* CD82D4 80240FF4 4600103E */  c.le.s    $f2, $f0
/* CD82D8 80240FF8 00000000 */  nop
/* CD82DC 80240FFC 4500008D */  bc1f      .L80241234
/* CD82E0 80241000 00000000 */   nop
/* CD82E4 80241004 E602003C */  swc1      $f2, 0x3c($s0)
/* CD82E8 80241008 0809048D */  j         .L80241234
/* CD82EC 8024100C AE400070 */   sw       $zero, 0x70($s2)
.L80241010:
/* CD82F0 80241010 C602003C */  lwc1      $f2, 0x3c($s0)
/* CD82F4 80241014 C6000064 */  lwc1      $f0, 0x64($s0)
/* CD82F8 80241018 4602003E */  c.le.s    $f0, $f2
/* CD82FC 8024101C 00000000 */  nop
/* CD8300 80241020 45030084 */  bc1tl     .L80241234
/* CD8304 80241024 AE400070 */   sw       $zero, 0x70($s2)
/* CD8308 80241028 0809048D */  j         .L80241234
/* CD830C 8024102C 00000000 */   nop
.L80241030:
/* CD8310 80241030 4622003C */  c.lt.d    $f0, $f2
/* CD8314 80241034 00000000 */  nop
/* CD8318 80241038 4500007E */  bc1f      .L80241234
/* CD831C 8024103C 00000000 */   nop
/* CD8320 80241040 9602008E */  lhu       $v0, 0x8e($s0)
/* CD8324 80241044 24420001 */  addiu     $v0, $v0, 1
/* CD8328 80241048 A602008E */  sh        $v0, 0x8e($s0)
/* CD832C 8024104C 00021400 */  sll       $v0, $v0, 0x10
/* CD8330 80241050 8E630020 */  lw        $v1, 0x20($s3)
/* CD8334 80241054 00021403 */  sra       $v0, $v0, 0x10
/* CD8338 80241058 0043102A */  slt       $v0, $v0, $v1
/* CD833C 8024105C 14400026 */  bnez      $v0, .L802410F8
/* CD8340 80241060 00000000 */   nop
/* CD8344 80241064 C60C0038 */  lwc1      $f12, 0x38($s0)
/* CD8348 80241068 C60E0040 */  lwc1      $f14, 0x40($s0)
/* CD834C 8024106C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* CD8350 80241070 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* CD8354 80241074 A600008E */  sh        $zero, 0x8e($s0)
/* CD8358 80241078 8C460028 */  lw        $a2, 0x28($v0)
/* CD835C 8024107C 0C00A720 */  jal       atan2
/* CD8360 80241080 8C470030 */   lw       $a3, 0x30($v0)
/* CD8364 80241084 46000506 */  mov.s     $f20, $f0
/* CD8368 80241088 C60C000C */  lwc1      $f12, 0xc($s0)
/* CD836C 8024108C 0C00A70A */  jal       get_clamped_angle_diff
/* CD8370 80241090 4600A386 */   mov.s    $f14, $f20
/* CD8374 80241094 46000086 */  mov.s     $f2, $f0
/* CD8378 80241098 8E62001C */  lw        $v0, 0x1c($s3)
/* CD837C 8024109C 46001005 */  abs.s     $f0, $f2
/* CD8380 802410A0 44822000 */  mtc1      $v0, $f4
/* CD8384 802410A4 00000000 */  nop
/* CD8388 802410A8 46802120 */  cvt.s.w   $f4, $f4
/* CD838C 802410AC 4600203C */  c.lt.s    $f4, $f0
/* CD8390 802410B0 00000000 */  nop
/* CD8394 802410B4 4500000D */  bc1f      .L802410EC
/* CD8398 802410B8 00000000 */   nop
/* CD839C 802410BC 44800000 */  mtc1      $zero, $f0
/* CD83A0 802410C0 C614000C */  lwc1      $f20, 0xc($s0)
/* CD83A4 802410C4 4600103C */  c.lt.s    $f2, $f0
/* CD83A8 802410C8 00000000 */  nop
/* CD83AC 802410CC 45000006 */  bc1f      .L802410E8
/* CD83B0 802410D0 00021023 */   negu     $v0, $v0
/* CD83B4 802410D4 44820000 */  mtc1      $v0, $f0
/* CD83B8 802410D8 00000000 */  nop
/* CD83BC 802410DC 46800020 */  cvt.s.w   $f0, $f0
/* CD83C0 802410E0 0809043B */  j         .L802410EC
/* CD83C4 802410E4 4600A500 */   add.s    $f20, $f20, $f0
.L802410E8:
/* CD83C8 802410E8 4604A500 */  add.s     $f20, $f20, $f4
.L802410EC:
/* CD83CC 802410EC 0C00A6C9 */  jal       clamp_angle
/* CD83D0 802410F0 4600A306 */   mov.s    $f12, $f20
/* CD83D4 802410F4 E600000C */  swc1      $f0, 0xc($s0)
.L802410F8:
/* CD83D8 802410F8 8E020000 */  lw        $v0, ($s0)
/* CD83DC 802410FC 30420008 */  andi      $v0, $v0, 8
/* CD83E0 80241100 1040000A */  beqz      $v0, .L8024112C
/* CD83E4 80241104 27A50018 */   addiu    $a1, $sp, 0x18
/* CD83E8 80241108 C602003C */  lwc1      $f2, 0x3c($s0)
/* CD83EC 8024110C C600001C */  lwc1      $f0, 0x1c($s0)
/* CD83F0 80241110 46001080 */  add.s     $f2, $f2, $f0
/* CD83F4 80241114 4616103C */  c.lt.s    $f2, $f22
/* CD83F8 80241118 00000000 */  nop
/* CD83FC 8024111C 45020045 */  bc1fl     .L80241234
/* CD8400 80241120 E602003C */   swc1     $f2, 0x3c($s0)
/* CD8404 80241124 0809048C */  j         .L80241230
/* CD8408 80241128 E616003C */   swc1     $f22, 0x3c($s0)
.L8024112C:
/* CD840C 8024112C C6000038 */  lwc1      $f0, 0x38($s0)
/* CD8410 80241130 27A6001C */  addiu     $a2, $sp, 0x1c
/* CD8414 80241134 E7A00018 */  swc1      $f0, 0x18($sp)
/* CD8418 80241138 860200A8 */  lh        $v0, 0xa8($s0)
/* CD841C 8024113C C600001C */  lwc1      $f0, 0x1c($s0)
/* CD8420 80241140 C604003C */  lwc1      $f4, 0x3c($s0)
/* CD8424 80241144 44821000 */  mtc1      $v0, $f2
/* CD8428 80241148 00000000 */  nop
/* CD842C 8024114C 468010A0 */  cvt.s.w   $f2, $f2
/* CD8430 80241150 46000005 */  abs.s     $f0, $f0
/* CD8434 80241154 46020000 */  add.s     $f0, $f0, $f2
/* CD8438 80241158 C6060040 */  lwc1      $f6, 0x40($s0)
/* CD843C 8024115C 27A20024 */  addiu     $v0, $sp, 0x24
/* CD8440 80241160 46022100 */  add.s     $f4, $f4, $f2
/* CD8444 80241164 3C014024 */  lui       $at, 0x4024
/* CD8448 80241168 44811800 */  mtc1      $at, $f3
/* CD844C 8024116C 44801000 */  mtc1      $zero, $f2
/* CD8450 80241170 46000021 */  cvt.d.s   $f0, $f0
/* CD8454 80241174 46220000 */  add.d     $f0, $f0, $f2
/* CD8458 80241178 E7A60020 */  swc1      $f6, 0x20($sp)
/* CD845C 8024117C E7A4001C */  swc1      $f4, 0x1c($sp)
/* CD8460 80241180 46200020 */  cvt.s.d   $f0, $f0
/* CD8464 80241184 E7A00024 */  swc1      $f0, 0x24($sp)
/* CD8468 80241188 AFA20010 */  sw        $v0, 0x10($sp)
/* CD846C 8024118C 8E040080 */  lw        $a0, 0x80($s0)
/* CD8470 80241190 0C0372DF */  jal       func_800DCB7C
/* CD8474 80241194 27A70020 */   addiu    $a3, $sp, 0x20
/* CD8478 80241198 10400015 */  beqz      $v0, .L802411F0
/* CD847C 8024119C 00000000 */   nop
/* CD8480 802411A0 860200A8 */  lh        $v0, 0xa8($s0)
/* CD8484 802411A4 C604001C */  lwc1      $f4, 0x1c($s0)
/* CD8488 802411A8 44820000 */  mtc1      $v0, $f0
/* CD848C 802411AC 00000000 */  nop
/* CD8490 802411B0 46800020 */  cvt.s.w   $f0, $f0
/* CD8494 802411B4 46002085 */  abs.s     $f2, $f4
/* CD8498 802411B8 46020000 */  add.s     $f0, $f0, $f2
/* CD849C 802411BC C7A20024 */  lwc1      $f2, 0x24($sp)
/* CD84A0 802411C0 4600103E */  c.le.s    $f2, $f0
/* CD84A4 802411C4 00000000 */  nop
/* CD84A8 802411C8 45000005 */  bc1f      .L802411E0
/* CD84AC 802411CC 00000000 */   nop
/* CD84B0 802411D0 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* CD84B4 802411D4 AE00001C */  sw        $zero, 0x1c($s0)
/* CD84B8 802411D8 0809048D */  j         .L80241234
/* CD84BC 802411DC E600003C */   swc1     $f0, 0x3c($s0)
.L802411E0:
/* CD84C0 802411E0 C600003C */  lwc1      $f0, 0x3c($s0)
/* CD84C4 802411E4 46040000 */  add.s     $f0, $f0, $f4
/* CD84C8 802411E8 0809048D */  j         .L80241234
/* CD84CC 802411EC E600003C */   swc1     $f0, 0x3c($s0)
.L802411F0:
/* CD84D0 802411F0 C606003C */  lwc1      $f6, 0x3c($s0)
/* CD84D4 802411F4 860200A8 */  lh        $v0, 0xa8($s0)
/* CD84D8 802411F8 46163081 */  sub.s     $f2, $f6, $f22
/* CD84DC 802411FC 44820000 */  mtc1      $v0, $f0
/* CD84E0 80241200 00000000 */  nop
/* CD84E4 80241204 46800020 */  cvt.s.w   $f0, $f0
/* CD84E8 80241208 46001080 */  add.s     $f2, $f2, $f0
/* CD84EC 8024120C C604001C */  lwc1      $f4, 0x1c($s0)
/* CD84F0 80241210 46002005 */  abs.s     $f0, $f4
/* CD84F4 80241214 4602003C */  c.lt.s    $f0, $f2
/* CD84F8 80241218 00000000 */  nop
/* CD84FC 8024121C 45020005 */  bc1fl     .L80241234
/* CD8500 80241220 AE00001C */   sw       $zero, 0x1c($s0)
/* CD8504 80241224 46043000 */  add.s     $f0, $f6, $f4
/* CD8508 80241228 0809048D */  j         .L80241234
/* CD850C 8024122C E600003C */   swc1     $f0, 0x3c($s0)
.L80241230:
/* CD8510 80241230 AE00001C */  sw        $zero, 0x1c($s0)
.L80241234:
/* CD8514 80241234 8FBF0038 */  lw        $ra, 0x38($sp)
/* CD8518 80241238 8FB30034 */  lw        $s3, 0x34($sp)
/* CD851C 8024123C 8FB20030 */  lw        $s2, 0x30($sp)
/* CD8520 80241240 8FB1002C */  lw        $s1, 0x2c($sp)
/* CD8524 80241244 8FB00028 */  lw        $s0, 0x28($sp)
/* CD8528 80241248 D7B60048 */  ldc1      $f22, 0x48($sp)
/* CD852C 8024124C D7B40040 */  ldc1      $f20, 0x40($sp)
/* CD8530 80241250 03E00008 */  jr        $ra
/* CD8534 80241254 27BD0050 */   addiu    $sp, $sp, 0x50