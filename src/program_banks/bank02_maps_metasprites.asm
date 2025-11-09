;Bank 2 includes static screen maps and metasprites

SECTION "Bank 2 - Title screen maps - Logo", ROMX[$4000], BANK[$02]
;we move the TM for cosmetic purposes
DB $a2, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a4
DB $bf, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $bf
DB $bf, $00, $00, $40, $41, $42, $00, $00, $43, $44, $00, $00, $45, $46, $47, $00, $ec, $ed, $00, $bf
DB $bf, $00, $00, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $00, $00, $bf
DB $bf, $00, $00, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $00, $00, $bf
DB $bf, $00, $00, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $7f, $00, $00, $bf
DB $bf, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $bf
DB $bf, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $bf
DB $bf, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $bf
DB $a5, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a3, $a6

SECTION "Bank 2 - Title screen maps - Licensed by Nintendo", ROMX[$7af7], BANK[$02]
;change the 
INCLUDE "charmap.asm"
;DB "LICENSED BY NINTENDO"
DB "2025 DX VER. BY MARC"


SECTION "Bank 2 - Metasprites", ROMX[$5b4f], BANK[$02]
;the game stores all metasprites in an easily readable and editable format,
;so we can simply set the separate sprite palettes just by adding the palette
;index number to each sprite attribute byte
metasprite_offsets_array:
	DW metasprite_chef_up0 ;$00
	DW metasprite_chef_up1 ;$01
	DW metasprite_chef_up2 ;$02
	DW metasprite_chef_down0 ;$03
	DW metasprite_chef_down1 ;...
	DW metasprite_chef_down2
	DW metasprite_chef_left0
	DW metasprite_chef_left1
	DW metasprite_chef_left2
	DW metasprite_chef_right0
	DW metasprite_chef_right1
	DW metasprite_chef_right2
	DW metasprite_chef_attack_down
	DW metasprite_chef_attack_up
	DW metasprite_chef_win0
	DW metasprite_chef_die0
	DW metasprite_chef_die1
	DW metasprite_chef_die2
	DW metasprite_chef_big_right0
	DW metasprite_chef_big_right1
	DW metasprite_chef_big_right2
	DW metasprite_chef_big_right3
	DW metasprite_chef_big_left0
	DW metasprite_chef_big_left1
	DW metasprite_chef_big_left2
	DW metasprite_chef_big_left3
	DW metasprite_chef_win1
	DW metasprite_5f53
	DW metasprite_5f68
	DW metasprite_5f7d
	DW metasprite_5f92
	DW metasprite_5fa7
	DW metasprite_5f7d
	DW metasprite_5fa7
	DW metasprite_cutscene_chef_squeeze0
	DW metasprite_cutscene_chef_squeeze1
	DW metasprite_cutscene_chef_squeeze2
	DW metasprite_cutscene_chef_rope0
	DW metasprite_cutscene_chef_rope1
	DW metasprite_naked0
	DW metasprite_naked1
	DW metasprite_naked2
	DW metasprite_naked3
	DW metasprite_6015
	DW metasprite_6022
	DW metasprite_602f
	DW metasprite_6048
	DW metasprite_6059
	DW metasprite_605e
	DW metasprite_606b
	DW metasprite_607c
	DW metasprite_6089
	DW metasprite_608e
	DW metasprite_6097
	DW metasprite_60a4
	DW metasprite_60a9
	DW metasprite_60ae
	DW metasprite_60b7
	DW metasprite_bread_top_bounce0
	DW metasprite_bread_top_bounce1
	DW metasprite_bread_top_bounce2
	DW metasprite_bread_top_bounce3
	DW metasprite_bread_top_bounce4
	DW metasprite_bread_bottom_bounce0
	DW metasprite_bread_bottom_bounce1
	DW metasprite_bread_bottom_bounce2
	DW metasprite_bread_bottom_bounce3
	DW metasprite_bread_bottom_bounce4
	DW metasprite_meat_bounce0
	DW metasprite_meat_bounce1
	DW metasprite_meat_bounce2
	DW metasprite_meat_bounce3
	DW metasprite_meat_bounce4
	DW metasprite_cheese_bounce0
	DW metasprite_cheese_bounce1
	DW metasprite_cheese_bounce2
	DW metasprite_cheese_bounce3
	DW metasprite_cheese_bounce4
	DW metasprite_lettuce_bounce0
	DW metasprite_lettuce_bounce1
	DW metasprite_lettuce_bounce2
	DW metasprite_lettuce_bounce3
	DW metasprite_lettuce_bounce4
	DW metasprite_bread_top
	DW metasprite_bread_bottom
	DW metasprite_meat
	DW metasprite_cheese
	DW metasprite_lettuce
	DW metasprite_bread_top_large_bounce0
	DW metasprite_bread_top_large_bounce1
	DW metasprite_bread_top_large_bounce2
	DW metasprite_bread_top_large_bounce3
	DW metasprite_bread_top_large_bounce4
	DW metasprite_bread_bottom_large_bounce0
	DW metasprite_bread_bottom_large_bounce1
	DW metasprite_bread_bottom_large_bounce2
	DW metasprite_bread_bottom_large_bounce3
	DW metasprite_bread_bottom_large_bounce4
	DW metasprite_meat_large_bounce0
	DW metasprite_meat_large_bounce1
	DW metasprite_meat_large_bounce2
	DW metasprite_meat_large_bounce3
	DW metasprite_meat_large_bounce4
	DW metasprite_cheese_large_bounce0
	DW metasprite_cheese_large_bounce2
	DW metasprite_cheese_large_bounce2
	DW metasprite_cheese_large_bounce3
	DW metasprite_cheese_large_bounce4
	DW metasprite_lettuce_large_bounce0
	DW metasprite_lettuce_large_bounce1
	DW metasprite_lettuce_large_bounce2
	DW metasprite_lettuce_large_bounce3
	DW metasprite_lettuce_large_bounce4
	DW metasprite_bread_top_large
	DW metasprite_bread_bottom_large
	DW metasprite_meat_large
	DW metasprite_cheese_large
	DW metasprite_lettuce_large
	DW metasprite_enemy_hotdog0
	DW metasprite_enemy_hotdog1
	DW metasprite_enemy_hotdog2
	DW metasprite_enemy_hotdog_hit0
	DW metasprite_enemy_hotdog_hit1
	DW metasprite_enemy_chicken_unknown
	DW metasprite_enemy_hotdog_die0
	DW metasprite_enemy_hotdog_die1
	DW metasprite_cutscene6_hotdog0
	DW metasprite_cutscene6_hotdog1
	DW metasprite_enemy_pickle0
	DW metasprite_enemy_pickle0
	DW metasprite_enemy_pickle0
	DW metasprite_enemy_pickle1
	DW metasprite_enemy_pickle2
	DW metasprite_enemy_pickle3
	DW metasprite_enemy_pickle4
	DW metasprite_enemy_pickle_hit0
	DW metasprite_enemy_pickle_hit1
	DW metasprite_enemy_pickle_die0
	DW metasprite_enemy_pickle_die1
	DW metasprite_enemy_chicken_down0
	DW metasprite_enemy_chicken_down1
	DW metasprite_enemy_chicken_down2
	DW metasprite_enemy_chicken_up0
	DW metasprite_enemy_chicken_up1
	DW metasprite_enemy_chicken_up2
	DW metasprite_enemy_chicken_right0
	DW metasprite_enemy_chicken_right1
	DW metasprite_enemy_chicken_left0
	DW metasprite_enemy_chicken_left1
	DW metasprite_enemy_chicken_hit0
	DW metasprite_enemy_chicken_hit1
	DW metasprite_enemy_chicken_hit2
	DW metasprite_enemy_chicken_die0
	DW metasprite_enemy_chicken_die1
	DW metasprite_enemy_chicken_die2
	DW metasprite_enemy_donut_right0
	DW metasprite_enemy_donut_right1
	DW metasprite_enemy_donut_right2
	DW metasprite_enemy_donut_left0
	DW metasprite_enemy_donut_left1
	DW metasprite_enemy_donut_left2
	DW metasprite_enemy_donut_up0
	DW metasprite_enemy_donut_up1
	DW metasprite_enemy_donut_up2
	DW metasprite_enemy_donut_hit0
	DW metasprite_enemy_donut_hit1
	DW metasprite_enemy_donut_hit2
	DW metasprite_enemy_donut_hit3
	DW metasprite_enemy_donut_hit4
	DW metasprite_enemy_donut_hit5
	DW metasprite_enemy_donut_hit6
	DW metasprite_enemy_donut_hit7
	DW metasprite_enemy_donut_die0
	DW metasprite_enemy_donut_die1
	DW metasprite_password_arrow
	DW metasprite_password_arrow
	DW metasprite_password_arrow
	DW metasprite_bonus500
	DW metasprite_bonus1000
	DW metasprite_bonus2000
	DW metasprite_bonus4000
	DW metasprite_bonus6000
	DW metasprite_bonus8000
	DW metasprite_stars0
	DW metasprite_stars1
	DW metasprite_stars2
	DW metasprite_stars3
	DW metasprite_stars4
	DW metasprite_go0
	DW metasprite_go0
	DW metasprite_go1
	DW metasprite_go1
	DW metasprite_fire0
	DW metasprite_fire1
	DW metasprite_fire2
	DW metasprite_fire3
	DW metasprite_cutscene_smoke0
	DW metasprite_cutscene_smoke1
	DW metasprite_cutscene_smoke2
	DW metasprite_cutscene_smoke3
	DW metasprite_cutscene_smoke4
	DW metasprite_cutscene_door0
	DW metasprite_cutscene_door1
	DW metasprite_cutscene_door2
	DW metasprite_cutscene_door3
	DW metasprite_ending0
	DW metasprite_ending1
	DW metasprite_ending2
	DW metasprite_ending3
	DW metasprite_cutscene_boss0
	DW metasprite_cutscene_boss1
	DW metasprite_cutscene_boss2
	DW metasprite_ending_boss0
	DW metasprite_ending_boss1
	DW metasprite_ending_boss2
	DW metasprite_ending_boss3
	DW metasprite_ending_boss4
	DW metasprite_ending_boss5
	DW metasprite_ending_boss6
	DW metasprite_ending_boss7
	DW metasprite_ending_boss8
	DW metasprite_ending_boss_hit0
	DW metasprite_ending_boss_hit1
	DW metasprite_60c4
	DW metasprite_5d13
	DW metasprite_password_arrow

metasprite_5d13:
	DB 2
	DB 0, 0, $f4, $00
	DB 0, 40, $f4, $20

metasprite_chef_up0:
	DB 4
	DB -16, -8, $06, $10
	DB -16, 0, $06, $30
	DB -8, -8, $07, $10
	DB -8, 0, $07, $30

metasprite_chef_up1:
	DB 4
	DB -15, -8, $06, $10
	DB -15, 0, $06, $30
	DB -7, -8, $08, $10
	DB -7, 0, $09, $10

metasprite_chef_up2:
	DB 4
	DB -15, -8, $06, $10
	DB -15, 0, $06, $30
	DB -7, -8, $09, $30
	DB -7, 0, $08, $30

metasprite_chef_down0:
	DB 4
	DB -16, -8, $00, $10
	DB -16, 0, $00, $30
	DB -8, -8, $02, $30
	DB -8, 0, $02, $10

metasprite_chef_down1:
	DB 4
	DB -15, -8, $00, $10
	DB -15, 0, $00, $30
	DB -7, -8, $03, $10
	DB -7, 0, $04, $10

metasprite_chef_down2:
	DB 4
	DB -15, -8, $00, $10
	DB -15, 0, $00, $30
	DB -7, -8, $04, $30
	DB -7, 0, $03, $30

metasprite_chef_left0:
	DB 4
	DB -16, -8, $0c, $30
	DB -16, 0, $0b, $30
	DB -8, 0, $0f, $30
	DB -8, -8, $10, $30

metasprite_chef_left1:
	DB 4
	DB -15, -8, $0c, $30
	DB -15, 0, $0b, $30
	DB -7, -8, $0e, $30
	DB -7, 0, $0d, $30

metasprite_chef_left2:
	DB 4
	DB -7, -8, $12, $30
	DB -7, 0, $11, $30
	DB -15, 0, $0b, $30
	DB -15, -8, $0c, $30

metasprite_chef_right0:
	DB 4
	DB -16, -8, $0b, $10
	DB -16, 0, $0c, $10
	DB -8, -8, $0f, $10
	DB -8, 0, $10, $10

metasprite_chef_right1:
	DB 4
	DB -15, -8, $0b, $10
	DB -15, 0, $0c, $10
	DB -7, -8, $0d, $10
	DB -7, 0, $0e, $10

metasprite_chef_right2:
	DB 4
	DB -15, -8, $0b, $10
	DB -15, 0, $0c, $10
	DB -7, -8, $11, $10
	DB -7, 0, $12, $10

metasprite_chef_attack_down:
	DB 4
	DB -16, -8, $00, $10
	DB -16, 0, $00, $30
	DB -8, -8, $05, $10
	DB -8, 0, $02, $10

metasprite_chef_attack_up:
	DB 4
	DB -16, -8, $06, $10
	DB -16, 0, $06, $30
	DB -8, -8, $07, $10
	DB -8, 0, $0a, $10

metasprite_chef_win0:
	DB 4
	DB -24, -8, $17, $10
	DB -24, 0, $17, $30
	DB -16, 0, $18, $30
	DB -16, -8, $18, $10

metasprite_chef_die0:
	DB 4
	DB -22, -8, $25, $10
	DB -22, 0, $25, $30
	DB -14, -8, $26, $10
	DB -14, 0, $26, $30

metasprite_chef_die1:
	DB 4
	DB -15, -8, $13, $10
	DB -15, 0, $14, $10
	DB -7, -8, $15, $10
	DB -7, 0, $16, $10

metasprite_chef_die2:
	DB 4
	DB -15, -8, $14, $30
	DB -7, -8, $16, $30
	DB -7, 0, $15, $30
	DB -15, 0, $13, $30

metasprite_chef_big_right0:
	DB 5
	DB -22, -8, $61, $10
	DB -22, 0, $62, $10
	DB -14, -8, $63, $10
	DB -14, 0, $64, $10
	DB -6, -4, $65, $10

metasprite_chef_big_right1:
	DB 5
	DB -21, -8, $61, $10
	DB -21, 0, $66, $10
	DB -13, -8, $67, $10
	DB -13, 0, $68, $10
	DB -5, -4, $69, $10

metasprite_chef_big_right2:
	DB 6
	DB -23, -8, $61, $10
	DB -15, -8, $6a, $10
	DB -15, 0, $6b, $10
	DB -23, 0, $66, $10
	DB -7, -8, $6c, $10
	DB -7, 0, $6d, $10

metasprite_chef_big_right3:
	DB 6
	DB -21, -8, $61, $10
	DB -13, 0, $68, $10
	DB -21, 0, $66, $10
	DB -5, -8, $6e, $10
	DB -5, 0, $6f, $10
	DB -13, -8, $67, $10

metasprite_chef_big_left0:
	DB 5
	DB -22, 0, $61, $30
	DB -22, -8, $62, $30
	DB -14, 0, $63, $30
	DB -14, -8, $64, $30
	DB -6, -4, $65, $30

metasprite_chef_big_left1:
	DB 5
	DB -21, 0, $61, $30
	DB -13, -8, $68, $30
	DB -13, 0, $67, $30
	DB -5, -4, $69, $30
	DB -21, -8, $66, $30

metasprite_chef_big_left2:
	DB 6
	DB -15, 0, $6a, $30
	DB -15, -8, $6b, $30
	DB -7, 0, $6c, $30
	DB -7, -8, $6d, $30
	DB -23, 0, $61, $30
	DB -23, -8, $66, $30

metasprite_chef_big_left3:
	DB 6
	DB -21, 0, $61, $30
	DB -21, -8, $66, $30
	DB -13, 0, $67, $30
	DB -13, -8, $68, $30
	DB -5, 0, $6e, $30
	DB -5, -8, $6f, $30

metasprite_naked0:
	DB 4
	DB -16, -8, $70, $00 | 3
	DB -16, 0, $71, $00 | 3
	DB -8, -8, $72, $00 | 3
	DB -8, 0, $73, $00 | 3

metasprite_naked1:
	DB 4
	DB -17, -8, $70, $00 | 3
	DB -17, 0, $71, $00 | 3
	DB -9, -8, $72, $00 | 3
	DB -9, 0, $73, $00 | 3

metasprite_naked2:
	DB 4
	DB -16, -8, $70, $00 | 3
	DB -16, 0, $71, $00 | 3
	DB -8, -8, $74, $00 | 3
	DB -8, 0, $75, $00 | 3

metasprite_naked3:
	DB 4
	DB -17, -8, $70, $00 | 3
	DB -17, 0, $71, $00 | 3
	DB -9, -8, $74, $00 | 3
	DB -9, 0, $75, $00 | 3

metasprite_chef_win1:
	DB 2
	DB -8, -8, $32, $10
	DB -8, 0, $32, $30

metasprite_5f53:
	DB 5
	DB -30, -2, $61, $10
	DB -30, 6, $62, $10
	DB -22, -2, $63, $10
	DB -22, 6, $64, $10
	DB -14, 2, $65, $10

metasprite_5f68:
	DB 5
	DB -39, 4, $61, $10
	DB -39, 12, $62, $10
	DB -31, 4, $63, $10
	DB -31, 12, $64, $10
	DB -23, 8, $65, $10

metasprite_5f7d:
	DB 5
	DB -30, -14, $62, $30
	DB -30, -6, $61, $30
	DB -22, -14, $64, $30
	DB -22, -6, $63, $30
	DB -14, -10, $65, $30

metasprite_5f92:
	DB 5
	DB -39, -20, $62, $30
	DB -39, -12, $61, $30
	DB -31, -20, $64, $30
	DB -31, -12, $63, $30
	DB -23, -16, $65, $30

metasprite_5fa7:
	DB 4
	DB -15, -8, $25, $10
	DB -15, 0, $25, $30
	DB -7, -8, $26, $10
	DB -7, 0, $26, $30

metasprite_cutscene_chef_squeeze0:
	DB 4
	DB -8, -8, $3f, $10
	DB -8, 0, $3f, $30
	DB -16, 0, $54, $30
	DB -16, -8, $54, $10

metasprite_cutscene_chef_squeeze1:
	DB 6
	DB -8, -8, $54, $10
	DB -8, 0, $55, $10
	DB -11, -8, $19, $50
	DB -10, 0, $19, $10
	DB -8, 8, $22, $10
	DB -8, -16, $22, $10

metasprite_cutscene_chef_squeeze2:
	DB 2
	DB -8, 0, $55, $10
	DB -8, -8, $55, $30

metasprite_cutscene_chef_rope0:
	DB 6
	DB -21, -8, $7a, $10
	DB -21, 0, $7a, $30
	DB -13, -8, $7b, $10
	DB -13, 0, $7b, $30
	DB -5, -8, $7c, $10
	DB -5, 0, $7c, $30

metasprite_cutscene_chef_rope1:
	DB 4
	DB -16, -8, $78, $10
	DB -16, 0, $78, $30
	DB -8, -8, $79, $10
	DB -8, 0, $79, $30

metasprite_6015:
	DB 3
	DB -12, -4, $22, $00
	DB -14, -7, $24, $20
	DB -14, -1, $24, $00

metasprite_6022:
	DB 3
	DB -18, -4, $23, $40
	DB -18, 4, $24, $00
	DB -18, -12, $24, $20

metasprite_602f:
	DB 6
	DB -5, -13, $24, $00
	DB -5, 5, $24, $20
	DB -4, -4, $23, $20
	DB -11, -4, $23, $60
	DB -12, 4, $22, $60
	DB -12, -12, $22, $40

metasprite_6048:
	DB 4
	DB 4, -14, $24, $00
	DB 4, 6, $24, $20
	DB 0, -8, $22, $00
	DB 0, 0, $22, $20

metasprite_6059:
	DB 1
	DB -20, -4, $22, $20

metasprite_605e:
	DB 3
	DB -13, 3, $24, $00
	DB -13, -11, $24, $20
	DB -10, -4, $23, $00

metasprite_606b:
	DB 4
	DB -3, -12, $24, $20
	DB -3, 4, $24, $00
	DB -1, -7, $23, $00
	DB -1, -1, $23, $20

metasprite_607c:
	DB 3
	DB 6, 6, $24, $00
	DB 6, -14, $24, $20
	DB 7, -4, $24, $00

metasprite_6089:
	DB 1
	DB -12, 2, $22, $00

metasprite_608e:
	DB 2
	DB -7, 0, $24, $40
	DB -11, -3, $23, $40

metasprite_6097:
	DB 3
	DB -14, -12, $24, $00
	DB -5, -10, $24, $40
	DB -11, -9, $23, $40

metasprite_60a4:
	DB 1
	DB -10, -19, $24, $40

metasprite_60a9:
	DB 1
	DB -12, -10, $22, $00

metasprite_60ae:
	DB 2
	DB -11, -5, $23, $60
	DB -7, -8, $24, $60

metasprite_60b7:
	DB 3
	DB -5, 2, $24, $40
	DB -14, 4, $24, $00
	DB -11, 1, $23, $60

metasprite_60c4:
	DB 1
	DB -10, 11, $24, $60

metasprite_bonus500:
	DB 2
	DB -8, -8, $2d, $10 | 5
	DB -8, 0, $2b, $10 | 5

metasprite_bonus1000:
	DB 2
	DB -8, -8, $28, $10 | 5
	DB -8, 0, $29, $10 | 5

metasprite_bonus2000:
	DB 2
	DB -8, -8, $2a, $10 | 5
	DB -8, 0, $29, $10 | 5

metasprite_bonus4000:
	DB 2
	DB -8, -8, $2c, $10 | 6
	DB -8, 0, $29, $10 | 6

metasprite_bonus6000:
	DB 2
	DB -8, -8, $2e, $10 | 6
	DB -8, 0, $29, $10 | 6

metasprite_bonus8000:
	DB 2
	DB -8, -8, $2f, $10 | 6
	DB -8, 0, $29, $10 | 6

metasprite_enemy_hotdog0:
	DB 2
	DB -16, -4, $1a, $00 | 4
	DB -8, -4, $1b, $00 | 4

metasprite_enemy_hotdog1:
	DB 2
	DB -16, -4, $1c, $00 | 4
	DB -8, -4, $1d, $00 | 4

metasprite_enemy_hotdog2:
	DB 2
	DB -16, -4, $1a, $20 | 4
	DB -8, -4, $1b, $20 | 4

metasprite_enemy_hotdog_hit0:
	DB 2
	DB -16, -4, $1a, $00 | 4
	DB -8, -4, $1e, $00 | 4

metasprite_enemy_hotdog_hit1:
	DB 2
	DB -20, -4, $1a, $20 | 4
	DB -12, -4, $1e, $20 | 4

metasprite_enemy_hotdog_die0:
	DB 2
	DB -8, 0, $1f, $20 | 4
	DB -8, -8, $20, $20 | 4

metasprite_enemy_hotdog_die1:
	DB 2
	DB -8, 0, $21, $20 | 4
	DB -8, -8, $21, $00 | 4

metasprite_cutscene6_hotdog0:
	DB 3
	DB -8, -4, $77, $00 | 4
	DB -16, -4, $1a, $20 | 4
	DB -23, -3, $76, $00 | 7

metasprite_cutscene6_hotdog1:
	DB 3
	DB -8, -4, $77, $20 | 4
	DB -16, -4, $1a, $00 | 4
	DB -23, -5, $76, $20 | 7

metasprite_enemy_pickle0:
	DB 4
	DB -16, -8, $59, $10 | 5
	DB -16, 0, $59, $30 | 5
	DB -8, -8, $5a, $10 | 5
	DB -8, 0, $5a, $30 | 5

metasprite_enemy_pickle1:
	DB 4
	DB -16, -8, $56, $10 | 5
	DB -16, 0, $56, $30 | 5
	DB -8, -8, $57, $10 | 5
	DB -8, 0, $58, $10 | 5

metasprite_enemy_pickle2:
	DB 4
	DB -16, -8, $56, $10 | 5
	DB -16, 0, $56, $30 | 5
	DB -8, -8, $58, $30 | 5
	DB -8, 0, $57, $30 | 5

metasprite_enemy_pickle3:
	DB 4
	DB -16, -8, $5b, $10 | 5
	DB -16, 0, $5c, $10 | 5
	DB -8, -8, $5b, $50 | 5
	DB -8, 0, $5b, $70 | 5

metasprite_enemy_pickle4:
	DB 4
	DB -8, -8, $5b, $50 | 5
	DB -8, 0, $5b, $70 | 5
	DB -16, 0, $5b, $30 | 5
	DB -16, -8, $5c, $30 | 5

metasprite_enemy_pickle_hit0:
	DB 4
	DB -16, 0, $5d, $30 | 5
	DB -16, -8, $5d, $10 | 5
	DB -8, -8, $5e, $10 | 5
	DB -8, 0, $5e, $30 | 5

metasprite_enemy_pickle_hit1:
	DB 4
	DB -16, -8, $5f, $10 | 5
	DB -16, 0, $5f, $30 | 5
	DB -8, 0, $5f, $70 | 5
	DB -8, -8, $5f, $50 | 5

metasprite_enemy_pickle_die0:
	DB 2
	DB -8, -8, $60, $10 | 5
	DB -8, 0, $60, $30 | 5

metasprite_enemy_pickle_die1:
	DB 2
	DB -8, -8, $5a, $10 | 5
	DB -8, 0, $5a, $30 | 5

metasprite_enemy_chicken_down0:
	DB 4
	DB -16, -8, $40, $10 | 6
	DB -16, 0, $40, $30 | 6
	DB -8, -8, $42, $10 | 7
	DB -8, 0, $42, $30 | 7

metasprite_enemy_chicken_down1:
	DB 4
	DB -15, -8, $43, $10 | 6
	DB -7, -8, $45, $10 | 7
	DB -7, 0, $46, $10 | 7
	DB -15, 0, $43, $30 | 6

metasprite_enemy_chicken_down2:
	DB 4
	DB -15, -8, $43, $10 | 6
	DB -7, -8, $46, $30 | 7
	DB -7, 0, $45, $30 | 7
	DB -15, 0, $43, $30 | 6

metasprite_enemy_chicken_up0:
	DB 4
	DB -16, -8, $41, $10 | 6
	DB -16, 0, $41, $30 | 6
	DB -8, -8, $42, $10 | 7
	DB -8, 0, $42, $30 | 7

metasprite_enemy_chicken_up1:
	DB 4
	DB -15, -8, $44, $10 | 6
	DB -7, -8, $45, $10 | 7
	DB -7, 0, $46, $10 | 7
	DB -15, 0, $44, $30 | 6

metasprite_enemy_chicken_up2:
	DB 4
	DB -15, -8, $44, $10 | 6
	DB -7, -8, $46, $30 | 7
	DB -7, 0, $45, $30 | 7
	DB -15, 0, $44, $30 | 6

metasprite_enemy_chicken_right0:
	DB 4
	DB -16, -8, $41, $10 | 6
	DB -16, 0, $40, $30 | 6
	DB -8, -8, $49, $10 | 7
	DB -8, 0, $4a, $10 | 7

metasprite_enemy_chicken_right1:
	DB 4
	DB -15, 0, $43, $30 | 6
	DB -15, -8, $44, $10 | 6
	DB -7, -8, $47, $10 | 7
	DB -7, 0, $48, $10 | 7

metasprite_enemy_chicken_left0:
	DB 4
	DB -16, -8, $40, $10 | 6
	DB -16, 0, $41, $30 | 6
	DB -8, -8, $4a, $30 | 7
	DB -8, 0, $49, $30 | 7

metasprite_enemy_chicken_left1:
	DB 4
	DB -15, -8, $43, $10 | 6
	DB -15, 0, $44, $30 | 6
	DB -7, -8, $48, $30 | 7
	DB -7, 0, $47, $30 | 7

metasprite_enemy_chicken_hit0:
	DB 4
	DB -16, -8, $4b, $10 | 6
	DB -16, 0, $4b, $30 | 6
	DB -8, -7, $4c, $10 | 7
	DB -8, -1, $4c, $30 | 7

metasprite_enemy_chicken_hit1:
	DB 4
	DB -16, -8, $4d, $10 | 6
	DB -16, 0, $4d, $30 | 6
	DB -8, -7, $4c, $10 | 7
	DB -8, -1, $4c, $30 | 7

metasprite_enemy_chicken_hit2:
	DB 4
	DB -8, -7, $4c, $10 | 7
	DB -8, -1, $4c, $30 | 7
	DB -18, -8, $4e, $10 | 6
	DB -18, 0, $4e, $30 | 6

metasprite_enemy_chicken_unknown:
	DB 4
	DB -16, -8, $4f, $10
	DB -16, 0, $4f, $30
	DB -8, 0, $4c, $30
	DB -8, -8, $4c, $10

metasprite_enemy_chicken_die0:
	DB 4
	DB -13, -8, $50, $10 | 7
	DB -5, -8, $50, $50 | 7
	DB -5, 0, $51, $50 | 7
	DB -13, 0, $51, $10 | 7

metasprite_enemy_chicken_die1:
	DB 2
	DB -8, -8, $52, $10 | 7
	DB -8, 0, $53, $10 | 7

metasprite_enemy_chicken_die2:
	DB 2
	DB -8, -8, $54, $10 | 7
	DB -8, 0, $55, $10 | 7


	;donut appears first in 6-1
	;it never appears together with pickle, egg or lettuce, so we can reuse any of their palettes (5, 6+7 and 3 respectively) for it
metasprite_enemy_donut_right0:
	DB 11
	DB -24, -12, $42, $00 | 3
	DB -24, -4, $45, $40 | 3
	DB -24, 4, $42, $20 | 3
	DB -16, -12, $43, $00 | 3
	DB -16, 4, $43, $20 | 3
	DB -16, -4, $44, $00 | 3
	DB -8, -4, $45, $00 | 3
	DB -8, -12, $42, $40 | 3
	DB -8, 4, $42, $60 | 3
	DB -24, -3, $40, $00 | 7
	DB -24, 5, $41, $00 | 7

metasprite_enemy_donut_right1:
	DB 11
	DB -28, -12, $42, $00 | 3
	DB -28, -4, $45, $40 | 3
	DB -28, 4, $42, $20 | 3
	DB -20, -12, $43, $00 | 3
	DB -20, 4, $43, $20 | 3
	DB -20, -4, $44, $00 | 3
	DB -12, -4, $45, $00 | 3
	DB -12, -12, $42, $40 | 3
	DB -12, 4, $42, $60 | 3
	DB -28, -3, $40, $00 | 7
	DB -28, 5, $41, $00 | 7

metasprite_enemy_donut_right2:
	DB 10
	DB -8, -16, $46, $40 | 3
	DB -16, -16, $46, $00 | 3
	DB -16, 8, $46, $20 | 3
	DB -8, 8, $46, $60 | 3
	DB -8, -8, $47, $40 | 3
	DB -8, 0, $47, $60 | 3
	DB -16, 0, $47, $20 | 3
	DB -16, -8, $47, $00 | 3
	DB -24, -3, $40, $00 | 7
	DB -24, 5, $41, $00 | 7

metasprite_enemy_donut_left0:
	DB 11
	DB -24, -12, $42, $00 | 3
	DB -24, -4, $45, $40 | 3
	DB -24, 4, $42, $20 | 3
	DB -16, -12, $43, $00 | 3
	DB -16, 4, $43, $20 | 3
	DB -16, -4, $44, $00 | 3
	DB -8, -4, $45, $00 | 3
	DB -8, -12, $42, $40 | 3
	DB -8, 4, $42, $60 | 3
	DB -24, -5, $40, $20 | 7
	DB -24, -13, $41, $20 | 7

metasprite_enemy_donut_left1:
	DB 11
	DB -28, -12, $42, $00 | 3
	DB -28, -4, $45, $40 | 3
	DB -28, 4, $42, $20 | 3
	DB -20, -12, $43, $00 | 3
	DB -20, 4, $43, $20 | 3
	DB -20, -4, $44, $00 | 3
	DB -12, -4, $45, $00 | 3
	DB -12, -12, $42, $40 | 3
	DB -12, 4, $42, $60 | 3
	DB -28, -5, $40, $20 | 7
	DB -28, -13, $41, $20 | 7

metasprite_enemy_donut_left2:
	DB 10
	DB -8, -16, $46, $40 | 3
	DB -16, -16, $46, $00 | 3
	DB -16, 8, $46, $20 | 3
	DB -8, 8, $46, $60 | 3
	DB -8, -8, $47, $40 | 3
	DB -8, 0, $47, $60 | 3
	DB -16, 0, $47, $20 | 3
	DB -16, -8, $47, $00 | 3
	DB -24, -5, $40, $20 | 7
	DB -24, -13, $41, $20 | 7

metasprite_enemy_donut_up0:
	DB 9
	DB -24, -12, $42, $00 | 3
	DB -16, -12, $43, $00 | 3
	DB -16, 4, $43, $20 | 3
	DB -16, -4, $44, $00 | 3
	DB -8, -4, $45, $00 | 3
	DB -8, -12, $42, $40 | 3
	DB -8, 4, $42, $60 | 3
	DB -24, 4, $42, $20 | 3
	DB -24, -4, $45, $40 | 3

metasprite_enemy_donut_up1:
	DB 9
	DB -28, -12, $42, $00 | 3
	DB -20, -12, $43, $00 | 3
	DB -20, 4, $43, $20 | 3
	DB -20, -4, $44, $00 | 3
	DB -12, -4, $45, $00 | 3
	DB -12, -12, $42, $40 | 3
	DB -12, 4, $42, $60 | 3
	DB -28, 4, $42, $20 | 3
	DB -28, -4, $45, $40 | 3

metasprite_enemy_donut_up2:
	DB 8
	DB -8, -16, $46, $40 | 3
	DB -16, -16, $46, $00 | 3
	DB -16, 8, $46, $20 | 3
	DB -8, 8, $46, $60 | 3
	DB -8, -8, $47, $40 | 3
	DB -8, 0, $47, $60 | 3
	DB -16, 0, $47, $20 | 3
	DB -16, -8, $47, $00 | 3

metasprite_enemy_donut_hit0:
	DB 9
	DB -24, -12, $48, $00 | 3
	DB -24, -4, $49, $00 | 3
	DB -24, 4, $4a, $00 | 3
	DB -16, -12, $4b, $00 | 3
	DB -16, -4, $4c, $00 | 3
	DB -16, 4, $4d, $00 | 3
	DB -8, -12, $4e, $00 | 3
	DB -8, -4, $4f, $00 | 3
	DB -8, 4, $50, $00 | 3

metasprite_enemy_donut_hit1:
	DB 9
	DB -16, 4, $4b, $20 | 3
	DB -24, 4, $48, $20 | 3
	DB -24, -4, $49, $20 | 3
	DB -24, -12, $4a, $20 | 3
	DB -16, -4, $4c, $20 | 3
	DB -16, -12, $4d, $20 | 3
	DB -8, 4, $4e, $20 | 3
	DB -8, -4, $4f, $20 | 3
	DB -8, -12, $50, $20 | 3

metasprite_enemy_donut_hit2:
	DB 9
	DB -8, -12, $4a, $60 | 3
	DB -8, -4, $49, $60 | 3
	DB -8, 4, $48, $60 | 3
	DB -16, 4, $4b, $60 | 3
	DB -16, -4, $4c, $60 | 3
	DB -16, -12, $4d, $60 | 3
	DB -24, 4, $4e, $60 | 3
	DB -24, -4, $4f, $60 | 3
	DB -24, -12, $50, $60 | 3

metasprite_enemy_donut_hit3:
	DB 9
	DB -8, -12, $48, $40 | 3
	DB -8, -4, $49, $40 | 3
	DB -8, 4, $4a, $40 | 3
	DB -16, -12, $4b, $40 | 3
	DB -16, -4, $4c, $40 | 3
	DB -16, 4, $4d, $40 | 3
	DB -24, -12, $4e, $40 | 3
	DB -24, -4, $4f, $40 | 3
	DB -24, 4, $50, $40 | 3

metasprite_enemy_donut_hit4:
	DB 6
	DB -16, -12, $51, $00 | 3
	DB -16, -4, $52, $00 | 3
	DB -16, 4, $53, $00 | 3
	DB -8, -12, $54, $00 | 3
	DB -8, -4, $55, $00 | 3
	DB -8, 4, $56, $00 | 3

metasprite_enemy_donut_hit5:
	DB 6
	DB -16, 4, $51, $20 | 3
	DB -16, -4, $52, $20 | 3
	DB -16, -12, $53, $20 | 3
	DB -8, 4, $54, $20 | 3
	DB -8, -4, $55, $20 | 3
	DB -8, -12, $56, $20 | 3

metasprite_enemy_donut_hit6:
	DB 6
	DB -8, 4, $51, $60 | 3
	DB -8, -4, $52, $60 | 3
	DB -8, -12, $53, $60 | 3
	DB -16, 4, $54, $60 | 3
	DB -16, -4, $55, $60 | 3
	DB -16, -12, $56, $60 | 3

metasprite_enemy_donut_hit7:
	DB 6
	DB -8, 4, $53, $40 | 3
	DB -8, -4, $52, $40 | 3
	DB -8, -12, $51, $40 | 3
	DB -16, -12, $54, $40 | 3
	DB -16, -4, $55, $40 | 3
	DB -16, 4, $56, $40 | 3

metasprite_enemy_donut_die0:
	DB 6
	DB -8, -16, $58, $00 | 3
	DB -8, -8, $59, $00 | 3
	DB -8, 0, $59, $20 | 3
	DB -8, 8, $58, $20 | 3
	DB -16, 6, $57, $20 | 3
	DB -16, -14, $57, $00 | 3

metasprite_enemy_donut_die1:
	DB 3
	DB -8, -12, $5a, $00 | 3
	DB -8, -4, $5b, $00 | 3
	DB -8, 4, $5a, $20 | 3

metasprite_password_arrow:
	DB 1
	DB -8, 0, $f6, $00 | 1

metasprite_6586:
	DB 1
	DB -8, 0, $f4, $00

metasprite_bread_top_bounce0:
	DB 4
	DB -8, 0, $92, $00 | 1
	DB -8, -8, $92, $00 | 1
	DB -9, -16, $91, $00 | 1
	DB -9, 8, $93, $00 | 1

metasprite_bread_top_bounce1:
	DB 4
	DB -12, -16, $91, $00 | 1
	DB -12, 8, $93, $00 | 1
	DB -13, -8, $92, $00 | 1
	DB -13, 0, $92, $00 | 1

metasprite_bread_top_bounce2:
	DB 4
	DB -8, -8, $92, $00 | 1
	DB -8, 0, $92, $00 | 1
	DB -8, -16, $91, $00 | 1
	DB -8, 8, $93, $00 | 1

metasprite_bread_top_bounce3:
	DB 4
	DB -10, -16, $91, $00 | 1
	DB -10, 8, $93, $00 | 1
	DB -11, -8, $92, $00 | 1
	DB -11, 0, $92, $00 | 1

metasprite_bread_top_bounce4:
	DB 4
	DB -8, -16, $80, $00 | 1
	DB -8, -8, $81, $00 | 1
	DB -8, 0, $81, $00 | 1
	DB -8, 8, $82, $00 | 1

metasprite_bread_bottom_bounce0:
	DB 4
	DB -8, 0, $95, $00 | 1
	DB -8, -8, $95, $00 | 1
	DB -9, -16, $94, $00 | 1
	DB -9, 8, $96, $00 | 1

metasprite_bread_bottom_bounce1:
	DB 4
	DB -12, -16, $94, $00 | 1
	DB -12, 8, $96, $00 | 1
	DB -13, -8, $95, $00 | 1
	DB -13, 0, $95, $00 | 1

metasprite_bread_bottom_bounce2:
	DB 4
	DB -8, -8, $95, $00 | 1
	DB -8, 0, $95, $00 | 1
	DB -8, -16, $94, $00 | 1
	DB -8, 8, $96, $00 | 1

metasprite_bread_bottom_bounce3:
	DB 4
	DB -10, -16, $94, $00 | 1
	DB -10, 8, $96, $00 | 1
	DB -11, -8, $95, $00 | 1
	DB -11, 0, $95, $00 | 1

metasprite_bread_bottom_bounce4:
	DB 4
	DB -8, -16, $83, $00 | 1
	DB -8, -8, $84, $00 | 1
	DB -8, 0, $84, $00 | 1
	DB -8, 8, $85, $00 | 1

metasprite_meat_bounce0:
	DB 4
	DB -8, 0, $98, $00 | 2
	DB -8, -8, $98, $00 | 2
	DB -9, -16, $97, $00 | 2
	DB -9, 8, $99, $00 | 2

metasprite_meat_bounce1:
	DB 4
	DB -12, -16, $97, $00 | 2
	DB -12, 8, $99, $00 | 2
	DB -13, -8, $98, $00 | 2
	DB -13, 0, $98, $00 | 2

metasprite_meat_bounce2:
	DB 4
	DB -8, -8, $98, $00 | 2
	DB -8, 0, $98, $00 | 2
	DB -8, -16, $97, $00 | 2
	DB -8, 8, $99, $00 | 2

metasprite_meat_bounce3:
	DB 4
	DB -10, -16, $97, $00 | 2
	DB -10, 8, $99, $00 | 2
	DB -11, -8, $98, $00 | 2
	DB -11, 0, $98, $00 | 2

metasprite_meat_bounce4:
	DB 4
	DB -8, -16, $86, $00 | 2
	DB -8, -8, $87, $00 | 2
	DB -8, 0, $87, $00 | 2
	DB -8, 8, $88, $00 | 2

metasprite_cheese_bounce0:
	DB 4
	DB -8, -8, $9b, $00 | 1
	DB -9, 8, $9c, $00 | 1
	DB -9, -16, $9a, $00 | 1
	DB -8, 0, $9d, $00 | 1

metasprite_cheese_bounce1:
	DB 4
	DB -12, 8, $9c, $00 | 1
	DB -13, -8, $9b, $00 | 1
	DB -12, -16, $9a, $00 | 1
	DB -13, 0, $9d, $00 | 1

metasprite_cheese_bounce2:
	DB 4
	DB -8, -8, $9b, $00 | 1
	DB -8, 8, $9c, $00 | 1
	DB -8, -16, $9a, $00 | 1
	DB -8, 0, $9d, $00 | 1

metasprite_cheese_bounce3:
	DB 4
	DB -10, 8, $9c, $00 | 1
	DB -11, -8, $9b, $00 | 1
	DB -10, -16, $9a, $00 | 1
	DB -11, 0, $9d, $00 | 1

metasprite_cheese_bounce4:
	DB 4
	DB -8, -8, $8a, $00 | 1
	DB -8, 8, $8b, $00 | 1
	DB -8, -16, $89, $00 | 1
	DB -8, 0, $8c, $00 | 1

metasprite_lettuce_bounce0:
	DB 4
	DB -8, -8, $9f, $00 | 3
	DB -9, 8, $a0, $00 | 3
	DB -9, -16, $9e, $00 | 3
	DB -8, 0, $a1, $00 | 3

metasprite_lettuce_bounce1:
	DB 4
	DB -12, 8, $a0, $00 | 3
	DB -13, -8, $9f, $00 | 3
	DB -12, -16, $9e, $00 | 3
	DB -13, 0, $a1, $00 | 3

metasprite_lettuce_bounce2:
	DB 4
	DB -8, -8, $9f, $00 | 3
	DB -8, 8, $a0, $00 | 3
	DB -8, -16, $9e, $00 | 3
	DB -8, 0, $a1, $00 | 3

metasprite_lettuce_bounce3:
	DB 4
	DB -10, 8, $a0, $00 | 3
	DB -11, -8, $9f, $00 | 3
	DB -10, -16, $9e, $00 | 3
	DB -11, 0, $a1, $00 | 3

metasprite_lettuce_bounce4:
	DB 4
	DB -8, -16, $8d, $00 | 3
	DB -8, -8, $8e, $00 | 3
	DB -8, 8, $8f, $00 | 3
	DB -8, 0, $90, $00 | 3

metasprite_bread_top_large_bounce0:
	DB 6
	DB -8, 0, $92, $00 | 1
	DB -8, -8, $92, $00 | 1
	DB -8, -16, $92, $00 | 1
	DB -8, 8, $92, $00 | 1
	DB -9, -24, $91, $00 | 1
	DB -9, 16, $93, $00 | 1

metasprite_bread_top_large_bounce1:
	DB 6
	DB -13, -16, $92, $00 | 1
	DB -13, 8, $92, $00 | 1
	DB -13, -8, $92, $00 | 1
	DB -13, 0, $92, $00 | 1
	DB -12, 16, $93, $00 | 1
	DB -12, -24, $91, $00 | 1

metasprite_bread_top_large_bounce2:
	DB 6
	DB -8, -8, $92, $00 | 1
	DB -8, 0, $92, $00 | 1
	DB -8, -16, $92, $00 | 1
	DB -8, 8, $92, $00 | 1
	DB -8, -24, $91, $00 | 1
	DB -8, 16, $93, $00 | 1

metasprite_bread_top_large_bounce3:
	DB 6
	DB -10, -24, $91, $00 | 1
	DB -10, 16, $93, $00 | 1
	DB -11, -8, $92, $00 | 1
	DB -11, 0, $92, $00 | 1
	DB -11, -16, $92, $00 | 1
	DB -11, 8, $92, $00 | 1

metasprite_bread_top_large_bounce4:
	DB 6
	DB -8, -24, $80, $00 | 1
	DB -8, -8, $81, $00 | 1
	DB -8, 0, $81, $00 | 1
	DB -8, 8, $81, $00 | 1
	DB -8, -16, $81, $00 | 1
	DB -8, 16, $82, $00 | 1

metasprite_bread_bottom_large_bounce0:
	DB 6
	DB -8, 0, $95, $00 | 1
	DB -8, -8, $95, $00 | 1
	DB -8, -16, $95, $00 | 1
	DB -8, 8, $95, $00 | 1
	DB -9, -24, $94, $00 | 1
	DB -9, 16, $96, $00 | 1

metasprite_bread_bottom_large_bounce1:
	DB 6
	DB -12, -24, $94, $00 | 1
	DB -12, 16, $96, $00 | 1
	DB -13, -8, $95, $00 | 1
	DB -13, 0, $95, $00 | 1
	DB -13, -16, $95, $00 | 1
	DB -13, 8, $95, $00 | 1

metasprite_bread_bottom_large_bounce2:
	DB 6
	DB -8, -16, $95, $00 | 1
	DB -8, 8, $95, $00 | 1
	DB -8, -8, $95, $00 | 1
	DB -8, 0, $95, $00 | 1
	DB -8, -24, $94, $00 | 1
	DB -8, 16, $96, $00 | 1

metasprite_bread_bottom_large_bounce3:
	DB 6
	DB -10, -24, $94, $00 | 1
	DB -10, 16, $96, $00 | 1
	DB -11, -8, $95, $00 | 1
	DB -11, 0, $95, $00 | 1
	DB -11, 8, $95, $00 | 1
	DB -11, -16, $95, $00 | 1

metasprite_bread_bottom_large_bounce4:
	DB 6
	DB -8, -24, $83, $00 | 1
	DB -8, -8, $84, $00 | 1
	DB -8, 0, $84, $00 | 1
	DB -8, 8, $84, $00 | 1
	DB -8, -16, $84, $00 | 1
	DB -8, 16, $85, $00 | 1

metasprite_meat_large_bounce0:
	DB 6
	DB -8, 0, $98, $00 | 2
	DB -8, -8, $98, $00 | 2
	DB -8, -16, $98, $00 | 2
	DB -8, 8, $98, $00 | 2
	DB -9, -24, $97, $00 | 2
	DB -9, 16, $99, $00 | 2

metasprite_meat_large_bounce1:
	DB 6
	DB -12, -24, $97, $00 | 2
	DB -12, 16, $99, $00 | 2
	DB -13, -8, $98, $00 | 2
	DB -13, 0, $98, $00 | 2
	DB -13, -16, $98, $00 | 2
	DB -13, 8, $98, $00 | 2

metasprite_meat_large_bounce2:
	DB 6
	DB -8, -8, $98, $00 | 2
	DB -8, 0, $98, $00 | 2
	DB -8, -16, $98, $00 | 2
	DB -8, 8, $98, $00 | 2
	DB -8, -24, $97, $00 | 2
	DB -8, 16, $99, $00 | 2

metasprite_meat_large_bounce3:
	DB 6
	DB -10, -24, $97, $00 | 2
	DB -10, 16, $99, $00 | 2
	DB -11, -8, $98, $00 | 2
	DB -11, 0, $98, $00 | 2
	DB -11, -16, $98, $00 | 2
	DB -11, 8, $98, $00 | 2

metasprite_meat_large_bounce4:
	DB 6
	DB -8, -24, $86, $00 | 2
	DB -8, -8, $87, $00 | 2
	DB -8, 0, $87, $00 | 2
	DB -8, 8, $87, $00 | 2
	DB -8, -16, $87, $00 | 2
	DB -8, 16, $88, $00 | 2

metasprite_cheese_large_bounce0:
	DB 6
	DB -9, -24, $9a, $00 | 1
	DB -8, 0, $9d, $00 | 1
	DB -8, 8, $9d, $00 | 1
	DB -8, -16, $9b, $00 | 1
	DB -8, -8, $9b, $00 | 1
	DB -9, 16, $9c, $00 | 1

metasprite_cheese_large_bounce1:
	DB 6
	DB -12, 16, $9c, $00 | 1
	DB -13, -16, $9b, $00 | 1
	DB -13, -8, $9b, $00 | 1
	DB -12, -24, $9a, $00 | 1
	DB -13, 8, $9d, $00 | 1
	DB -13, 0, $9d, $00 | 1

metasprite_cheese_large_bounce2:
	DB 6
	DB -8, -16, $9b, $00 | 1
	DB -8, -8, $9b, $00 | 1
	DB -8, 16, $9c, $00 | 1
	DB -8, -24, $9a, $00 | 1
	DB -8, 0, $9d, $00 | 1
	DB -8, 8, $9d, $00 | 1

metasprite_cheese_large_bounce3:
	DB 6
	DB -10, 16, $9c, $00 | 1
	DB -11, -8, $9b, $00 | 1
	DB -11, -16, $9b, $00 | 1
	DB -10, -24, $9a, $00 | 1
	DB -11, 0, $9d, $00 | 1
	DB -11, 8, $9d, $00 | 1

metasprite_cheese_large_bounce4:
	DB 6
	DB -8, -8, $8a, $00 | 1
	DB -8, -16, $8a, $00 | 1
	DB -8, 16, $8b, $00 | 1
	DB -8, -24, $89, $00 | 1
	DB -8, 0, $8c, $00 | 1
	DB -8, 8, $8c, $00 | 1

metasprite_lettuce_large_bounce0:
	DB 6
	DB -8, -16, $9f, $00 | 3
	DB -8, 0, $9f, $00 | 3
	DB -9, 16, $a0, $00 | 3
	DB -9, -24, $9e, $00 | 3
	DB -8, 8, $a1, $00 | 3
	DB -8, -8, $a1, $00 | 3

metasprite_lettuce_large_bounce1:
	DB 6
	DB -12, 16, $a0, $00 | 3
	DB -13, -8, $a1, $00 | 3
	DB -13, 8, $a1, $00 | 3
	DB -12, -24, $9e, $00 | 3
	DB -13, 0, $9f, $00 | 3
	DB -13, -16, $9f, $00 | 3

metasprite_lettuce_large_bounce2:
	DB 6
	DB -8, -8, $a1, $00 | 3
	DB -8, 8, $a1, $00 | 3
	DB -8, 16, $a0, $00 | 3
	DB -8, -24, $9e, $00 | 3
	DB -8, 0, $9f, $00 | 3
	DB -8, -16, $9f, $00 | 3

metasprite_lettuce_large_bounce3:
	DB 6
	DB -10, 16, $a0, $00 | 3
	DB -11, -8, $a1, $00 | 3
	DB -11, 8, $a1, $00 | 3
	DB -10, -24, $9e, $00 | 3
	DB -11, 0, $9f, $00 | 3
	DB -11, -16, $9f, $00 | 3

metasprite_lettuce_large_bounce4:
	DB 6
	DB -8, -24, $8d, $00 | 3
	DB -8, -8, $90, $00 | 3
	DB -8, 8, $90, $00 | 3
	DB -8, 16, $8f, $00 | 3
	DB -8, 0, $8e, $00 | 3
	DB -8, -16, $8e, $00 | 3

metasprite_bread_top:
	DB 4
	DB -7, -16, $91, $00 | 1
	DB -7, -8, $92, $00 | 1
	DB -7, 0, $92, $00 | 1
	DB -7, 8, $93, $00 | 1

metasprite_bread_bottom:
	DB 4
	DB -7, -16, $94, $00 | 1
	DB -7, -8, $95, $00 | 1
	DB -7, 0, $95, $00 | 1
	DB -7, 8, $96, $00 | 1

metasprite_meat:
	DB 4
	DB -7, -16, $97, $00 | 2
	DB -7, -8, $98, $00 | 2
	DB -7, 0, $98, $00 | 2
	DB -7, 8, $99, $00 | 2

metasprite_cheese:
	DB 4
	DB -7, -16, $9a, $00 | 1
	DB -7, -8, $9b, $00 | 1
	DB -7, 0, $9d, $00 | 1
	DB -7, 8, $9c, $00 | 1

metasprite_lettuce:
	DB 4
	DB -7, -16, $9e, $00 | 3
	DB -7, -8, $9f, $00 | 3
	DB -7, 0, $a1, $00 | 3
	DB -7, 8, $a0, $00 | 3

metasprite_bread_top_large:
	DB 6
	DB -7, -24, $91, $00 | 1
	DB -7, -8, $92, $00 | 1
	DB -7, -16, $92, $00 | 1
	DB -7, 8, $92, $00 | 1
	DB -7, 0, $92, $00 | 1
	DB -7, 16, $93, $00 | 1

metasprite_bread_bottom_large:
	DB 6
	DB -7, -24, $94, $00 | 1
	DB -7, -8, $95, $00 | 1
	DB -7, 8, $95, $00 | 1
	DB -7, -16, $95, $00 | 1
	DB -7, 0, $95, $00 | 1
	DB -7, 16, $96, $00 | 1

metasprite_meat_large:
	DB 6
	DB -7, -24, $97, $00 | 2
	DB -7, -8, $98, $00 | 2
	DB -7, -16, $98, $00 | 2
	DB -7, 0, $98, $00 | 2
	DB -7, 8, $98, $00 | 2
	DB -7, 16, $99, $00 | 2

metasprite_cheese_large:
	DB 6
	DB -7, -24, $9a, $00 | 1
	DB -7, -8, $9b, $00 | 1
	DB -7, -16, $9b, $00 | 1
	DB -7, 0, $9d, $00 | 1
	DB -7, 8, $9d, $00 | 1
	DB -7, 16, $9c, $00 | 1

metasprite_lettuce_large:
	DB 6
	DB -7, -24, $9e, $00 | 3
	DB -7, -16, $9f, $00 | 3
	DB -7, 0, $9f, $00 | 3
	DB -7, 8, $a1, $00 | 3
	DB -7, -8, $a1, $00 | 3
	DB -7, 16, $a0, $00 | 3

metasprite_stars0:
	DB 4
	DB -16, -8, $30, $00 | 1
	DB -8, -8, $31, $00 | 1
	DB -8, 0, $31, $20 | 1
	DB -16, 0, $30, $20 | 1

metasprite_stars1:
	DB 4
	DB -24, 5, $01, $00 | 1
	DB -24, -13, $01, $00 | 1
	DB -28, -8, $01, $00 | 1
	DB -28, 0, $01, $00 | 1

metasprite_stars2:
	DB 5
	DB -44, -4, $01, $00 | 1
	DB -37, -18, $01, $00 | 1
	DB -37, 10, $01, $00 | 1
	DB -41, -12, $01, $00 | 1
	DB -41, 4, $01, $00 | 1

metasprite_stars3:
	DB 5
	DB -49, -4, $01, $00 | 1
	DB -42, -20, $01, $00 | 1
	DB -47, -13, $01, $00 | 1
	DB -47, 5, $01, $00 | 1
	DB -42, 12, $01, $00 | 1

metasprite_stars4:
	DB 5
	DB -46, -4, $01, $00 | 1
	DB -44, -13, $01, $00 | 1
	DB -44, 5, $01, $00 | 1
	DB -39, -21, $01, $00 | 1
	DB -39, 13, $01, $00 | 1

metasprite_go0:
	DB 2
	DB -32, 0, $d0, $00
	DB -36, 8, $d8, $00

metasprite_go1:
	DB 2
	DB -50, 14, $d8, $00
	DB -46, 6, $d0, $00

metasprite_fire0:
	DB 4
	DB -16, -8, $34, $00 | 3
	DB -16, 0, $35, $00 | 3
	DB -8, -8, $36, $00 | 3
	DB -8, 0, $37, $00 | 3

metasprite_fire1:
	DB 6
	DB -16, 0, $34, $20 | 3
	DB -16, -8, $35, $20 | 3
	DB -8, 0, $36, $20 | 3
	DB -8, -8, $37, $20 | 3
	DB -24, -8, $34, $00 | 3
	DB -24, 0, $35, $00 | 3

metasprite_fire2:
	DB 6
	DB -17, -7, $34, $00 | 3
	DB -17, 1, $35, $00 | 3
	DB -9, -7, $36, $00 | 3
	DB -9, 1, $37, $00 | 3
	DB -32, -8, $3e, $00 | 3
	DB -32, 0, $3e, $40 | 3

metasprite_fire3:
	DB 6
	DB -17, -1, $34, $20 | 3
	DB -17, -9, $35, $20 | 3
	DB -9, -1, $36, $20 | 3
	DB -9, -9, $37, $20 | 3
	DB -40, -8, $3c, $00 | 3
	DB -48, 0, $3c, $20 | 3

metasprite_cutscene_smoke0:
	DB 18
	DB -8, -8, $3b, $40 | 7
	DB -12, -14, $3b, $40 | 7
	DB -17, -16, $3b, $40 | 7
	DB -23, -19, $3b, $40 | 7
	DB -29, -21, $3b, $40 | 7
	DB -29, -13, $3b, $20 | 7
	DB -24, -12, $3b, $20 | 7
	DB -16, -11, $3b, $60 | 7
	DB -34, -17, $3c, $00 | 7
	DB -16, 0, $3b, $60 | 7
	DB -20, 6, $3b, $60 | 7
	DB -24, 3, $3b, $40 | 7
	DB -24, 7, $3b, $60 | 7
	DB -31, 11, $3b, $60 | 7
	DB -32, 4, $3b, $00 | 7
	DB -37, 5, $3b, $00 | 7
	DB -37, 13, $3b, $60 | 7
	DB -42, 9, $3c, $20 | 7

metasprite_cutscene_smoke1:
	DB 17
	DB -9, -10, $3b, $40 | 7
	DB -14, -15, $3b, $40 | 7
	DB -37, -21, $3c, $20 | 7
	DB -26, -21, $3b, $40 | 7
	DB -19, -18, $3b, $40 | 7
	DB -31, -14, $3b, $20 | 7
	DB -26, -12, $3b, $20 | 7
	DB -18, -11, $3b, $60 | 7
	DB -9, -7, $3b, $20 | 7
	DB -17, -1, $3b, $00 | 7
	DB -17, 2, $3b, $60 | 7
	DB -22, 7, $3b, $60 | 7
	DB -26, 3, $3b, $40 | 7
	DB -34, 4, $3b, $00 | 7
	DB -39, 6, $3b, $00 | 7
	DB -34, 13, $3b, $60 | 7
	DB -45, 13, $3c, $00 | 7

metasprite_cutscene_smoke2:
	DB 20
	DB -28, -12, $3b, $20 | 7
	DB -21, -11, $3b, $60 | 7
	DB -37, -14, $3c, $00 | 7
	DB -28, -22, $3b, $40 | 7
	DB -21, -19, $3b, $40 | 7
	DB -16, -17, $3b, $40 | 7
	DB -10, -12, $3b, $40 | 7
	DB -12, -8, $3b, $20 | 7
	DB -8, -8, $3b, $40 | 7
	DB -34, -22, $3d, $20 | 7
	DB -16, 0, $3b, $60 | 7
	DB -20, 0, $3b, $00 | 7
	DB -18, 4, $3b, $60 | 7
	DB -24, 9, $3b, $60 | 7
	DB -29, 11, $3b, $60 | 7
	DB -36, 14, $3b, $60 | 7
	DB -29, 3, $3b, $40 | 7
	DB -36, 4, $3b, $00 | 7
	DB -45, 6, $3c, $20 | 7
	DB -42, 14, $3d, $00 | 7

metasprite_cutscene_smoke3:
	DB 16
	DB -15, -9, $3b, $20 | 7
	DB -9, -10, $3b, $40 | 7
	DB -17, -19, $3b, $40 | 7
	DB -11, -14, $3b, $40 | 7
	DB -24, -21, $3b, $40 | 7
	DB -32, -21, $3d, $40 | 7
	DB -30, -13, $3b, $20 | 7
	DB -23, -11, $3b, $60 | 7
	DB -17, 2, $3b, $60 | 7
	DB -19, 6, $3b, $60 | 7
	DB -25, 11, $3b, $60 | 7
	DB -23, 1, $3b, $00 | 7
	DB -31, 3, $3b, $40 | 7
	DB -32, 13, $3b, $60 | 7
	DB -38, 5, $3b, $00 | 7
	DB -40, 13, $3d, $60 | 7

metasprite_cutscene_smoke4:
	DB 18
	DB -27, -12, $3b, $20 | 7
	DB -10, -13, $3b, $40 | 7
	DB -14, -10, $3b, $60 | 7
	DB -14, -16, $3b, $40 | 7
	DB -19, -18, $3b, $40 | 7
	DB -27, -21, $3b, $40 | 7
	DB -23, -11, $3c, $00 | 7
	DB -8, -8, $3d, $20 | 7
	DB -32, -16, $3d, $00 | 7
	DB -40, 8, $3d, $20 | 7
	DB -16, 0, $3d, $00 | 7
	DB -18, 5, $3b, $60 | 7
	DB -22, 2, $3b, $40 | 7
	DB -22, 8, $3b, $60 | 7
	DB -27, 10, $3b, $60 | 7
	DB -31, 3, $3c, $20 | 7
	DB -35, 4, $3b, $00 | 7
	DB -35, 13, $3b, $60 | 7

metasprite_cutscene_door0:
	DB 4
	DB -16, -8, $33, $10 | 1
	DB -16, 0, $33, $30 | 1
	DB -8, 0, $33, $70 | 1
	DB -8, -8, $33, $50 | 1

metasprite_cutscene_door1:
	DB 4
	DB -8, -10, $33, $50 | 1
	DB -16, -10, $33, $10 | 1
	DB -16, 2, $33, $30 | 1
	DB -8, 2, $33, $70 | 1

metasprite_cutscene_door2:
	DB 4
	DB -8, -12, $33, $50 | 1
	DB -16, -12, $33, $10 | 1
	DB -16, 4, $33, $30 | 1
	DB -8, 4, $33, $70 | 1

metasprite_cutscene_door3:
	DB 4
	DB -8, -16, $33, $50 | 1
	DB -16, -16, $33, $10 | 1
	DB -16, 8, $33, $30 | 1
	DB -8, 8, $33, $70 | 1

metasprite_ending0:
	DB 18
	DB -8, 0, $5c, $00 | 3
	DB -8, -8, $5c, $00 | 3
	DB -8, -16, $5c, $00 | 3
	DB -8, -24, $5c, $00 | 3
	DB -8, -32, $5c, $00 | 3
	DB -8, 8, $5c, $00 | 3
	DB -8, 16, $5c, $00 | 3
	DB -8, 24, $5c, $00 | 3
	DB -16, -8, $38, $10 | 7
	DB -16, 0, $38, $30 | 7
	DB -16, -16, $74, $30 | 7
	DB -16, 8, $74, $10 | 7
	DB -16, -24, $72, $10 | 7
	DB -16, 16, $72, $30 | 7
	DB -16, -32, $7a, $10 | 7
	DB -16, 24, $7a, $30 | 7
	DB -24, -10, $7b, $10 | 7
	DB -24, 0, $27, $10 | 7

metasprite_ending1:
	DB 21
	DB -8, 0, $5c, $00 | 3
	DB -8, -8, $5c, $00 | 3
	DB -8, -16, $5c, $00 | 3
	DB -8, -24, $5c, $00 | 3
	DB -8, -32, $5c, $00 | 3
	DB -8, 8, $5c, $00 | 3
	DB -8, 16, $5c, $00 | 3
	DB -8, 24, $5c, $00 | 3
	DB -16, -24, $74, $10 | 7
	DB -16, 16, $74, $30 | 7
	DB -16, 24, $39, $30 | 7
	DB -16, -32, $39, $10 | 7
	DB -16, -16, $38, $10 | 7
	DB -16, 8, $38, $30 | 7
	DB -16, -8, $73, $10 | 7
	DB -16, 0, $73, $30 | 7
	DB -24, -16, $27, $10 | 7
	DB -24, -22, $7b, $10 | 7
	DB -24, 14, $7b, $30 | 7
	DB -24, 8, $27, $30 | 7
	DB -20, -4, $71, $10 | 7

metasprite_ending2:
	DB 18
	DB -8, 0, $5c, $00 | 3
	DB -8, -8, $5c, $00 | 3
	DB -8, -16, $5c, $00 | 3
	DB -8, -24, $5c, $00 | 3
	DB -8, -32, $5c, $00 | 3
	DB -8, 8, $5c, $00 | 3
	DB -8, 16, $5c, $00 | 3
	DB -8, 24, $5c, $00 | 3
	DB -16, -24, $38, $10 | 7
	DB -16, 16, $38, $30 | 7
	DB -16, 26, $71, $10 | 7
	DB -16, -34, $71, $30 | 7
	DB -16, -16, $73, $10 | 7
	DB -16, 8, $73, $30 | 7
	DB -16, 0, $72, $30 | 7
	DB -16, -8, $72, $10 | 7
	DB -21, -28, $27, $30 | 7
	DB -21, 20, $27, $30 | 7

metasprite_ending3:
	DB 19
	DB -8, 0, $5c, $00 | 3
	DB -8, -8, $5c, $00 | 3
	DB -8, -16, $5c, $00 | 3
	DB -8, -24, $5c, $00 | 3
	DB -8, -32, $5c, $00 | 3
	DB -8, 8, $5c, $00 | 3
	DB -8, 16, $5c, $00 | 3
	DB -8, 24, $5c, $00 | 3
	DB -16, -16, $72, $10 | 7
	DB -16, 8, $72, $30 | 7
	DB -16, 0, $74, $30 | 7
	DB -16, -8, $74, $10 | 7
	DB -16, -24, $73, $10 | 7
	DB -16, 16, $73, $30 | 7
	DB -16, -32, $38, $10 | 7
	DB -16, 24, $38, $30 | 7
	DB -20, -4, $7b, $10 | 7
	DB -20, 32, $3a, $70 | 7
	DB -20, -40, $3a, $50 | 7

metasprite_cutscene_boss0:
	DB 6
	DB -14, -8, $5f, $00
	DB -22, -8, $5e, $00
	DB -6, -8, $60, $00 | 7
	DB -6, 0, $60, $20 | 7
	DB -14, 0, $5f, $20
	DB -22, 0, $5e, $20

metasprite_cutscene_boss1:
	DB 7
	DB -14, -8, $5f, $00
	DB -22, -8, $5e, $00
	DB -6, -8, $60, $00 | 7
	DB -6, 0, $60, $20 | 7
	DB -14, 0, $5f, $20
	DB -22, 0, $5e, $20
	DB -15, -14, $61, $10 | 7

metasprite_cutscene_boss2:
	DB 7
	DB -14, -8, $5f, $00
	DB -22, -8, $5e, $00
	DB -6, -8, $60, $00 | 7
	DB -6, 0, $60, $20 | 7
	DB -14, 0, $5f, $20
	DB -22, 0, $5e, $20
	DB -15, -16, $61, $10 | 7

metasprite_ending_boss0:
	DB 12
	DB -22, -8, $5e, $00
	DB -22, 0, $5e, $20
	DB -14, 0, $5f, $20
	DB -14, -8, $5f, $00
	DB -6, -8, $60, $00 | 7
	DB -6, 0, $60, $20 | 7
	DB -16, -24, $1a, $20 | 4
	DB -8, -24, $1b, $20 | 4
	DB -14, -31, $70, $00 | 4
	DB -16, 16, $1a, $00 | 4
	DB -8, 16, $1b, $00 | 4
	DB -14, 23, $70, $20 | 4

metasprite_ending_boss1:
	DB 12
	DB -22, -8, $62, $00
	DB -22, 0, $63, $00
	DB -14, -8, $64, $00
	DB -14, 0, $65, $00
	DB -6, -8, $66, $00 | 7
	DB -6, 0, $66, $20 | 7
	DB -22, -14, $75, $00 | 4
	DB -22, 5, $75, $20 | 4
	DB -21, -22, $1a, $00 | 4
	DB -13, -22, $1e, $00 | 4
	DB -22, 13, $1a, $20 | 4
	DB -14, 13, $1e, $20 | 4

metasprite_ending_boss2:
	DB 12
	DB -16, -24, $1a, $20 | 4
	DB -8, -24, $1b, $20 | 4
	DB -14, -31, $70, $00 | 4
	DB -16, 16, $1a, $00 | 4
	DB -8, 16, $1b, $00 | 4
	DB -14, 23, $70, $20
	DB -22, -8, $62, $00
	DB -22, 0, $63, $00
	DB -14, -8, $64, $00
	DB -14, 0, $65, $00
	DB -6, -8, $66, $00 | 7
	DB -6, 0, $66, $20 | 7

metasprite_ending_boss3:
	DB 10
	DB -22, -8, $67, $00
	DB -22, 0, $68, $00
	DB -14, -8, $69, $00
	DB -14, 0, $6a, $00
	DB -6, -8, $66, $00 | 7
	DB -6, 0, $66, $20 | 7
	DB -16, -24, $1a, $00 | 4
	DB -8, -24, $1b, $00 | 4
	DB -8, 16, $1b, $20 | 4
	DB -16, 16, $1a, $20 | 4

metasprite_ending_boss4:
	DB 8
	DB -8, -8, $6c, $00
	DB -8, 0, $6d, $00
	DB -16, 0, $6b, $00
	DB -16, -8, $79, $00
	DB -16, -24, $1a, $20 | 4
	DB -8, -24, $1b, $20 | 4
	DB -16, 16, $1a, $00 | 4
	DB -8, 16, $1b, $00 | 4

metasprite_ending_boss5:
	DB 8
	DB -8, -8, $6c, $00
	DB -8, 0, $6d, $00
	DB -16, 0, $6b, $00
	DB -16, -24, $1a, $00 | 4
	DB -8, -24, $1b, $00 | 4
	DB -16, 16, $1a, $20 | 4
	DB -8, 16, $1b, $20 | 4
	DB -20, -8, $6e, $00

metasprite_ending_boss6:
	DB 8
	DB -8, -8, $6c, $00
	DB -8, 0, $6d, $00
	DB -16, 0, $6b, $00
	DB -16, -24, $1a, $20 | 4
	DB -8, -24, $1b, $20 | 4
	DB -16, 16, $1a, $00 | 4
	DB -8, 16, $1b, $00 | 4
	DB -24, -8, $6f, $00 | 2

metasprite_ending_boss7:
	DB 7
	DB -8, -8, $6c, $00
	DB -8, 0, $6d, $00
	DB -16, 0, $6b, $00
	DB -16, -24, $1a, $00 | 4
	DB -8, -24, $1b, $00 | 4
	DB -16, 16, $1a, $20 | 4
	DB -8, 16, $1b, $20 | 4

metasprite_ending_boss8:
	DB 7
	DB -8, -8, $6c, $00
	DB -8, 0, $6d, $00
	DB -16, 0, $6b, $00
	DB -16, -24, $1a, $20 | 4
	DB -8, -24, $1b, $20 | 4
	DB -16, 16, $1a, $00 | 4
	DB -8, 16, $1b, $00 | 4

metasprite_ending_boss_hit0:
	DB 6
	DB -24, -13, $78, $10 | 1
	DB -16, -8, $78, $50 | 1
	DB -20, -21, $77, $50 | 1
	DB -24, 5, $78, $30 | 1
	DB -16, 5, $78, $70 | 1
	DB -20, 4, $77, $30 | 1

metasprite_ending_boss_hit1:
	DB 6
	DB -20, -24, $77, $30 | 1
	DB -20, -32, $77, $30 | 1
	DB -20, 16, $77, $30 | 1
	DB -20, 24, $77, $30 | 1
	DB -20, -16, $77, $30 | 1
	DB -20, 8, $77, $30 | 1
