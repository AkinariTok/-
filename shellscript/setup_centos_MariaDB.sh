#!/bin/bash
#====================================================================
# yumのアップデート
#====================================================================
yes | sudo yum update
yes | sudo yum upgrade

#====================================================================
# server系サービスインストール(MariaDB,php　データベース)
#====================================================================

yes | sudo yum install mariadb-server mariadb-client
yes | sudo yum install zip php libapache2-mod-php php-mysql

