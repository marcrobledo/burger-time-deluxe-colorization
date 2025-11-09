;code that enables quick cheats

DEF INITIAL_LIVES  EQU $30
DEF INITIAL_PEPPER  EQU $30


SECTION "Bank 0 - Game initialization", ROM0[$01db]
ld		a, INITIAL_LIVES
ld		[_lives], a
ld		a, INITIAL_PEPPER
ld		[_pepper], a

SECTION "Bank 0 - Game initialization (continue)", ROM0[$36db]
ld		a, INITIAL_LIVES
ld		[_lives], a
ld		a, INITIAL_PEPPER
ld		[_pepper], a
