# Reprapfirmware for FLsun SuperRacer
This only works if you have SKR 1.3 version of the FLsun SuperRacer. You will also need an Wifi module/ESP8266 which needs to be connected as described on the [offical RepRapFirmware for LPC and STM32 site](https://teamgloomy.github.io/skr_1.3_connected_wifi.html). A ready to go module can be bought under the name BTT RRF WiFi.

# How to install
1) Install WiFi module as decribed [here](https://teamgloomy.github.io/skr_1.3_connected_wifi.html). (you might need to update it)
2) Download everything from this repository and put it on your micro sd card.
3) Edit sys\runonce.g and put your WiFi SSID and password in the _M587_ command. For example: if the SSID is *Doh* and the password is *test123456* then the line should be `M587 S"Doh" P"test123456"`
4) Turn off printer, insert micro sd card and turn it back on.
5) Find out IP of the printer by looking at the DHCP leases on your router or use serial over USB connection at 115200 baud and send `M552`.

# How to use
1) Run macro to measure Z-probe height
2) Run macro to calibrate frame & bed
3) If you get heater errors, run the PID tuning macros