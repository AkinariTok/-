#!/bin/bash
#====================================================================
# yumのアップデート
#====================================================================
yes | sudo yum update
yes | sudo yum upgrade

#====================================================================
# server系サービスインストール(postfix,bsd-mailx,dovecot メール送信・メールコマンド・メール受信)
#====================================================================
# ※途中インターネットサイト推奨,ドメイン名記入するように
yes | sudo yum install postfix
yes | sudo yum install bsd-mailx
yes | sudo yum install dovecot-common dovecot-imapd dovecot-pop3d


