; ROM HEADER
SECTION "Cart name", ROM0[$0134]
DB "BURGER TIME DX", 0, CART_COMPATIBLE_GBC ;allows the game to be detected as a CGB game
SECTION "Cart type", ROM0[$0147]
DB CART_ROM_MBC5 ;MBC5 is required for double speed mode
SECTION "Cart size", ROM0[$0148]
DB CART_ROM_128KB ;double the ROM size to 128kb for our new code



; ENTRY POINT
SECTION "Boot", ROM0[$0100]
nop
jp		entry_point

SECTION "Entry point", ROM0[$0150]
entry_point:
	di

	;our hook will switch to a new bank that contains the required CGB
	;initialization code
	ld		b, a ;a=console type (DMG or CGB)
	ld		a, BANK(cgb_init) ;2 bytes
	rst		switch_bank_rst ;1 byte
	call	cgb_init ;3 bytes
	call	switch_bank1 ;3 bytes

	;it's exactly 10 bytes long, so the original 10 bytes of code we are
	;replacing (and will be lost here) will be moved to our CGB initialization
	;code
	/*
	ld		hl, $dff0 ;3 bytes
	ld		d, $10 ;2 bytes
	xor		a ;1 byte
.free_ram_loop:
	ld		[hli], a ;1 byte
	dec		d ;1 byte
	jr		nz, .free_ram_loop ;2 bytes
	*/

	;...
