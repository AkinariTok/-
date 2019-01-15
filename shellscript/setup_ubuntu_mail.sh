#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# server系サービスインストール(postfix,bsd-mailx,dovecot メール送信・メールコマンド・メール受信)
#====================================================================
# ※途中インターネットサイト推奨,ドメイン名記入するように
yes | sudo apt install postfix
yes | sudo apt install bsd-mailx
yes | sudo apt install dovecot-common dovecot-imapd dovecot-pop3d


