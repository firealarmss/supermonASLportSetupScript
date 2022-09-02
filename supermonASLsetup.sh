#!/bin/bash
git clone https://github.com/AllStarLink/ASL-Supermon.git
sleep 5
echo "Cloned supermon"
sleep 2
cd ASL-Supermon
if [ -d "/var/www/html" ]; then
  cp -r var/www/html /var/www/
fi
sleep 2
echo "Moved Web Pages"
sleep 1
if [ -d "/etc/apache2/conf-available/" ]; then
  cp -r etc/apache2/conf-available/serve-cgi-bin.conf /etc/apache2/conf-available/serve-cgi-bin.conf
fi
sleep 2
echo "Moved Apache Conf"
sleep 1
if [ -d "/usr/local/sbin" ]; then
  cp -r /usr/local/sbin/ /usr/local/sbin/
fi
sleep 2
echo "Moved Sbin files"
sleep 1
echo "Now..... go to your ip. e.g. 192.168.1.XXX"
sleep 1
echo "go to https://hamvoip.org/howto/supermon_howto.pdf"
sleep 1
echo "directory names may be a bit different but will give an idea of the setup"

