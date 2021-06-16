M291 P"Make sure that bed is at room temperature before starting the process!" R"Bed heater PID tuning" S3
G28 ; home
M291 P"Starting PID tuning. This will take a very long time..." S1 T120
M303 H0 S60 ; pid tune with 60°C
M500 P31 ; store heater data
M291 P"PID tuning completed" S1