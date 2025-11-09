;Bank 1 includes the game's entire tileset

SECTION "Bank 1 - Graphics", ROMX[$4000], BANK[1]
;in order to make the most of color capabilities, we will do some edits to the
;original game's tileset (see graphics/tileset.png)
INCBIN "graphics/tileset.bin"