SECTION "Bank 0 - Prepare scene - Stage (Multiplayer)", ROM0[$18f9]
call	switch_bank1
call	lcd_off
call	prepare_stage_map
;jp		switch_bank2
jp		prepare_stage_hook

SECTION "Bank 0 - Prepare scene - Stage", ROM0[$1905]
call	switch_bank1
call	lcd_off
call	prepare_stage_map
call	prepare_stage_window
call	$2bc4
;call	switch_bank2
call	prepare_stage_hook
jp		$0269

SECTION "Bank 0 - Prepare scene - Stage - Map", ROM0[$191a]
prepare_stage_map:

SECTION "Bank 0 - Prepare scene - Stage - Window", ROM0[$3e3b]
prepare_stage_window:

SECTION "Bank 0 - Prepare scene - Stage (after losing a life)", ROM0[$3620]
;stage needs to be recolorized in order to fix the palettes for any unobtained
;item that gets removed before player respawns
;at this point, the stage map has been fixed and screen is still off, so it's
;the moment to recolorize it
;ld		a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG9C00 | LCDCF_OBJON | LCDCF_BGON ;2 bytes
;ldh	[rLCDC], a ;2 bytes
call	prepare_stage_after_losing_life_hook ;3 bytes
nop ;1 byte







SECTION "Bank 0 - Prepare scene - Title", ROM0[$31ef]
ld		a, $00
ld		[_current_scene], a
;call	lcd_off
call	colorize_scene_hook
;...

SECTION "Bank 0 - Prepare scene - Password/cutscenes", ROM0[$38e0]
ld		a, c
ld		[_current_scene], a
;call	lcd_off
call	colorize_scene_hook
ldh		a, [_current_bank]
push	af
call	switch_bank1
;...

SECTION "Bank 0 - Prepare scene - Multiplayer", ROM0[$0f5f]
;a little code rearrangement was done here:
;the game set multiplayer scene id ($24) AFTER disabling the LCD
;we want it to be done BEFORE, so we can use our colorize_scene_hook safely
ld		a, $24
ld		[_current_scene], a
;call	lcd_off
call	colorize_scene_hook
ld		hl, $9800
ld		bc, $0800
call	mem_empty
;ld		a, $24
;ld		[_current_scene], a
;...

SECTION "Bank 0 - Prepare scene - Credits", ROM0[$34cf]
;call	lcd_off
call	colorize_credits_hook
;...






SECTION	"RST - Colorize screen", ROM0[$0000]
;while the game has already a bank switching subroutine implemented,
;we implement a quick one as a rst (rst calls spends 1 byte instead of 3!)
;this will allow use to save some space in our hooks
;rst $00 is safe to use since the game never calls it
switch_bank_rst:
	ldh		[_current_bank], a
	ld		[rROMB0], a
	ret

SECTION "Bank 0 - Free space 1", ROM0[$0061]
;up to $006f

SECTION "Bank 0 - Free space 2", ROM0[$00ef]
;up to $00ff

SECTION "Bank 0 - Free space 3", ROM0[$3fd0]
colorize_scene_hook:
	;original code
	call	lcd_off

	;hook code
	ldh		a, [_current_bank]
	push	af

	ld		a, BANK(colorize_scene)
	rst		switch_bank_rst

	call	colorize_scene
	pop		af
	rst		switch_bank_rst	

	ret

prepare_stage_hook:
	;hook code
	ld		a, BANK(colorize_stage)
	rst		switch_bank_rst
	call	colorize_stage

	;original code
	jp		switch_bank2



prepare_stage_after_losing_life_hook:
	;hook code
	call	prepare_stage_hook

	;original code
	ld		a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG9C00 | LCDCF_OBJON | LCDCF_BGON
	ldh		[rLCDC], a
	ret



colorize_credits_hook:
	;original code
	call	lcd_off

	;hook code
	ld		a, BANK(colorize_credits)
	rst		switch_bank_rst
	call	colorize_credits
	jp		switch_bank2
