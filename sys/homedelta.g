; homedelta.g
; called to home all towers on a delta printer
G91                        ; relative positioning
; first pass
G1 H1 X340 Y340 Z340 F2500 ; move all towers to the high end until first endstop is hit
G1 H1 X340 Y340 Z340 F2500 ; move all towers to the high end until second endstop is hit
G1 H1 X340 Y340 Z340 F2500 ; move all towers to the high end until third endstop is hit
G1 H2 X-5 Y-5 Z-5 F500     ; go down a few mm
; second pass
G1 H1 X10 Y10 Z10 F500     ; move all towers up once more until first endstop is hit
G1 H1 X10 Y10 Z10 F500     ; move all towers up once more until second endstop is hit
G1 H1 X10 Y10 Z10 F500     ; move all towers up once more until third endstop is hit
G1 Z-5 F12000              ; move down a few mm so that the nozzle can be centred
G90                        ; absolute positioning
G1 X0 Y0 F12000            ; move X+Y to the centre

