#!/bin/bash
#====================================================================
# yumのアップデート
#====================================================================
yes | sudo yum update
yes | sudo yum upgrade

#====================================================================
# デスクトップがフリーズした場合に備えて「Ctrl+Alt+Backspace」で強制終了を有効化
#====================================================================
#sudo dpkg-reconfigure keyboard-configuration

#====================================================================
# 文字化け対策
#====================================================================
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8','CURRENT','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"
gsettings set org.gnome.gedit.preferences.encodings shown-in-menu "['UTF-8','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"

#====================================================================
# プラグインの追加
#====================================================================
sudo yum install gedit-plugins

#====================================================================
# Ubuntu Web Apps(Gmail/Amazon/Twitter/Facebook)削除
#====================================================================
#yes | sudo yum remove unity-webapps-common xul-ext-unity xul-ext-websites-integration

#====================================================================
# updatedbの無効化(locateコマンド使わないなら絶対しておくべき)
#====================================================================
sudo chmod 644 /etc/cron.daily/mlocate
#もとに戻すならsudo chmod 755 /etc/cron.daily/mlocate

#====================================================================
# server系サービスインストール(ssh,apache,samba,cgi,)
#====================================================================
yes | sudo yum update
yes | sudo yum install ssh
yes | sudo yum install samba
yes | sudo yum install apache2
yes | sudo a2enmod cgi
sudo systemctl restart apache2



#====================================================================
# ソフトウェアインストール(treecurl,git,vim,)
#====================================================================

yes | sudo yum install tree curl
yes | sudo yum install git
yes | sudo yum install vim vim-gnome
yes | sudo yum install imagemagick pdftk
yes | sudo yum install flashplugin-installer

# heroku-toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#====================================================================
# Python開発環境構築
#====================================================================
yes | sudo yum install python-pip python2.7 python2.7-dev python3
yes | sudo pip install virtualenv
yes | sudo pip install virtualenvwrapper

## Virtualenvwrapper
#if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
#    export WORKON_HOME=$HOME/.virtualenvs
#    source /usr/local/bin/virtualenvwrapper.sh
#fi

#====================================================================
# Perl開発環境
#====================================================================
yes | sudo yum install perl

#====================================================================
# C,C++開発環境
#====================================================================
yes | sudo yum install gcc
yes | sudo yum install g++
yes | sudo yum install vim

#====================================================================
# pipで入れれる便利ツール
#====================================================================
# trash-cli : http://tukaikta.blog135.fc2.com/blog-entry-214.html
yes | sudo pip install trash-cli

#====================================================================
# その他
#====================================================================
echo 'その他にインストールするもの'
#echo 'Pycharm'
echo 'dropbox'
echo 'virtualbox,vagrant : http://qiita.com/seizans/items/ef220c98fde6dbfbee32'
