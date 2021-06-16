G28 ; Home
M291 P"Make sure that the Z-probe is currently not mounted" R"Remove Z-probe" S3
M208 S1 Z-20 ; Allow print head to go below 0
G1 Z20 F1200 ; Move close to bed
M291 P"Move print head down until a paper (that has been folded once) can still be moved between nozzle and bed but with slight friction" R"Zero Bed" S2 Z1
G92 Z0 ; set new zero
G1 Z100 ; make space to attaching probe
M291 P"Please attach Z-probe" R"Attach Z-probe" S2
G1 Z30 ; Move close to bed
G30 S-3 ; Measure z-probe
M500 P31 ; save z-probe value
G1 Z30 ; Move up a little
M291 P"Z-probe offset has been saved." R"Z-probe offset measurement" S2