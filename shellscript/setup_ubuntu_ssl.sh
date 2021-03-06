#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(Let's encrypt SSL証明書（HTTPS化）)
#====================================================================

yes | sudo a2enmod ssl
yes | sudo a2ensite default-ssl
yes | sudo systemctl restart apache2

