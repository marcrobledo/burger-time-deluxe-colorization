; $0040 - $0060 - Interrupt vector
SECTION "Interrupts - VBlank", ROM0[$0040]
int_vblank:
	push	af
	push	bc
	push	de
	push	hl
	jp		vblank


SECTION "Bank 0 - VBLANK", ROM0[$04d4]
vblank:
	ldh		a, [_oam_copy_flag]
	and		a
	call	nz, oam_dma_copy
	call	copy_tiles_to_vram_if_any
	ldh		a, [_oam_copy_flag]
	and		a
	call	nz, vblank_update_video_registers
	ldh		a, [$ffb7]
	and		a
	call	nz, $05b9
	call	$0548
	call	$05dd ;restores ROM bank
	call	$052e ;increases an unknown frame counter in HRAM
	ld		a, [$d127]
	inc		a
	ld		[$d127], a
	ld		a, 1
	ldh		[$ffb0], a
	xor		a
	ldh		[_oam_copy_flag], a
	pop		hl
	pop		de
	pop		bc
	pop		af
	reti

copy_tiles_to_vram_if_any: ;originally $0505
	;original code
	ldh		a, [$ffb4]
	and		a
	ret		z
	ld		de, _data_to_copy_during_vblank
	inc		de

	;new code	
	ld		a, BANK(copy_tiles_to_vram_hook) ;2 bytes
	ld		[rROMB0], a ;3 bytes

	;original code
	call	copy_tiles_to_vram
	;originally at this point, ROM bank is always $02, but there is no need to
	;switch back to it, since $05dd will do it later
	xor		a
	ldh		[$ffb4], a
	ldh		[$ffb5], a
	ret

vblank_update_video_registers: ;originally $0516
	ldh  a, [_video_registers_hram.scroll_y]
	ldh  [rSCY], a
	ldh  a, [_video_registers_hram.scroll_x]
	ldh  [rSCX], a

	;DMG video registers are not used in CGB mode, we can skip these and win
	;some space (15 bytes!) in VRAM subroutine for new code
	;ld   a, [_video_registers.bg_pal]
	;ldh  [rBGP], a
	;ld   a, [_video_registers.obj0_pal]
	;ldh  [rOBP0], a
	;ld   a, [_video_registers.obj1_pal]
	;ldh  [rOBP1], a
	ret

;fill free space with nops (until $052e)
REPT 15 - 5
	nop
ENDR


SECTION "Bank 0 - Copy tiles to VRAM", ROM0[$038a]
;called during vblank
copy_tiles_to_vram:
	ld		a, [de]
	ld		l, a
	inc		de
	ld		a, [de]
	ld		h, a
.label038f:
	push	hl
.loop:
	inc		de
	ld		a, [de]
	cp		a, $f7
	jr		c, $03ae
	cp		a, $ff
	jr		z, $03e8
	cp		a, $fe
	jr		z, $03b1
	cp		a, $fd
	jr		z, $03b9
	cp		a, $fc
	jr		z, $03bd
	cp		a, $f9
	jr		z, $03c8
	cp		a, $f8
	jr		z, $03d5
.label03ae:
	jp		copy_tiles_to_vram_hook
	;ld		[hli],a
	;jr		.loop
