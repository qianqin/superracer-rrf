G28 ; home
M291 P"Make sure that the Z-probe is removed and the hotend is at room temperature before starting the process!" R"Hotend heater PID tuning" S3
G1 Z0.5 ; move close to bed
M291 P"Starting PID tuning. This will take a while..." S1 T120
M303 T0 S220 ; calibrate with 220 °C
M500 P31 ; store heater data
M291 P"PID tuning completed" S1