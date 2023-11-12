MACRO two_option_menu
	db \1, \2, \3
	dw \4
ENDM

TwoOptionMenuStrings:
; entries correspond to *_MENU constants
	; width, height, blank line before first menu item?, text pointer
	two_option_menu 4, 3, FALSE, .YesNoMenu
	two_option_menu 6, 3, FALSE, .NorthWestMenu
	two_option_menu 6, 3, FALSE, .SouthEastMenu
	two_option_menu 6, 3, FALSE, .YesNoMenu
	two_option_menu 6, 3, FALSE, .NorthEastMenu
	two_option_menu 7, 3, FALSE, .TradeCancelMenu
	two_option_menu 7, 4, TRUE,  .HealCancelMenu
	two_option_menu 4, 3, FALSE, .NoYesMenu

.NoYesMenu:
	db   "EI"
	next "JAH@"

.YesNoMenu:
	db   "JAH"
	next "EI@"

.NorthWestMenu:
	db   "PõHI"
	next "LääS@"

.SouthEastMenu:
	db   "LõUNA"
	next "IDA@"

.NorthEastMenu:
	db   "PõHI"
	next "IDA@"

.TradeCancelMenu:
	db   "VAHETA"
	next "TAGASI@"

.HealCancelMenu:
	db   "RAVI"
	next "TAGASI@"
