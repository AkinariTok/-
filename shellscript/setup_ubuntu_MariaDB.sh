#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(MariaDB,php　データベース)
#====================================================================

yes | sudo apt install mariadb-server mariadb-client
yes | sudo apt install zip php libapache2-mod-php php-mysql

