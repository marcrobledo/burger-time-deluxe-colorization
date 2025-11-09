SECTION "Program bank DX - Initialize CGB", ROMX[$4000], BANK[$04]
cgb_init:
	di

	;detect DMG
	ld		a, b ;we copied the initial value of a in register b previously
	cp		$11 ;check if the console is CGB compatible (GBC or GBA)
	jp		nz, prepare_dmg_warning

	;set CGB double speed mode
	ld		a, KEY1F_PREPARE
	ldh		[rKEY1], a
	stop ;needed

	;disable LCD display
.wait_vblank:
	ldh		a,[rLY]
	cp		a, 145
	jr		c, .wait_vblank
	ldh		a, [rLCDC]
	xor		LCDCF_ON
	ldh		[rLCDC], a


	;set initial CGB palettes
	call	set_initial_palettes

	;go to CGB VRAM bank 1
	ld		a, 1
	ld		[rVBK], a

	;copy additional dx tiles: inverted hud
	ld		hl, _tileset_inverted_hud
	ld		de, $8c00
	ld		bc, _tileset_inverted_hud_end-_tileset_inverted_hud
	call	mem_copy
	;copy additional dx tiles: inverted hud blank tile
	ld		de, $9000
	ld		bc, 16
	call	mem_copy

	;return to DMG VRAM bank
	xor		a
	ld		[rVBK], a

	;enable LCD display
	ldh		a, [rLCDC]
	or		LCDCF_ON
	ldh		[rLCDC], a


	;original entry point code (RAM initialization)
	ld		hl, $dff0
	ld		d, $10
	xor		a
.free_ram_loop:
	ld		[hli], a
	dec		d
	jr		nz, .free_ram_loop

	ret








_tileset_inverted_hud:
	INCBIN "graphics/hud_inverted.bin"
_tileset_inverted_hud_end:
_tileset_inverted_hud_blank_tile:
	REPT 16
		DB $ff
	ENDR



set_initial_palettes:
	ld		a, $c0
	ldh		[rBCPS], a
	ldh		[rOCPS], a
	ld		hl, .palette_grayscale
	REPT 4 ;four colors
		ld		a, [hli]
		ldh		[rBCPD], a ;write BG pal first byte
		ldh		[rOCPD], a ;write OBJ pal first byte
		ld		a, [hli]
		ldh		[rBCPD], a ;write BG pal second byte
		ldh		[rOCPD], a ;write OBJ pal second byte
	ENDR

	ret

.palette_grayscale:
	DW $7fff, $56b5, $294a, $0000
















prepare_dmg_warning:
	call	lcd_off

	ld		hl, _tileset_inverted_hud
	ld		de, $8c00
	ld		bc, _tileset_inverted_hud_end - _tileset_inverted_hud
	call	mem_copy
	ld		de, $9000
	ld		bc, 16
	call	mem_copy

	ld		hl, _SCRN0
	ld		bc, 32*18
	call	mem_empty

	ld		hl, _dmg_warning_text
	ld		de, $98a2
	ld		bc, 13
	call	mem_copy
	ld		de, $98c2
	ld		bc, 14
	call	mem_copy
	ld		de, $98e2
	ld		bc, 11
	call	mem_copy
	ld		de, $9902
	ld		bc, 6
	call	mem_copy

	ld		a, %00011011
	ldh		[rBGP], a

	ld		a, LCDCF_ON | LCDCF_BGON
	ldh		[rLCDC], a

	halt





_dmg_warning_text:
DB "THIS GAME CAN"
DB "ONLY BE PLAYED"
DB "ON GAME BOY"
DB "COLOR."

