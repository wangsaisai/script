@echo off

netsh wlan set hostednetwork mode=allow

netsh wlan set hostednetwork ssid=WIFINAME key=WIFIPWD

netsh wlan start hostednetwork

pause

