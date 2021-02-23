#!/bin/bash
wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh vhserver
./vhserver ai
echo "サーバーの名前を入力してください:"
read server_name
echo "サーバーのパスワードを入力してください:"
read server_pass


cat <<EOF | tee lgsm/config-lgsm/vhserver/vhserver.cfg
##################################
####### Instance Settings ########
##################################
# PLACE INSTANCE SETTINGS HERE
## These settings will apply to a specific instance.
EOF
echo "servername=\"$server_name\""      >> lgsm/config-lgsm/vhserver/vhserver.cfg
echo "serverpassword=\"$server_name\""  >> lgsm/config-lgsm/vhserver/vhserver.cfg
echo "設定が完了しました"
./vhserver
        