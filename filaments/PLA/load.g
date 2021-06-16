M291 P"Heating up..." S1 T20
M109 S200 ; set hotend temp
M83 ; switch to relative positioning
M291 P"Extruding filament..." S1 T10
G1 E100 F300 ; Extrude 100mm of filament at 5mm/s
G1 E400 F3000 ; Extrude 580mm of filament at 50mm/s
G1 E200 F300 ; Extrude 200mm of filament at 5mm/s
M400 ; Wait for the moves to finish
M82 ; switch to absolute positioning
G92 E0 ; reset extruder value
M0 ; turn machine off