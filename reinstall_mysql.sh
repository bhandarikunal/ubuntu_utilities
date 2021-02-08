# https://stackoverflow.com/questions/43440534/mysql-doesnt-start-at-all/43443049
# https://stackoverflow.com/questions/35190465/virtualenvpython3-4-pip-install-mysqlclient-error
# https://stackoverflow.com/questions/28687787/ubuntu-mysql-uninstall-reinstall
sudo -s -- <<EOF
apt purge mysql-server mysql-common -y
apt autoremove mysql-server mysql-common -y
rm -rf /etc/mysql
rm -rf /var/lib/mysql
apt-get update -y
apt-get install mysql-server
apt-get install python-dev python3-dev
apt-get install libmysqlclient-dev
echo "1) Copy the contents of file 'etc_confd_mysql.cnf' into file '/etc/mysql/conf.d/mysql.cnf'"
echo "2) Start mysql server using command 'sudo /etc/init.d/mysql start'"
echo "3) Follow instructions in ubuntu install documentation in OneNote to create and grant mysql user (match password in local .my.cnf)"
echo "4) Restore mysql-backup using command 'gunzip < '<gz_backup_file>' | mysql'"
EOF
