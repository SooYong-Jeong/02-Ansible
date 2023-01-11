#! /usr/bin/env bash
now=$(date +"%m_%d_%Y") #현재 시각 기록
cp /etc/ssh/sshd_config /etc/ssh/sshd_config_$now.backup #sshd 설정 백업
#sshd_config 내에 암호를 이용하여 인증하도록 설정 변경
sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd #ssh 데몬 재시작