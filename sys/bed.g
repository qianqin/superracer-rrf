; bed.g
; called to perform automatic delta calibration via G32
M561 ; clear any bed transform
; home all towers, not using G28 because G28 will create 5mm offset
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
G90                        ; absolute positioning

; Probe the bed and do 6-factor auto calibration
G30 P0 X-112.58 Y-65 H0 Z-99999 ; X tower
G30 P1 X0 Y-130 H0 Z-99999 ; between X and Y towers
G30 P2 X112.58 Y-65 H0 Z-99999 ; Y tower
G30 P3 X112.58 Y65 H0 Z-99999 ; between Y and Z towers
G30 P4 X0 Y130 H0 Z-99999 ; Z tower
G30 P5 X-112.58 Y65 H0 Z-99999 ; between Z and X towers
G30 P6 X-56.29 Y-32.5 H0 Z-99999 ; half way to X tower
G30 P7 X56.29 Y-32.5 H0 Z-99999 ; half way to Y tower
G30 P8 X0 Y65 H0 Z-99999 ; half way to Z tower
G30 P9 X0 Y0 H0 Z-99999 S6 ; centre, and auto-calibrate 6 factors
; If your Z probe has significantly different trigger heights depending on XY position, adjust the H parameters in the G30 commands accordingly. The value of each H parameter should be (trigger height at that XY position) - (trigger height at centre of bed)
