#!/bin/bash
#====================================================================
# yumのアップデート
#====================================================================
yes | sudo yum update
yes | sudo yum upgrade

#====================================================================
# server系サービスインストール(squid　Proxyサーバ)
#====================================================================

yes | sudo yum install squid

