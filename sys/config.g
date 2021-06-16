; Configuration file for SKR v1.3 (firmware version 3)
; executed by the firmware on start-up

; General preferences
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"FLSUN SuperRacer"                       ; set printer name
M665 R151.67 L315 B132 H330                    ; Set delta radius, diagonal rod length, printable radius and homed height
M666 X0 Y0 Z0                                  ; put your endstop adjustments here, or let auto calibration find them

; Network
M552 S1                                        ; enable network
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S0                                     ; disable Telnet

; Drives
M569 P0 S1                                     ; physical drive 0 goes forwards using default driver timings
M569 P1 S1                                     ; physical drive 1 goes forwards using default driver timings
M569 P2 S1                                     ; physical drive 2 goes forwards using default driver timings
M569 P3 S0                                     ; physical drive 3 goes forwards using default driver timings
M584 X0 Y1 Z2 E3                               ; set drive mapping
M350 X16 Y16 Z16 E16 I1                        ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z80.00 E410.00               ; set steps per mm
M566 X120 Y120 Z120 E120                       ; set maximum instantaneous speed changes (mm/min)
M203 X12000.00 Y12000.00 Z12000.00 E6000.00    ; set maximum speeds (mm/min)
M201 X6000.00 Y6000.00 Z6000.00 E5000.00       ; set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E1000 I60               ; set motor currents (mA) and idle current to 60%

; Axis Limits
M208 Z0 S1                                     ; set minimum Z

; Endstops
M574 X2 S1 P"^xstopmax"                        ; configure active-high endstop for high end on X via pin ^xstopmax
M574 Y2 S1 P"^ystopmax"                        ; configure active-high endstop for high end on Y via pin ^ystopmax
M574 Z2 S1 P"^zstopmax"                        ; configure active-high endstop for high end on Z via pin ^zstopmax

; Z-Probe
M558 P8 C"^!zstop" H8 F120 T12000              ; set Z probe type to switch and the dive height + speeds
G31 P500 X0 Y0 Z20                             ; set Z probe trigger value, offset and trigger height
M557 R130 S26                                  ; define mesh grid

; Filament Runout Sensor
M591 P1 C"xstop" D0 S1						   ; filament sensor connected to xstop

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B3950 A"Bed" ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bed" T0                              ; create bed heater output on bed and map it to sensor 0
M307 H0 B0 R0.421 C468.9 D3.63 S1.00 V0.0      ; calibrated values for Bed
M140 H0                                        ; map heated bed to heater 0
M143 H0 S115                                   ; set temperature limit for heater 0 to 115C
M308 S1 P"e0temp" Y"thermistor" T100000 B3950 A"Hotend" ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 R2.370 C249.8:135.9 D11.42 S1.00 V0.0 ; calibrated values for Hotend
M143 H1 S260                                   ; set temperature limit for heater 1 to 260C

; Fans
M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
M106 P0 C"Part Cooling" S0 H-1                 ; set fan 0 name and value. Thermostatic control is turned off
M950 F1 C"e1heat" Q500                         ; create fan 1 on pin e1heat and set its frequency
M106 P1 C"Hotend" S0 H1 T45                    ; set fan 1 name and value. Thermostatic control is turned on

; Tools
M563 P0 D0 H1 F0 S"Effector"                   ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
;M575 P1 S1 B115200                             ; enable support for tft

; Load config-override.g from calibration
M501