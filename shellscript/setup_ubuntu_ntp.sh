#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(ntp NTPサーバ)
#====================================================================
yes | sudo apt-get install ntp


