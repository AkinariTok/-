#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(ssh　リモート接続)
#====================================================================
yes | sudo apt update
yes | sudo apt install ssh

#====================================================================
# server系サービスインストール(samba　ファイル共有)
#====================================================================

yes | sudo apt install samba
sudo systemctl status smbd
sudo systemctl status nmbd

#====================================================================
# server系サービスインストール(apache,cgi　WEBサーバ　アプリ)
#====================================================================

yes | sudo apt install apache2
yes | sudo a2enmod cgi
sudo systemctl restart apache2

#====================================================================
# server系サービスインストール(MariaDB,php　データベース)
#====================================================================

yes | sudo apt install mariadb-server mariadb-client
yes | sudo apt install zip php libapache2-mod-php php-mysql

#====================================================================
# server系サービスインストール(オンラインストレージ　NextCloud)
#====================================================================

yes | sudo snap install nextcloud-port8080

#====================================================================
# server系サービスインストール(Let's encrypt SSL証明書（HTTPS化）)
#====================================================================

yes | sudo a2enmod ssl
yes | sudo a2ensite default-ssl
yes | sudo systemctl restart apache2

#====================================================================
# server系サービスインストール(squid　Proxyサーバ)
#====================================================================

yes | sudo apt install squid

#====================================================================
# server系サービスインストール(proFTPD FTPサーバ（比較的安全）)
#====================================================================
# ※途中inet経由推奨
yes | sudo apt install proftpd-basic

#====================================================================
# server系サービスインストール(postfix,bsd-mailx,dovecot メール送信・メールコマンド・メール受信)
#====================================================================
# ※途中インターネットサイト推奨,ドメイン名記入するように
yes | sudo apt install postfix
yes | sudo apt install bsd-mailx
yes | sudo apt install dovecot-common dovecot-imapd dovecot-pop3d

#====================================================================
# server系サービスインストール(bind DNSサーバ)
#====================================================================
yes | sudo apt install bind9
#起動必要ならばsudo systemctl enable bind9
#起動必要ならばsudo systemctl start bind9

#====================================================================
# server系サービスインストール(isc-dhcpSV DHCPサーバ)
#====================================================================
yes | apt install isc-dhcp-server 

#====================================================================
# server系サービスインストール(freeRADIUS RADIUSサーバ)
#====================================================================
yes | sudo apt install freeradius freeradius-mysql

#====================================================================
# server系サービスインストール(ntp NTPサーバ)
#====================================================================
yes | sudo apt-get install ntp


