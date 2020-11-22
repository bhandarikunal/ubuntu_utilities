# https://askubuntu.com/questions/196768/how-to-install-updates-via-command-line
sudo -s -- <<EOF
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y
apt-get autoclean -y
EOF
