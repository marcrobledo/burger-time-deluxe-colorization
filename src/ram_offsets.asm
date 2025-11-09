;during the reverse engineering process, we will note down here all variables
;and their offsets we have found so we can use them in our code and get a
;useful symbols .sym file for debugging purposes during assembling time




SECTION	"HRAM - Current bank", HRAM[$ffc7]
;identifying where the game caches the current bank byte will be helpful so we
;can reuse the original game's bank switching functions and switch to our
;new program banks safely
_current_bank: DB

SECTION	"HRAM - OAM copy flag", HRAM[$ffb1]
;byte flag that determines if the game's loop is waiting for a vblank update,
;if true during vblank:
;- OAM will be rebuilt (call to oam_dma_copy)
;- video registers will be updated
_oam_copy_flag: DB

SECTION	"HRAM - OAM DMA", HRAM[_HRAM]
oam_dma_copy:
SECTION	"RAM - Shadow OAM", WRAM0[$c000]
_shadow_oam:

SECTION	"HRAM - Video register values", HRAM[$ffe9]
_video_registers_hram:
	.scroll_y: DB
	.scroll_x: DB
SECTION	"RAM - Video register values", WRAM0[$c309]
_video_registers:
	.bg_pal: DB
	.obj0_pal: DB
	.obj1_pal: DB






SECTION	"RAM - Data to copy during VBLANK", WRAM0[$cb40]
;the game engine caches offsets and data that will be safely copied during
;vblank, the most important moments being:
; - tile updates when walking on burger layers
; - item spawning
; - title screen logo animation
_data_to_copy_during_vblank:






SECTION	"RAM - Free RAM", WRAMX[$de00],BANK[1]
;$d510-$deff seems to be unused RAM
;here we will put our custom variables

;in this small game, we only need a flag that will determine if the data
;copied during vblank (see above SECTION) need dynamic colorization.
;this flag variable will be 1 during gameplay, 0 in any other case
_colorize_vblank_tiles: DB







;other gameplay variables will be helpful during testing, so we can apply
;cheats like infinite lives
SECTION	"RAM - Gameplay 0", WRAM0[$c318]
_current_scene: DB
SECTION	"RAM - Gameplay 1", WRAM0[$c342]
_score: DS 3
_pepper: DB
_lives: DB
DS 2 ;unknown bytes
_current_stage: DB
