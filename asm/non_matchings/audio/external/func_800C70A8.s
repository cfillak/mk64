.section .late_rodata

glabel D_800F37B8
.float 3500.0

glabel jpt_800F37BC
.word L800C718C, L800C7198, L800C71B0, L800C71BC
.word L800C71A4, L800C71F4, L800C71F4, L800C71C8
.word L800C71F4, L800C71F4, L800C71F4, L800C71F4
.word L800C71EC, L800C71F4, L800C71D4, L800C71E0

glabel jpt_800F37FC
.word L800C7238, L800C7244, L800C725C, L800C7268
.word L800C7250, L800C7294, L800C7294, L800C7274
.word L800C7294, L800C7294, L800C7294, L800C7294
.word L800C7290, L800C7294, L800C7280, L800C7288

glabel jpt_800F383C
.word L800C72F8, L800C72B8, L800C742C, L800C73B8
.word L800C7378, L800C742C, L800C7338, L800C7428
.word L800C742C, L800C7418, L800C7420

glabel jpt_800F3868
.word L800C7494, L800C7454, L800C75C8, L800C7554
.word L800C7514, L800C75C8, L800C74D4, L800C75C4
.word L800C75C8, L800C75B4, L800C75BC

.section .text

glabel func_800C70A8
/* 0C7CA8 800C70A8 27ADFFF0 */  addiu $t5, $sp, -0x10
/* 0C7CAC 800C70AC 308500FF */  andi  $a1, $a0, 0xff
/* 0C7CB0 800C70B0 3C0E800F */  lui   $t6, %hi(D_800EA0EC)
/* 0C7CB4 800C70B4 ADA40010 */  sw    $a0, 0x10($t5)
/* 0C7CB8 800C70B8 01C57021 */  addu  $t6, $t6, $a1
/* 0C7CBC 800C70BC 91CEA0EC */  lbu   $t6, %lo(D_800EA0EC)($t6)
/* 0C7CC0 800C70C0 3C0F800F */  lui   $t7, %hi(D_800E9E74) # $t7, 0x800f
/* 0C7CC4 800C70C4 25EF9E74 */  addiu $t7, %lo(D_800E9E74) # addiu $t7, $t7, -0x618c
/* 0C7CC8 800C70C8 15C0017A */  bnez  $t6, .L800C76B4
/* 0C7CCC 800C70CC 00051880 */   sll   $v1, $a1, 2
/* 0C7CD0 800C70D0 006F1021 */  addu  $v0, $v1, $t7
/* 0C7CD4 800C70D4 AC400000 */  sw    $zero, ($v0)
/* 0C7CD8 800C70D8 3C01800F */  lui   $at, %hi(D_800F37B8) # $at, 0x800f
/* 0C7CDC 800C70DC C42437B8 */  lwc1  $f4, %lo(D_800F37B8)($at)
/* 0C7CE0 800C70E0 3C01800F */  lui   $at, %hi(D_800E9E54)
/* 0C7CE4 800C70E4 00230821 */  addu  $at, $at, $v1
/* 0C7CE8 800C70E8 C4269E54 */  lwc1  $f6, %lo(D_800E9E54)($at)
/* 0C7CEC 800C70EC 0005C0C0 */  sll   $t8, $a1, 3
/* 0C7CF0 800C70F0 0305C023 */  subu  $t8, $t8, $a1
/* 0C7CF4 800C70F4 4606203C */  c.lt.s $f4, $f6
/* 0C7CF8 800C70F8 0018C100 */  sll   $t8, $t8, 4
/* 0C7CFC 800C70FC 0305C023 */  subu  $t8, $t8, $a1
/* 0C7D00 800C7100 0018C080 */  sll   $t8, $t8, 2
/* 0C7D04 800C7104 45010009 */  bc1t  .L800C712C
/* 0C7D08 800C7108 0305C023 */   subu  $t8, $t8, $a1
/* 0C7D0C 800C710C 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 0C7D10 800C7110 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 0C7D14 800C7114 0018C0C0 */  sll   $t8, $t8, 3
/* 0C7D18 800C7118 03191821 */  addu  $v1, $t8, $t9
/* 0C7D1C 800C711C 8C6400BC */  lw    $a0, 0xbc($v1)
/* 0C7D20 800C7120 24010010 */  li    $at, 16
/* 0C7D24 800C7124 30890010 */  andi  $t1, $a0, 0x10
/* 0C7D28 800C7128 15210032 */  bne   $t1, $at, .L800C71F4
.L800C712C:
/* 0C7D2C 800C712C 000560C0 */   sll   $t4, $a1, 3
/* 0C7D30 800C7130 01856023 */  subu  $t4, $t4, $a1
/* 0C7D34 800C7134 000C6100 */  sll   $t4, $t4, 4
/* 0C7D38 800C7138 01856023 */  subu  $t4, $t4, $a1
/* 0C7D3C 800C713C 000C6080 */  sll   $t4, $t4, 2
/* 0C7D40 800C7140 01856023 */  subu  $t4, $t4, $a1
/* 0C7D44 800C7144 3C0E800F */  lui   $t6, %hi(gPlayers) # $t6, 0x800f
/* 0C7D48 800C7148 25CE6990 */  addiu $t6, %lo(gPlayers) # addiu $t6, $t6, 0x6990
/* 0C7D4C 800C714C 000C60C0 */  sll   $t4, $t4, 3
/* 0C7D50 800C7150 018E1821 */  addu  $v1, $t4, $t6
/* 0C7D54 800C7154 906F01D4 */  lbu   $t7, 0x1d4($v1)
/* 0C7D58 800C7158 8C6400BC */  lw    $a0, 0xbc($v1)
/* 0C7D5C 800C715C 240B0001 */  li    $t3, 1
/* 0C7D60 800C7160 25F8FFFE */  addiu $t8, $t7, -2
/* 0C7D64 800C7164 2F010010 */  sltiu $at, $t8, 0x10
/* 0C7D68 800C7168 AC4B0000 */  sw    $t3, ($v0)
/* 0C7D6C 800C716C 10200021 */  beqz  $at, .L800C71F4
/* 0C7D70 800C7170 30890010 */   andi  $t1, $a0, 0x10
/* 0C7D74 800C7174 0018C080 */  sll   $t8, $t8, 2
/* 0C7D78 800C7178 3C01800F */  lui   $at, %hi(jpt_800F37BC)
/* 0C7D7C 800C717C 00380821 */  addu  $at, $at, $t8
/* 0C7D80 800C7180 8C3837BC */  lw    $t8, %lo(jpt_800F37BC)($at)
/* 0C7D84 800C7184 03000008 */  jr    $t8
/* 0C7D88 800C7188 00000000 */   nop   
glabel L800C718C
/* 0C7D8C 800C718C 2419000D */  li    $t9, 13
/* 0C7D90 800C7190 10000018 */  b     .L800C71F4
/* 0C7D94 800C7194 AC590000 */   sw    $t9, ($v0)
glabel L800C7198
/* 0C7D98 800C7198 240B000E */  li    $t3, 14
/* 0C7D9C 800C719C 10000015 */  b     .L800C71F4
/* 0C7DA0 800C71A0 AC4B0000 */   sw    $t3, ($v0)
glabel L800C71A4
/* 0C7DA4 800C71A4 240C0011 */  li    $t4, 17
/* 0C7DA8 800C71A8 10000012 */  b     .L800C71F4
/* 0C7DAC 800C71AC AC4C0000 */   sw    $t4, ($v0)
glabel L800C71B0
/* 0C7DB0 800C71B0 240E000F */  li    $t6, 15
/* 0C7DB4 800C71B4 1000000F */  b     .L800C71F4
/* 0C7DB8 800C71B8 AC4E0000 */   sw    $t6, ($v0)
glabel L800C71BC
/* 0C7DBC 800C71BC 240F0010 */  li    $t7, 16
/* 0C7DC0 800C71C0 1000000C */  b     .L800C71F4
/* 0C7DC4 800C71C4 AC4F0000 */   sw    $t7, ($v0)
glabel L800C71C8
/* 0C7DC8 800C71C8 24180014 */  li    $t8, 20
/* 0C7DCC 800C71CC 10000009 */  b     .L800C71F4
/* 0C7DD0 800C71D0 AC580000 */   sw    $t8, ($v0)
glabel L800C71D4
/* 0C7DD4 800C71D4 24070019 */  li    $a3, 25
/* 0C7DD8 800C71D8 10000006 */  b     .L800C71F4
/* 0C7DDC 800C71DC AC470000 */   sw    $a3, ($v0)
glabel L800C71E0
/* 0C7DE0 800C71E0 2406001A */  li    $a2, 26
/* 0C7DE4 800C71E4 10000003 */  b     .L800C71F4
/* 0C7DE8 800C71E8 AC460000 */   sw    $a2, ($v0)
glabel L800C71EC
/* 0C7DEC 800C71EC 2408001B */  li    $t0, 27
/* 0C7DF0 800C71F0 AC480000 */  sw    $t0, ($v0)
.L800C71F4:
glabel L800C71F4
/* 0C7DF4 800C71F4 24010010 */  li    $at, 16
/* 0C7DF8 800C71F8 2406001A */  li    $a2, 26
/* 0C7DFC 800C71FC 24070019 */  li    $a3, 25
/* 0C7E00 800C7200 2408001B */  li    $t0, 27
/* 0C7E04 800C7204 15210023 */  bne   $t1, $at, .L800C7294
/* 0C7E08 800C7208 906A01D4 */   lbu   $t2, 0x1d4($v1)
/* 0C7E0C 800C720C 254BFFFE */  addiu $t3, $t2, -2
/* 0C7E10 800C7210 24190002 */  li    $t9, 2
/* 0C7E14 800C7214 2D610010 */  sltiu $at, $t3, 0x10
/* 0C7E18 800C7218 1020001E */  beqz  $at, .L800C7294
/* 0C7E1C 800C721C AC590000 */   sw    $t9, ($v0)
/* 0C7E20 800C7220 000B5880 */  sll   $t3, $t3, 2
/* 0C7E24 800C7224 3C01800F */  lui   $at, %hi(jpt_800F37FC)
/* 0C7E28 800C7228 002B0821 */  addu  $at, $at, $t3
/* 0C7E2C 800C722C 8C2B37FC */  lw    $t3, %lo(jpt_800F37FC)($at)
/* 0C7E30 800C7230 01600008 */  jr    $t3
/* 0C7E34 800C7234 00000000 */   nop   
glabel L800C7238
/* 0C7E38 800C7238 240C000D */  li    $t4, 13
/* 0C7E3C 800C723C 10000015 */  b     .L800C7294
/* 0C7E40 800C7240 AC4C0000 */   sw    $t4, ($v0)
glabel L800C7244
/* 0C7E44 800C7244 240E000E */  li    $t6, 14
/* 0C7E48 800C7248 10000012 */  b     .L800C7294
/* 0C7E4C 800C724C AC4E0000 */   sw    $t6, ($v0)
glabel L800C7250
/* 0C7E50 800C7250 240F0011 */  li    $t7, 17
/* 0C7E54 800C7254 1000000F */  b     .L800C7294
/* 0C7E58 800C7258 AC4F0000 */   sw    $t7, ($v0)
glabel L800C725C
/* 0C7E5C 800C725C 2418000F */  li    $t8, 15
/* 0C7E60 800C7260 1000000C */  b     .L800C7294
/* 0C7E64 800C7264 AC580000 */   sw    $t8, ($v0)
glabel L800C7268
/* 0C7E68 800C7268 24190010 */  li    $t9, 16
/* 0C7E6C 800C726C 10000009 */  b     .L800C7294
/* 0C7E70 800C7270 AC590000 */   sw    $t9, ($v0)
glabel L800C7274
/* 0C7E74 800C7274 240B0014 */  li    $t3, 20
/* 0C7E78 800C7278 10000006 */  b     .L800C7294
/* 0C7E7C 800C727C AC4B0000 */   sw    $t3, ($v0)
glabel L800C7280
/* 0C7E80 800C7280 10000004 */  b     .L800C7294
/* 0C7E84 800C7284 AC470000 */   sw    $a3, ($v0)
glabel L800C7288
/* 0C7E88 800C7288 10000002 */  b     .L800C7294
/* 0C7E8C 800C728C AC460000 */   sw    $a2, ($v0)
glabel L800C7290
/* 0C7E90 800C7290 AC480000 */  sw    $t0, ($v0)
.L800C7294:
glabel L800C7294
/* 0C7E94 800C7294 254CFFF9 */  addiu $t4, $t2, -7
/* 0C7E98 800C7298 2D81000B */  sltiu $at, $t4, 0xb
/* 0C7E9C 800C729C 10200063 */  beqz  $at, .L800C742C
/* 0C7EA0 800C72A0 000C6080 */   sll   $t4, $t4, 2
/* 0C7EA4 800C72A4 3C01800F */  lui   $at, %hi(jpt_800F383C)
/* 0C7EA8 800C72A8 002C0821 */  addu  $at, $at, $t4
/* 0C7EAC 800C72AC 8C2C383C */  lw    $t4, %lo(jpt_800F383C)($at)
/* 0C7EB0 800C72B0 01800008 */  jr    $t4
/* 0C7EB4 800C72B4 00000000 */   nop   
glabel L800C72B8
/* 0C7EB8 800C72B8 8C4E0000 */  lw    $t6, ($v0)
/* 0C7EBC 800C72BC 24010006 */  li    $at, 6
/* 0C7EC0 800C72C0 240F0004 */  li    $t7, 4
/* 0C7EC4 800C72C4 15C10003 */  bne   $t6, $at, .L800C72D4
/* 0C7EC8 800C72C8 3C18800F */   lui   $t8, %hi(D_800EA1C0) # $t8, 0x800f
/* 0C7ECC 800C72CC 10000057 */  b     .L800C742C
/* 0C7ED0 800C72D0 AC4F0000 */   sw    $t7, ($v0)
.L800C72D4:
/* 0C7ED4 800C72D4 9318A1C0 */  lbu   $t8, %lo(D_800EA1C0)($t8)
/* 0C7ED8 800C72D8 24190005 */  li    $t9, 5
/* 0C7EDC 800C72DC 240B0004 */  li    $t3, 4
/* 0C7EE0 800C72E0 17000003 */  bnez  $t8, .L800C72F0
/* 0C7EE4 800C72E4 00000000 */   nop   
/* 0C7EE8 800C72E8 10000050 */  b     .L800C742C
/* 0C7EEC 800C72EC AC590000 */   sw    $t9, ($v0)
.L800C72F0:
/* 0C7EF0 800C72F0 1000004E */  b     .L800C742C
/* 0C7EF4 800C72F4 AC4B0000 */   sw    $t3, ($v0)
glabel L800C72F8
/* 0C7EF8 800C72F8 8C4C0000 */  lw    $t4, ($v0)
/* 0C7EFC 800C72FC 2401000C */  li    $at, 12
/* 0C7F00 800C7300 240E000A */  li    $t6, 10
/* 0C7F04 800C7304 15810003 */  bne   $t4, $at, .L800C7314
/* 0C7F08 800C7308 3C0F800F */   lui   $t7, %hi(D_800EA1C0) # $t7, 0x800f
/* 0C7F0C 800C730C 10000047 */  b     .L800C742C
/* 0C7F10 800C7310 AC4E0000 */   sw    $t6, ($v0)
.L800C7314:
/* 0C7F14 800C7314 91EFA1C0 */  lbu   $t7, %lo(D_800EA1C0)($t7)
/* 0C7F18 800C7318 2418000B */  li    $t8, 11
/* 0C7F1C 800C731C 2419000A */  li    $t9, 10
/* 0C7F20 800C7320 15E00003 */  bnez  $t7, .L800C7330
/* 0C7F24 800C7324 00000000 */   nop   
/* 0C7F28 800C7328 10000040 */  b     .L800C742C
/* 0C7F2C 800C732C AC580000 */   sw    $t8, ($v0)
.L800C7330:
/* 0C7F30 800C7330 1000003E */  b     .L800C742C
/* 0C7F34 800C7334 AC590000 */   sw    $t9, ($v0)
glabel L800C7338
/* 0C7F38 800C7338 8C4B0000 */  lw    $t3, ($v0)
/* 0C7F3C 800C733C 24010018 */  li    $at, 24
/* 0C7F40 800C7340 240C0016 */  li    $t4, 22
/* 0C7F44 800C7344 15610003 */  bne   $t3, $at, .L800C7354
/* 0C7F48 800C7348 3C0E800F */   lui   $t6, %hi(D_800EA1C0) # $t6, 0x800f
/* 0C7F4C 800C734C 10000037 */  b     .L800C742C
/* 0C7F50 800C7350 AC4C0000 */   sw    $t4, ($v0)
.L800C7354:
/* 0C7F54 800C7354 91CEA1C0 */  lbu   $t6, %lo(D_800EA1C0)($t6)
/* 0C7F58 800C7358 240F0017 */  li    $t7, 23
/* 0C7F5C 800C735C 24180016 */  li    $t8, 22
/* 0C7F60 800C7360 15C00003 */  bnez  $t6, .L800C7370
/* 0C7F64 800C7364 00000000 */   nop   
/* 0C7F68 800C7368 10000030 */  b     .L800C742C
/* 0C7F6C 800C736C AC4F0000 */   sw    $t7, ($v0)
.L800C7370:
/* 0C7F70 800C7370 1000002E */  b     .L800C742C
/* 0C7F74 800C7374 AC580000 */   sw    $t8, ($v0)
glabel L800C7378
/* 0C7F78 800C7378 8C590000 */  lw    $t9, ($v0)
/* 0C7F7C 800C737C 2401001F */  li    $at, 31
/* 0C7F80 800C7380 240B001D */  li    $t3, 29
/* 0C7F84 800C7384 17210003 */  bne   $t9, $at, .L800C7394
/* 0C7F88 800C7388 3C0C800F */   lui   $t4, %hi(D_800EA1C0) # $t4, 0x800f
/* 0C7F8C 800C738C 10000027 */  b     .L800C742C
/* 0C7F90 800C7390 AC4B0000 */   sw    $t3, ($v0)
.L800C7394:
/* 0C7F94 800C7394 918CA1C0 */  lbu   $t4, %lo(D_800EA1C0)($t4)
/* 0C7F98 800C7398 240E001E */  li    $t6, 30
/* 0C7F9C 800C739C 240F001D */  li    $t7, 29
/* 0C7FA0 800C73A0 15800003 */  bnez  $t4, .L800C73B0
/* 0C7FA4 800C73A4 00000000 */   nop   
/* 0C7FA8 800C73A8 10000020 */  b     .L800C742C
/* 0C7FAC 800C73AC AC4E0000 */   sw    $t6, ($v0)
.L800C73B0:
/* 0C7FB0 800C73B0 1000001E */  b     .L800C742C
/* 0C7FB4 800C73B4 AC4F0000 */   sw    $t7, ($v0)
glabel L800C73B8
/* 0C7FB8 800C73B8 3C18800F */  lui   $t8, %hi(D_800E9F74)
/* 0C7FBC 800C73BC 0305C021 */  addu  $t8, $t8, $a1
/* 0C7FC0 800C73C0 93189F74 */  lbu   $t8, %lo(D_800E9F74)($t8)
/* 0C7FC4 800C73C4 57000012 */  bnel  $t8, $zero, .L800C7410
/* 0C7FC8 800C73C8 2418001C */   li    $t8, 28
/* 0C7FCC 800C73CC 8C590000 */  lw    $t9, ($v0)
/* 0C7FD0 800C73D0 24010009 */  li    $at, 9
/* 0C7FD4 800C73D4 240B0007 */  li    $t3, 7
/* 0C7FD8 800C73D8 17210003 */  bne   $t9, $at, .L800C73E8
/* 0C7FDC 800C73DC 3C0C800F */   lui   $t4, %hi(D_800EA1C0) # $t4, 0x800f
/* 0C7FE0 800C73E0 10000012 */  b     .L800C742C
/* 0C7FE4 800C73E4 AC4B0000 */   sw    $t3, ($v0)
.L800C73E8:
/* 0C7FE8 800C73E8 918CA1C0 */  lbu   $t4, %lo(D_800EA1C0)($t4)
/* 0C7FEC 800C73EC 240E0008 */  li    $t6, 8
/* 0C7FF0 800C73F0 240F0007 */  li    $t7, 7
/* 0C7FF4 800C73F4 15800003 */  bnez  $t4, .L800C7404
/* 0C7FF8 800C73F8 00000000 */   nop   
/* 0C7FFC 800C73FC 1000000B */  b     .L800C742C
/* 0C8000 800C7400 AC4E0000 */   sw    $t6, ($v0)
.L800C7404:
/* 0C8004 800C7404 10000009 */  b     .L800C742C
/* 0C8008 800C7408 AC4F0000 */   sw    $t7, ($v0)
/* 0C800C 800C740C 2418001C */  li    $t8, 28
.L800C7410:
/* 0C8010 800C7410 10000006 */  b     .L800C742C
/* 0C8014 800C7414 AC580000 */   sw    $t8, ($v0)
glabel L800C7418
/* 0C8018 800C7418 10000004 */  b     .L800C742C
/* 0C801C 800C741C AC470000 */   sw    $a3, ($v0)
glabel L800C7420
/* 0C8020 800C7420 10000002 */  b     .L800C742C
/* 0C8024 800C7424 AC460000 */   sw    $a2, ($v0)
glabel L800C7428
/* 0C8028 800C7428 AC480000 */  sw    $t0, ($v0)
.L800C742C:
glabel L800C742C
/* 0C802C 800C742C 907901EC */  lbu   $t9, 0x1ec($v1)
/* 0C8030 800C7430 272BFFF9 */  addiu $t3, $t9, -7
/* 0C8034 800C7434 2D61000B */  sltiu $at, $t3, 0xb
/* 0C8038 800C7438 10200063 */  beqz  $at, .L800C75C8
/* 0C803C 800C743C 000B5880 */   sll   $t3, $t3, 2
/* 0C8040 800C7440 3C01800F */  lui   $at, %hi(jpt_800F3868)
/* 0C8044 800C7444 002B0821 */  addu  $at, $at, $t3
/* 0C8048 800C7448 8C2B3868 */  lw    $t3, %lo(jpt_800F3868)($at)
/* 0C804C 800C744C 01600008 */  jr    $t3
/* 0C8050 800C7450 00000000 */   nop   
glabel L800C7454
/* 0C8054 800C7454 8C4C0000 */  lw    $t4, ($v0)
/* 0C8058 800C7458 24010005 */  li    $at, 5
/* 0C805C 800C745C 240E0004 */  li    $t6, 4
/* 0C8060 800C7460 15810003 */  bne   $t4, $at, .L800C7470
/* 0C8064 800C7464 3C0F800F */   lui   $t7, %hi(D_800EA1C0) # $t7, 0x800f
/* 0C8068 800C7468 10000057 */  b     .L800C75C8
/* 0C806C 800C746C AC4E0000 */   sw    $t6, ($v0)
.L800C7470:
/* 0C8070 800C7470 91EFA1C0 */  lbu   $t7, %lo(D_800EA1C0)($t7)
/* 0C8074 800C7474 24180006 */  li    $t8, 6
/* 0C8078 800C7478 24190004 */  li    $t9, 4
/* 0C807C 800C747C 15E00003 */  bnez  $t7, .L800C748C
/* 0C8080 800C7480 00000000 */   nop   
/* 0C8084 800C7484 10000050 */  b     .L800C75C8
/* 0C8088 800C7488 AC580000 */   sw    $t8, ($v0)
.L800C748C:
/* 0C808C 800C748C 1000004E */  b     .L800C75C8
/* 0C8090 800C7490 AC590000 */   sw    $t9, ($v0)
glabel L800C7494
/* 0C8094 800C7494 8C4B0000 */  lw    $t3, ($v0)
/* 0C8098 800C7498 2401000B */  li    $at, 11
/* 0C809C 800C749C 240C000A */  li    $t4, 10
/* 0C80A0 800C74A0 15610003 */  bne   $t3, $at, .L800C74B0
/* 0C80A4 800C74A4 3C0E800F */   lui   $t6, %hi(D_800EA1C0) # $t6, 0x800f
/* 0C80A8 800C74A8 10000047 */  b     .L800C75C8
/* 0C80AC 800C74AC AC4C0000 */   sw    $t4, ($v0)
.L800C74B0:
/* 0C80B0 800C74B0 91CEA1C0 */  lbu   $t6, %lo(D_800EA1C0)($t6)
/* 0C80B4 800C74B4 240F000C */  li    $t7, 12
/* 0C80B8 800C74B8 2418000A */  li    $t8, 10
/* 0C80BC 800C74BC 15C00003 */  bnez  $t6, .L800C74CC
/* 0C80C0 800C74C0 00000000 */   nop   
/* 0C80C4 800C74C4 10000040 */  b     .L800C75C8
/* 0C80C8 800C74C8 AC4F0000 */   sw    $t7, ($v0)
.L800C74CC:
/* 0C80CC 800C74CC 1000003E */  b     .L800C75C8
/* 0C80D0 800C74D0 AC580000 */   sw    $t8, ($v0)
glabel L800C74D4
/* 0C80D4 800C74D4 8C590000 */  lw    $t9, ($v0)
/* 0C80D8 800C74D8 24010017 */  li    $at, 23
/* 0C80DC 800C74DC 240B0016 */  li    $t3, 22
/* 0C80E0 800C74E0 17210003 */  bne   $t9, $at, .L800C74F0
/* 0C80E4 800C74E4 3C0C800F */   lui   $t4, %hi(D_800EA1C0) # $t4, 0x800f
/* 0C80E8 800C74E8 10000037 */  b     .L800C75C8
/* 0C80EC 800C74EC AC4B0000 */   sw    $t3, ($v0)
.L800C74F0:
/* 0C80F0 800C74F0 918CA1C0 */  lbu   $t4, %lo(D_800EA1C0)($t4)
/* 0C80F4 800C74F4 240E0018 */  li    $t6, 24
/* 0C80F8 800C74F8 240F0016 */  li    $t7, 22
/* 0C80FC 800C74FC 15800003 */  bnez  $t4, .L800C750C
/* 0C8100 800C7500 00000000 */   nop   
/* 0C8104 800C7504 10000030 */  b     .L800C75C8
/* 0C8108 800C7508 AC4E0000 */   sw    $t6, ($v0)
.L800C750C:
/* 0C810C 800C750C 1000002E */  b     .L800C75C8
/* 0C8110 800C7510 AC4F0000 */   sw    $t7, ($v0)
glabel L800C7514
/* 0C8114 800C7514 8C580000 */  lw    $t8, ($v0)
/* 0C8118 800C7518 2401001E */  li    $at, 30
/* 0C811C 800C751C 2419001D */  li    $t9, 29
/* 0C8120 800C7520 17010003 */  bne   $t8, $at, .L800C7530
/* 0C8124 800C7524 3C0B800F */   lui   $t3, %hi(D_800EA1C0) # $t3, 0x800f
/* 0C8128 800C7528 10000027 */  b     .L800C75C8
/* 0C812C 800C752C AC590000 */   sw    $t9, ($v0)
.L800C7530:
/* 0C8130 800C7530 916BA1C0 */  lbu   $t3, %lo(D_800EA1C0)($t3)
/* 0C8134 800C7534 240C001F */  li    $t4, 31
/* 0C8138 800C7538 240E001D */  li    $t6, 29
/* 0C813C 800C753C 15600003 */  bnez  $t3, .L800C754C
/* 0C8140 800C7540 00000000 */   nop   
/* 0C8144 800C7544 10000020 */  b     .L800C75C8
/* 0C8148 800C7548 AC4C0000 */   sw    $t4, ($v0)
.L800C754C:
/* 0C814C 800C754C 1000001E */  b     .L800C75C8
/* 0C8150 800C7550 AC4E0000 */   sw    $t6, ($v0)
glabel L800C7554
/* 0C8154 800C7554 3C0F800F */  lui   $t7, %hi(D_800E9F74)
/* 0C8158 800C7558 01E57821 */  addu  $t7, $t7, $a1
/* 0C815C 800C755C 91EF9F74 */  lbu   $t7, %lo(D_800E9F74)($t7)
/* 0C8160 800C7560 55E00012 */  bnel  $t7, $zero, .L800C75AC
/* 0C8164 800C7564 240F001C */   li    $t7, 28
/* 0C8168 800C7568 8C580000 */  lw    $t8, ($v0)
/* 0C816C 800C756C 24010008 */  li    $at, 8
/* 0C8170 800C7570 24190007 */  li    $t9, 7
/* 0C8174 800C7574 17010003 */  bne   $t8, $at, .L800C7584
/* 0C8178 800C7578 3C0B800F */   lui   $t3, %hi(D_800EA1C0) # $t3, 0x800f
/* 0C817C 800C757C 10000012 */  b     .L800C75C8
/* 0C8180 800C7580 AC590000 */   sw    $t9, ($v0)
.L800C7584:
/* 0C8184 800C7584 916BA1C0 */  lbu   $t3, %lo(D_800EA1C0)($t3)
/* 0C8188 800C7588 240C0009 */  li    $t4, 9
/* 0C818C 800C758C 240E0007 */  li    $t6, 7
/* 0C8190 800C7590 15600003 */  bnez  $t3, .L800C75A0
/* 0C8194 800C7594 00000000 */   nop   
/* 0C8198 800C7598 1000000B */  b     .L800C75C8
/* 0C819C 800C759C AC4C0000 */   sw    $t4, ($v0)
.L800C75A0:
/* 0C81A0 800C75A0 10000009 */  b     .L800C75C8
/* 0C81A4 800C75A4 AC4E0000 */   sw    $t6, ($v0)
/* 0C81A8 800C75A8 240F001C */  li    $t7, 28
.L800C75AC:
/* 0C81AC 800C75AC 10000006 */  b     .L800C75C8
/* 0C81B0 800C75B0 AC4F0000 */   sw    $t7, ($v0)
glabel L800C75B4
/* 0C81B4 800C75B4 10000004 */  b     .L800C75C8
/* 0C81B8 800C75B8 AC470000 */   sw    $a3, ($v0)
glabel L800C75BC
/* 0C81BC 800C75BC 10000002 */  b     .L800C75C8
/* 0C81C0 800C75C0 AC460000 */   sw    $a2, ($v0)
glabel L800C75C4
/* 0C81C4 800C75C4 AC480000 */  sw    $t0, ($v0)
.L800C75C8:
glabel L800C75C8
/* 0C81C8 800C75C8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0C81CC 800C75CC 44815000 */  mtc1  $at, $f10
/* 0C81D0 800C75D0 C4680094 */  lwc1  $f8, 0x94($v1)
/* 0C81D4 800C75D4 44808000 */  mtc1  $zero, $f16
/* 0C81D8 800C75D8 24010008 */  li    $at, 8
/* 0C81DC 800C75DC 460A403C */  c.lt.s $f8, $f10
/* 0C81E0 800C75E0 30980008 */  andi  $t8, $a0, 8
/* 0C81E4 800C75E4 308B4000 */  andi  $t3, $a0, 0x4000
/* 0C81E8 800C75E8 308F0800 */  andi  $t7, $a0, 0x800
/* 0C81EC 800C75EC 45030004 */  bc1tl .L800C7600
/* 0C81F0 800C75F0 8C590000 */   lw    $t9, ($v0)
/* 0C81F4 800C75F4 57010007 */  bnel  $t8, $at, .L800C7614
/* 0C81F8 800C75F8 24014000 */   li    $at, 16384
/* 0C81FC 800C75FC 8C590000 */  lw    $t9, ($v0)
.L800C7600:
/* 0C8200 800C7600 2401001C */  li    $at, 28
/* 0C8204 800C7604 53210003 */  beql  $t9, $at, .L800C7614
/* 0C8208 800C7608 24014000 */   li    $at, 16384
/* 0C820C 800C760C AC400000 */  sw    $zero, ($v0)
/* 0C8210 800C7610 24014000 */  li    $at, 16384
.L800C7614:
/* 0C8214 800C7614 55610006 */  bnel  $t3, $at, .L800C7630
/* 0C8218 800C7618 24010800 */   li    $at, 2048
/* 0C821C 800C761C 946C0000 */  lhu   $t4, ($v1)
/* 0C8220 800C7620 24012000 */  li    $at, 8192
/* 0C8224 800C7624 318E2000 */  andi  $t6, $t4, 0x2000
/* 0C8228 800C7628 15C1000D */  bne   $t6, $at, .L800C7660
/* 0C822C 800C762C 24010800 */   li    $at, 2048
.L800C7630:
/* 0C8230 800C7630 11E1000B */  beq   $t7, $at, .L800C7660
/* 0C8234 800C7634 30980080 */   andi  $t8, $a0, 0x80
/* 0C8238 800C7638 24010080 */  li    $at, 128
/* 0C823C 800C763C 13010008 */  beq   $t8, $at, .L800C7660
/* 0C8240 800C7640 30990040 */   andi  $t9, $a0, 0x40
/* 0C8244 800C7644 24010040 */  li    $at, 64
/* 0C8248 800C7648 53210006 */  beql  $t9, $at, .L800C7664
/* 0C824C 800C764C 240E0012 */   li    $t6, 18
/* 0C8250 800C7650 846B0044 */  lh    $t3, 0x44($v1)
/* 0C8254 800C7654 24014000 */  li    $at, 16384
/* 0C8258 800C7658 316C4000 */  andi  $t4, $t3, 0x4000
/* 0C825C 800C765C 15810002 */  bne   $t4, $at, .L800C7668
.L800C7660:
/* 0C8260 800C7660 240E0012 */   li    $t6, 18
.L800C7664:
/* 0C8264 800C7664 AC4E0000 */  sw    $t6, ($v0)
.L800C7668:
/* 0C8268 800C7668 308F0020 */  andi  $t7, $a0, 0x20
/* 0C826C 800C766C 24010020 */  li    $at, 32
/* 0C8270 800C7670 15E10005 */  bne   $t7, $at, .L800C7688
/* 0C8274 800C7674 308B0800 */   andi  $t3, $a0, 0x800
/* 0C8278 800C7678 94780000 */  lhu   $t8, ($v1)
/* 0C827C 800C767C 24012000 */  li    $at, 8192
/* 0C8280 800C7680 33192000 */  andi  $t9, $t8, 0x2000
/* 0C8284 800C7684 17210002 */  bne   $t9, $at, .L800C7690
.L800C7688:
/* 0C8288 800C7688 24010800 */   li    $at, 2048
/* 0C828C 800C768C 15610002 */  bne   $t3, $at, .L800C7698
.L800C7690:
/* 0C8290 800C7690 240C0013 */   li    $t4, 19
/* 0C8294 800C7694 AC4C0000 */  sw    $t4, ($v0)
.L800C7698:
/* 0C8298 800C7698 C472020C */  lwc1  $f18, 0x20c($v1)
/* 0C829C 800C769C 240E0003 */  li    $t6, 3
/* 0C82A0 800C76A0 46128032 */  c.eq.s $f16, $f18
/* 0C82A4 800C76A4 00000000 */  nop   
/* 0C82A8 800C76A8 45030003 */  bc1tl .L800C76B8
/* 0C82AC 800C76AC 01A0E825 */   move  $sp, $t5
/* 0C82B0 800C76B0 AC4E0000 */  sw    $t6, ($v0)
.L800C76B4:
/* 0C82B4 800C76B4 01A0E825 */  move  $sp, $t5
.L800C76B8:
/* 0C82B8 800C76B8 03E00008 */  jr    $ra
/* 0C82BC 800C76BC 25BD0010 */   addiu $sp, $t5, 0x10
