#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(isc-dhcpSV DHCPサーバ)
#====================================================================
yes | apt install isc-dhcp-server 
