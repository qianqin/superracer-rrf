; runonce.g
; called after config.g. When it has been executed, it is automatically deleted!
;
M552 S0                   ; disable network
G4 S5                     ; wait half a second
M587 S"SSID" P"PASSWORD" ; configure WiFi
G4 S5
M552 S1                   ; enable network
