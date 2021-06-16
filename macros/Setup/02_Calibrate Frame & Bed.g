G91 ; relative positioning
G1 H1 X340 Y340 Z340 F2500 ; go to top
G90 ; absolute positioning

; wait for user to mount Z-probe
M291 P"Please make sure that the Z-probe is mounted before starting the calibration process." R"Z-probe" S3
M291 P"Calibrating delta frame..." T10 S1
G32           ; bed calibration
M291 P"Calibrating bed mesh..." T10 S1
G29           ; measure bed mesh
M500 P31      ; store calibration
G1 X0 Y0 Z100 ; move to better position to remove Z-probe
M291 P"Calibration completed. You can now remove the Z-probe." R"Z-probe" S1