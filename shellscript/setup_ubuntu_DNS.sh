#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(bind DNSサーバ)
#====================================================================
yes | sudo apt install bind9
#起動必要ならばsudo systemctl enable bind9
#起動必要ならばsudo systemctl start bind9
