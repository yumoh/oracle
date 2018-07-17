#/usr/bin/bash

# wget http://yumohc.coding.me/oracle/install.sh

apt install libaio1
mkdir -p /opt/oracle
cd /opt/oracle
wget http://yumohc.coding.me/oracle/instantclient-basic-linux-x86-64-11.2.0.2.0.zip
unzip instantclient-basic-linux-x86-64-11.2.0.2.0.zip 
sudo sh -c "echo /opt/oracle/instantclient_11_2 > /etc/ld.so.conf.d/oracle-instantclient.conf"
sudo ldconfig
export LD_LIBRARY_PATH=/opt/oracle/instantclient_11_2:$LD_LIBRARY_PATH