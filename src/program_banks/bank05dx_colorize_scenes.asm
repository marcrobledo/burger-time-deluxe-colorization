SECTION "Colorizaion subroutines", ROMX[$4000], BANK[$05]
;a=number of bg palettes to update
;hl=offset to palettes
update_cgb_palettes_bg:
	ld		b, a

	;set CGB update register
	ld		a, $c0
	ldh		[rBCPS], a

.loop:
	ld		e, [hl]
	inc		hl
	ld		a, [hli]
	ld		d, a

	push	hl

	ld		h, d
	ld		l, e

	REPT 2 * 4
		ld		a, [hli]
		ldh		[rBCPD], a
	ENDR

	pop		hl
	dec		b
	jr		nz, .loop

	
	ret

;a=number of obj palettes to update
;hl=offset to palettes
update_cgb_palettes_obj:
	ld		b, a

	;set CGB update register
	ld		a, $c0
	ldh		[rOCPS], a

.loop:
	ld		e, [hl]
	inc		hl
	ld		a, [hli]
	ld		d, a

	push	hl

	ld		h, d
	ld		l, e

	xor		a
	REPT 2 * 1
		ldh		[rOCPD], a ;ignoree first color (transparent color)
	ENDR
	REPT 2 * 3
		ld		a, [hli]
		ldh		[rOCPD], a
	ENDR

	pop		hl
	dec		b
	jr		nz, .loop
	
	ret





colorize_stage:
	ld		hl, _SCRN0
	ld		bc, 32*18
	ld		d, HIGH(_tile_attribute_array)

.loop:
	ld		e, [hl]

	ld		a, 1
	ld		[rVBK], a ;go to CGB VRAM bank 1
	
	ld		a, [de]
	ld		[hli], a

	xor		a
	ld		[rVBK], a ;go to CGB VRAM bank 1

	dec		bc
	ld		a, b
	or		c
	jr		nz, .loop


	ld		a, 1
	ld		[_colorize_vblank_tiles], a


	;get pointer to stage bg palettes
	ld		a, [_current_stage]
	ld		hl, _stage_palettes_bg_pointers
	add		a
	add		l
	ld		l, a
	ld		a, $00
	adc		h
	ld		h, a
	ld		a, [hli]
	ld		h, [hl]
	ld		l, a
	;set bg palettes
	ld		a, 8
	call	update_cgb_palettes_bg

	;get pointer to stage bg palettes
	ld		a, [_current_stage]
	ld		hl, _stage_palettes_obj_pointers
	add		a
	add		l
	ld		l, a
	ld		a, $00
	adc		h
	ld		h, a
	ld		a, [hli]
	ld		h, [hl]
	ld		l, a
	;set obj palettes
	ld		a, 8
	call	update_cgb_palettes_obj

	;set inverted hud
	ld		hl, .enable_inverted_hud_attributes
	call	paint_screen

	ret


.enable_inverted_hud_attributes:
	;hud
	DW $9c00
	DW $0214
	DB 4 | OAMF_BANK1
	;hud - pepper icon
	DW $9c30
	DW $0101
	DB 5 | OAMF_BANK1
	;miss window
	DW $9cc4
	DW $050c
	DB 5
	;end
	DW $0000







_stage_palettes_bg_pointers:
	DW .stage1 ;$00 1-1
	DW .stage1 ;$01 1-2
	DW .stage1 ;$02 1-3
	DW .stage1 ;$03 1-4
	DW .stage2 ;$04 2-1
	DW .stage2 ;$05 2-2
	DW .stage2 ;$06 2-3
	DW .stage2 ;$07 2-4
	DW .stage3 ;$08 3-1
	DW .stage3 ;$09 3-2
	DW .stage3 ;$0a 3-3
	DW .stage3 ;$0b 3-4
	DW .stage4 ;$0c 4-1
	DW .stage4 ;$0d 4-2
	DW .stage4 ;$0e 4-3
	DW .stage4 ;$0f 4-4
	DW .stage5 ;$10 5-1
	DW .stage5 ;$11 5-2
	DW .stage5 ;$12 5-3
	DW .stage5 ;$13 5-4
	DW .stage6 ;$14 6-1
	DW .stage6 ;$15 6-2
	DW .stage6 ;$16 6-3
	DW .stage6 ;$17 6-4
	DW .stage1 ;$18 Multiplayer 1
	DW .stage2 ;$19 Multiplayer 2
	DW .stage3 ;$1a Multiplayer 3
	DW .stage4 ;$1b Multiplayer 4

.stage1:
	DW _palettes_bg.ladders1
	DW _palettes_bg.bread_cheese
	DW _palettes_bg.meat
	DW _palettes_bg.lettuce
	DW _palettes_bg.items_red
	DW _palettes_bg.items_purple
	DW _palettes_bg.background1a
	DW _palettes_bg.background1b
.stage2:
	DW _palettes_bg.ladders2
	DW _palettes_bg.bread_cheese
	DW _palettes_bg.meat
	DW _palettes_bg.lettuce
	DW _palettes_bg.items_red
	DW _palettes_bg.items_purple
	DW _palettes_bg.background2a
	DW _palettes_bg.background2b
.stage3:
	DW _palettes_bg.ladders3
	DW _palettes_bg.bread_cheese
	DW _palettes_bg.meat
	DW _palettes_bg.lettuce
	DW _palettes_bg.items_red
	DW _palettes_bg.items_purple
	DW _palettes_bg.background3a
	DW _palettes_bg.background3b
.stage4:
	DW _palettes_bg.ladders4
	DW _palettes_bg.bread_cheese
	DW _palettes_bg.meat
	DW _palettes_bg.lettuce
	DW _palettes_bg.items_red
	DW _palettes_bg.items_purple
	DW _palettes_bg.background4a
	DW _palettes_bg.background4b
.stage5:
	DW _palettes_bg.ladders5
	DW _palettes_bg.bread_cheese
	DW _palettes_bg.meat
	DW _palettes_bg.lettuce
	DW _palettes_bg.items_red
	DW _palettes_bg.items_purple
	DW _palettes_bg.background5a
	DW _palettes_bg.background5b
.stage6:
	DW _palettes_bg.ladders6
	DW _palettes_bg.bread_cheese
	DW _palettes_bg.meat
	DW _palettes_bg.lettuce
	DW _palettes_bg.items_red
	DW _palettes_bg.items_purple
	DW _palettes_bg.background6a
	DW _palettes_bg.background6b






_stage_palettes_obj_pointers:
	DW .common ;1-1
	DW .common ;1-2
	DW .common ;1-3
	DW .common ;1-4
	DW .common ;2-1
	DW .common ;2-2
	DW .common ;2-3
	DW .common ;2-4
	DW .common ;3-1
	DW .common ;3-2
	DW .common ;3-3
	DW .common ;3-4
	DW .common ;4-1
	DW .common ;4-2
	DW .common ;4-3
	DW .common ;4-4
	DW .common ;5-1
	DW .common ;5-2
	DW .common ;5-3
	DW .common ;5-4
	DW .with_donut ;6-1
	DW .with_donut ;6-2
	DW .with_donut ;6-3
	DW .with_donut ;6-4
	DW .common ;$18 Multiplayer 1
	DW .common ;$19 Multiplayer 2
	DW .common ;$1a Multiplayer 3
	DW .common ;$1b Multiplayer 4

.common:
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.lettuce
	DW _palettes_obj.enemy_hotdog
	DW _palettes_obj.enemy_pickle
	DW _palettes_obj.enemy_chicken
	DW _palettes_obj.enemy_egg
.with_donut:
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.enemy_donut
	DW _palettes_obj.enemy_hotdog
	DW _palettes_obj.enemy_pickle
	DW _palettes_obj.enemy_chicken
	DW _palettes_obj.enemy_egg









colorize_scene:
	;get pointer to static screen
	ld		a, [_current_scene]
	ld		hl, _static_screens
	add		a
	add		l
	ld		l, a
	ld		a, $00
	adc		h
	ld		h, a
	ld		a, [hli]
	ld		h, [hl]
	ld		l, a
	jp		hl






_static_screens:
	DW colorize_title_screen		;$00 title screen
	DW colorize_intro				;$01 intro
	DW do_nothing					;$02 stage 1-1
	DW do_nothing					;$03 stage 1-2
	DW do_nothing					;$04 stage 1-3
	DW do_nothing					;$05 stage 1-4
	DW colorize_cutscene2			;$06 cutscene 2
	DW do_nothing					;$07 stage 2-1
	DW do_nothing					;$08 stage 2-2
	DW do_nothing					;$09 stage 2-3
	DW do_nothing					;$0a stage 2-4
	DW colorize_cutscene3			;$0b cutscene 3
	DW do_nothing					;$0c stage 3-1
	DW do_nothing					;$0d stage 3-2
	DW do_nothing					;$0e stage 3-3
	DW do_nothing					;$0f stage 3-4
	DW colorize_cutscene4			;$10 cutscene 4
	DW do_nothing					;$11 stage 4-1
	DW do_nothing					;$12 stage 4-2
	DW do_nothing					;$13 stage 4-3
	DW do_nothing					;$14 stage 4-4
	DW colorize_cutscene5			;$15 cutscene 5
	DW do_nothing					;$16 stage 5-1
	DW do_nothing					;$17 stage 5-2
	DW do_nothing					;$18 stage 5-3
	DW do_nothing					;$19 stage 5-4
	DW colorize_cutscene6			;$1a cutscene 6
	DW do_nothing					;$1b stage 6-1
	DW do_nothing					;$1c stage 6-2
	DW do_nothing					;$1d stage 6-3
	DW do_nothing					;$1e stage 6-4
	DW colorize_intro				;$1f ending
	DW do_nothing					;$20 stage multiplayer-1
	DW do_nothing					;$21 stage multiplayer-2
	DW do_nothing					;$22 stage multiplayer-3
	DW do_nothing					;$23 stage multiplayer-4
	DW colorize_multiplayer			;$24 multiplayer menu
	DW colorize_password_screen		;$25
	DW do_nothing					;$26 cutscene 5 window
	DW do_nothing					;$27 intro/ending window

do_nothing:
	ret




colorize_cutscene2:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 3
	DW _palettes_bg.ladders1
	DW _palettes_bg.background1a
	DW _palettes_bg.background1b
	DB 5
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.cutscene_fire
	DW _palettes_obj.enemy_hotdog
;attributes
	;bg
	DW $9800
	DW $0614
	DB 2
	;ground
	DW $9900
	DW $0414
	DB 1
	;ground
	DW $98a4
	DW $010a
	DB 1
	;ladder 1
	DW $98c4
	DW $0302
	DB 0
	;ladder 2
	DW $98cc
	DW $0302
	DB 0
	;ladder 3
	DW $9928
	DW $0302
	DB 0
	;end
	DW $0000




colorize_cutscene3:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 2
	DW _palettes_bg.background2a
	DW _palettes_bg.intro_ground
	DB 5
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.cutscene_fire
	DW _palettes_obj.enemy_hotdog
;attributes
	;bg
	DW $9800
	DW $0b14
	DB 0
	;ground
	DW $9960
	DW $0114
	DB 1
	;end
	DW $0000



colorize_cutscene4:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 3
	DW _palettes_bg.ladders4
	DW _palettes_bg.background4a
	DW _palettes_bg.background4b
	DB 5
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.cutscene_fire
	DW _palettes_obj.enemy_hotdog
;attributes
	;ground
	DW $9800
	DW $0c14
	DB 1
	;bg
	DW $982c
	DW $0508
	DB 2
	;bg
	DW $9882
	DW $0202
	DB 2
	;ladder 1
	DW $9864
	DW $0202
	DB 0
	;ladder 2
	DW $982a
	DW $0402
	DB 0
	;ladder 3
	DW $9904
	DW $0302
	DB 0
	;ladder 4
	DW $9960
	DW $0102
	DB 0
	;ladder 5
	DW $996e
	DW $0102
	DB 0
	;end
	DW $0000





colorize_cutscene5:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 5
	DW _palettes_bg.ladders4
	DW _palettes_bg.background4a
	DW _palettes_bg.intro_ground
	DW _palettes_bg.ladders4
	DW _palettes_bg.background5a
	DB 5
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.cutscene_fire
	DW _palettes_obj.enemy_hotdog
;attributes
	;bg
	DW $9800
	DW $1214
	DB 1
	;ladder 1
	DW $9884
	DW $0302
	DB 0
	;ladder 2
	DW $988e
	DW $0302
	DB 0
	;ladder 3
	DW $98e6
	DW $0302
	DB 0
	;ladder 4
	DW $98f0
	DW $0502
	DB 0
	;ladder 5
	DW $9940
	DW $0802
	DB 0
	;ladder 6
	DW $9942
	DW $0402
	DB 0
	;ladder 7
	DW $998c
	DW $0404
	DB 0
	;ladder 8
	DW $99c4
	DW $0402
	DB 0
	;ladder 9
	DW $9a0e
	DW $0202
	DB 0
	;bricks 1
	DW $99c2
	DW $0402
	DB 2
	;bricks 2
	DW $99c6
	DW $0402
	DB 2
	;bricks 3
	DW $9990
	DW $0204
	DB 2
	;bricks 4
	DW $9a12
	DW $0202
	DB 2
	;bg (win)
	DW $9c00
	DW $2014
	DB 4
	;ladder 1 (win)
	DW $9c00
	DW $0202
	DB 3
	;ladder 2 (win)
	DW $9c04
	DW $0502
	DB 3
	;ladder 3 (win)
	DW $9ca2
	DW $0202
	DB 3
	;ladder 4 (win)
	DW $9ce4
	DW $0302
	DB 3
	;ladder 5 (win)
	DW $9d42
	DW $0602
	DB 3
	;ladder 6 (win)
	DW $9dc6
	DW $0202
	DB 3
	;ladder 7 (win)
	DW $9e04
	DW $0602
	DB 3
	;ladder 8 (win)
	DW $9ec0
	DW $0a02
	DB 3
	;ladder 9 (win)
	DW $9ec2
	DW $0402
	DB 3
	;ladder 10 (win)
	DW $9f46
	DW $0202
	DB 3
	;ladder 11 (win)
	DW $9f84
	DW $0402
	DB 3
	;ladder 12 (win)
	DW $9c0e
	DW $0402
	DB 3
	;ladder 13 (win)
	DW $9c8c
	DW $0502
	DB 3
	;ladder 14 (win)
	DW $9d30
	DW $0302
	DB 3
	;ladder 15 (win)
	DW $9d92
	DW $0802
	DB 3
	;ladder 16 (win)
	DW $9e0e
	DW $0402
	DB 3
	;ladder 17 (win)
	DW $9e90
	DW $0402
	DB 3
	;ladder 18 (win)
	DW $9f0c
	DW $0202
	DB 3
	;ladder 19 (win)
	DW $9f50
	DW $0202
	DB 3
	;ladder 20 (win)
	DW $9f8e
	DW $0402
	DB 3
	;bricks 1 (win)
	DW $9c02
	DW $0202
	DB 2
	;bricks 2 (win)
	DW $9c06
	DW $0a02
	DB 2
	;bricks 3 (win)
	DW $9c40
	DW $1002
	DB 2
	;bricks 4 (win)
	DW $9e02
	DW $0202
	DB 2
	;bricks 5 (win)
	DW $9e06
	DW $0602
	DB 2
	;bricks 6 (win)
	DW $9f82
	DW $0402
	DB 2
	;bricks 7 (win)
	DW $9f86
	DW $0402
	DB 2
	;bricks 8 (win)
	DW $9c12
	DW $0202
	DB 2
	;bricks 9 (win)
	DW $9c8e
	DW $0206
	DB 2
	;bricks 10 (win)
	DW $9d8c
	DW $0206
	DB 2
	;bricks 11 (win)
	DW $9dcc
	DW $0602
	DB 2
	;bricks 12 (win)
	DW $9e92
	DW $0402
	DB 2
	;bricks 13 (win)
	DW $9f52
	DW $0602
	DB 2
	;end
	DW $0000



colorize_cutscene6:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 4
	DW _palettes_bg.background6a
	DW _palettes_bg.background6b
	DW _palettes_bg.intro_ground
	DW _palettes_bg.cutscene6_door_glass
	DB 5
	DW _palettes_obj.chef
	DW _palettes_obj.cutscene6_door
	DW _palettes_obj.enemy_egg
	DW _palettes_obj.naked
	DW _palettes_obj.enemy_hotdog
;attributes
	;bg
	DW $9800
	DW $0c14
	DB 0
	;ground
	DW $9960
	DW $0114
	DB 2
	;bg alt
	DW $9800
	DW $0214
	DB 1
	;window center
	DW $9888
	DW $0202
	DB 1
	;window left
	DW $98a1
	DW $0304
	DB 1
	;window right
	DW $98ad
	DW $0304
	DB 1
	;door
	DW $98e6
	DW $0406
	DB 1
	;door (glass)
	DW $9927
	DW $0201
	DB 3
	;door (glass)
	DW $992a
	DW $0201
	DB 3
	;end
	DW $0000
















colorize_intro:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 8
	DW _palettes_bg.intro_burger_logo
	DW _palettes_bg.intro_donut_logo
	DW _palettes_bg.intro_burger_building
	DW _palettes_bg.intro_donut_building
	DW _palettes_bg.intro_windows
	DW _palettes_bg.intro_ground
	DW _palettes_bg.intro_streetlamp
	DW _palettes_bg.intro_ground
	DB 8
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.ending_ground
	DW _palettes_obj.enemy_hotdog
	DW _palettes_obj.enemy_pickle
	DW _palettes_obj.enemy_chicken
	DW _palettes_obj.enemy_egg

;attributes
	;burger building
	DW $9902
	DW $0406
	DB 2
	;burger logo
	DW $98c3
	DW $0304
	DB 0
	;burger window
	DW $9942
	DW $0102
	DB 4
	;burger ground
	DW $9981
	DW $010b
	DB 5
	;donut building
	DW $9d20
	DW $0306
	DB 3
	;donut logo
	DW $9ca0
	DW $0406
	DB 1
	;donut window
	DW $9d40
	DW $0102
	DB 4
	;burger ground
	DW $9d80
	DW $0107
	DB 5
	;streetlamp
	DW $98e9
	DW $0501
	DB 6
	;streetlamp light
	DW $9909
	DW $0101
	DB 4
	;end
	DW $0000

















colorize_title_screen:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 5
	DW _palettes_bg.title_border
	DW _palettes_bg.title_burger
	DW _palettes_bg.title_time
	DW _palettes_bg.title_rt
	DW _palettes_bg.title_deluxe
	DB 5
	DW _palettes_obj.chef
	DW _palettes_obj.title_stars
	DW _palettes_obj.meat
	DW _palettes_obj.lettuce
	DW _palettes_obj.enemy_hotdog

;attributes
	;all
	DW $9800
	DW $1214
	DB 0
	;Burger
	DW $9843
	DW $0409
	DB 1
	;Time
	DW $984c
	DW $0405
	DB 2
	;rT
	DW $986c
	DW $0201
	DB 3
	;Deluxe
	DW $98e7
	DW $0207
	DB 4
	;end
	DW $0000






colorize_password_screen:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 2
	DW _palettes_bg.title_border
	DW _palettes_bg.password_border
	DB 8
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.naked
	DW _palettes_obj.enemy_hotdog
	DW _palettes_obj.enemy_pickle
	DW _palettes_obj.enemy_chicken
	DW _palettes_obj.enemy_egg

;attributes
	;all
	DW $9800
	DW $1214
	DB 0
	;squares
	DW $9942
	DW $0410
	DB 1
	;end
	DW $0000

colorize_multiplayer:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 2
	DW _palettes_bg.title_border
	DW _palettes_bg.password_border
	DB 8
	DW _palettes_obj.chef
	DW _palettes_obj.bread_cheese
	DW _palettes_obj.meat
	DW _palettes_obj.naked
	DW _palettes_obj.enemy_hotdog
	DW _palettes_obj.enemy_pickle
	DW _palettes_obj.enemy_chicken
	DW _palettes_obj.enemy_egg

;attributes
	;all
	DW $9800
	DW $1214
	DB 0
	;1P
	DW $9841
	DW $0303
	DB 1
	;2P
	DW $9850
	DW $0303
	DB 1
	;goal P1
	DW $9940
	DW $0304
	DB 1
	;goal P2
	DW $9950
	DW $0304
	DB 1
	;end
	DW $0000



colorize_credits:
	ld		hl, @ + 6
	jp		colorize_static_screen

;palettes
	DB 2
	DW _palettes_bg.intro_ground
	DW _palettes_bg.password_border
	DB 3
	DW _palettes_obj.chef
	DW _palettes_obj.enemy_chicken
	DW _palettes_obj.enemy_egg

;attributes
	;map
	DW $9800
	DW $1214
	DB 0
	;window
	DW $9c00
	DW $1214
	DB 1
	;end
	DW $0000







colorize_static_screen:
	;set palettes
	ld		a, [hli]
	call	update_cgb_palettes_bg
	ld		a, [hli]
	call	update_cgb_palettes_obj

	;disable inverted HUD
	push	hl
	ld		hl, .disable_inverted_hud_attributes
	call	paint_screen
	pop		hl

	;colorize screen
	call	paint_screen

	;disable colorize tiles during vblank
	xor		a
	ld		[_colorize_vblank_tiles], a

	ret

.disable_inverted_hud_attributes:
	;hud
	DW $9c00
	DW $0220
	DB 0
	;end
	DW $0000








paint_screen:
	ld		a, 1
	ld		[rVBK], a

.loop:
	ld		a, [hli]
	ld		e, a
	ld		a, [hli]
	ld		d, a
	or		e
	jr		z, .end

	ld		a, [hli]
	ld		c, a
	ld		a, [hli]
	ld		b, a

	ld		a, [hli]
	push	hl
	ld		h, d
	ld		l, e
;hl=target offset
;bc=n bytes
;a=value
.rectangle_fill:
	push	bc
	push	hl
	ld		b, $00
	push	af
	call	mem_fill
	pop		af
	pop		hl
	ld		de, 32
	add		hl, de
	pop		bc
	dec		b
	jr		nz, .rectangle_fill
	pop		hl

.colorize_end:
	jr		.loop
	

.end:
	xor		a
	ld		[rVBK], a
	ret

	



mem_fill:
	ld		[hli], a
	ld		d, a
	dec		bc
	ld		a, b
	or		c
	ld		a, d
	jr		nz, mem_fill
	ret













copy_tiles_to_vram_hook:
	;original code
	ld		[hli], a

	ld		a, h
	cp		$9c
	jp		nc, copy_tiles_to_vram.loop

	;cp		$c0 ;$c0 tile index starts at letters and HUD
	;jp		nc, copy_tiles_to_vram.loop
	;and		a ;tile index $00 is blank, colorizing it would ruin the hud
	;jp		z, copy_tiles_to_vram.loop
	ld		a, [_colorize_vblank_tiles]
	and		a
	jp		z, copy_tiles_to_vram.loop

	;new code
	ld		a, [de]

	push	de
	ld		d, HIGH(_tile_attribute_array)
	ld		e, a

	ld		a, 1
	ld		[rVBK], a ;go to CGB VRAM bank 1


	ld		a, [de]
	dec		hl
	ld		[hli], a



	xor		a
	ld		[rVBK], a ;go to CGB VRAM bank 1

	pop		de
	jp		copy_tiles_to_vram.loop



SECTION "Palettes", ROMX[$6000], BANK[$05]
_palettes_bg:
	.ladders1:					DW $7fff, $7f13, $61e9, $1460
	.background1a:				DW $7fff, $7778, $5230, $0000
	.background1b:				DW $7fff, $6f3f, $523f, $0000
	.ladders2:					DW $7fff, $4798, $22f1, $0483
	.background2a:				DW $7fff, $6bb8, $4e90, $0000
	.background2b:				DW $7fff, $67bf, $4b3e, $0000
	.ladders3:					DW $7fff, $5b1e, $1dbb, $0445
	.background3a:				DW $7fff, $6f7d, $525a, $0000
	.background3b:				DW $7fff, $7b5f, $729f, $0000
	.ladders4:					DW $7fff, $435c, $1a98, $0cc6
	.background4a:				DW $7fff, $63b8, $4a90, $0000
	.background4b:				DW $7fff, $7b7a, $76d3, $0000
	.ladders5:					DW $7fff, $62dd, $391b, $1028
	.background5a:				DW $7fff, $5f7e, $267b, $0000
	.background5b:				DW $7fff, $7f99, $7ef1, $0000
	.ladders6:					DW $7fff, $7b55, $7287, $1c81
	.background6a:				DW $7fff, $6f5f, $391f, $0000
	.background6b:				DW $7fff, $5f1d, $4a9b, $0000

	.bread_cheese:				DW $7fff, $2b5f, $09f8, $0000
	.meat:						DW $7fff, $0d97, $14af, $0000
	.lettuce:					DW $7fff, $1b6d, $1604, $0000
	.items_red:					DW $7fff, $001f, $0016, $0000
	.items_purple:				DW $7fff, $7a9c, $712d, $0000

	.title_border:				DW $7fff, $7bb1, $66c2, $2922
	.title_burger:				DW $7fff, $231e, $1216, $0000
	.title_time:				DW $7fff, $2fb1, $16ab, $0000
	.title_rt:					DW $7fff, $231e, $2fb1, $0000
	.title_deluxe:				DW $7fff, $6b3f, $45df, $141f

	.intro_burger_logo:			DW $7fff, $2b5f, $09f8, $0000
	.intro_donut_logo:			DW $7fff, $565f, $5cfa, $0000
	.intro_burger_building:		DW $7fff, $467f, $009d, $0000
	.intro_donut_building:		DW $7fff, $7e9e, $6ce8, $0000
	.intro_windows:				DW $7fff, $7794, $5a70, $0000
	.intro_ground:				DW $7fff, $5719, $29f1, $0000
	.intro_streetlamp:			DW $7fff, $56b5, $294a, $0000
	.cutscene6_door_glass:		DW $7ff7, $56b5, $294a, $0000

	.password_border:			DW $7fff, $623e, $3c59, $184a



_palettes_obj:
	.chef:						DW $7fff, $3eff, $0000
	.bread_cheese:				DW $2b5f, $09f8, $0000
	.meat:						DW $0d97, $14af, $0000
	.lettuce:					DW $1b6d, $1604, $0000
	.enemy_hotdog:				DW $001f, $0016, $0000
	.enemy_pickle:				DW $43d6, $7fff, $0000
	.enemy_chicken:				DW $2fbf, $0e59, $0000
	.enemy_egg:					DW $7fff, $56b5, $0000
	.enemy_donut:				DW $7a9f, $5d78, $0000
	.naked:						DW $3eff, $28fb, $0000
	.title_stars:				DW $79d8, $7176, $64f3
	.ending_ground:				DW $29f1, $5719, $0000
	.cutscene_fire:				DW $2fbf, $001f, $0000
	.cutscene6_door:			DW $7fff, $7ff7, $5e6c








SECTION "Program bank DX - Tile-attribute array", ROMX[$7f00],BANK[$05]
_tile_attribute_array:
	DB $07, $06, $06, $06, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $07 ;$00
	DB $07, $06, $06, $06, $06, $06, $06, $06, $07, $00, $00, $00, $00, $00, $00, $07 ;$10
	DB $07, $07, $07, $06, $06, $06, $06, $07, $07, $07, $07, $07, $06, $06, $06, $06 ;$20
	DB $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06 ;$30
	DB $07, $07, $07, $07, $07, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06 ;$40
	DB $06, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $06, $06, $06, $06, $06 ;$50
	DB $06, $06, $06, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07 ;$60
	DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $06, $06 ;$70
	DB $01, $01, $01, $01, $01, $01, $02, $02, $02, $01, $01, $01, $01, $03, $03, $03 ;$80
	DB $03, $01, $01, $01, $01, $01, $01, $02, $02, $02, $01, $01, $01, $01, $03, $03 ;$90
	DB $03, $03, $07, $07, $07, $07, $07, $05, $05, $05, $05, $01, $01, $04, $04, $02 ;$a0
	DB $04, $02, $04, $01, $01, $01, $01, $05, $05, $05, $05, $01, $01, $01, $01, $07 ;$b0
	DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07 ;$c0
	DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07 ;$d0
	DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07 ;$e0
	DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07 ;$f0
