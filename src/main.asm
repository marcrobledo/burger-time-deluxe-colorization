; Burger Time Deluxe - colorization mod
; by Marc Robledo @marc_robledo 2025


; CONSTANT DEFINITIONS
INCLUDE "hardware.inc" ;https://github.com/gbdev/hardware.inc/blob/master/hardware.inc
INCLUDE "ram_offsets.asm"



; BANK 0
INCLUDE "bank00_useful_subroutines.asm"
INCLUDE "bank00_header.asm"
INCLUDE "bank00_vblank.asm"
INCLUDE "bank00_hooks.asm"

; ORIGINAL GAME PROGRAM BANKS (include graphics data)
INCLUDE "program_banks/bank01_tilesets.asm"
INCLUDE "program_banks/bank02_maps_metasprites.asm"

; NEW DX BANKS
INCLUDE "program_banks/bank04dx_cgb_initialize.asm"
INCLUDE "program_banks/bank05dx_colorize_scenes.asm"

; CHEATS
;INCLUDE "cheats.asm"