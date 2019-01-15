#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(GITサーバ)
#====================================================================
yes | sudo apt-get install git
yes | sudo apt-get install git-daemon-sysvinit
yes | sudo apt-get install sysv-rc-conf
