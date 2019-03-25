adduser mysql
firewall-cmd --permanent --add-port=3306/tcp
firewall-cmd --reload