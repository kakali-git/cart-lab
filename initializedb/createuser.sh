#!/bin/bash
set -ex
mysql -h mydb -uroot -pmydb <<EOF
CREATE DATABASE mydatadb;
CREATE USER 'mysqluser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'mysqluser'@'%';
FLUSH PRIVILEGES;
EOF