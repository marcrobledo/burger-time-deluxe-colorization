;it is useful to identify some subroutines from the original game that will be
;helpful later, not only because they make debugging more readable
;but also because we can even use them in our new code


SECTION "Bank 0 - Switch bank", ROM0[$037a]
switch_bank1:
	ld		a, 1
	jr		switch_bank
switch_bank2:
	ld		a, 2
	jr		switch_bank
switch_bank3:
	ld		a, 3
switch_bank:
	ldh		[_current_bank], a
	ld		[rROMB0], a
	ret



SECTION "Bank 0 - Memory empty", ROM0[$0331]
mem_empty:
	;...

SECTION "Bank 0 - Memory copy", ROM0[$03ef]
mem_copy:
	;...



SECTION "Bank 0 - LCD display off", ROM0[$024c]
lcd_off:
	;...

SECTION "Bank 0 - LCD display on", ROM0[$0269]
lcd_on:
	;...