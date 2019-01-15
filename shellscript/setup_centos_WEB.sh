#!/bin/bash
#====================================================================
# yumのアップデート
#====================================================================
yes | sudo yum update
yes | sudo yum upgrade

#====================================================================
# server系サービスインストール(apache,cgi　WEBサーバ　アプリ)
#====================================================================

yes | sudo yum install apache2
yes | sudo a2enmod cgi
sudo systemctl restart apache2

