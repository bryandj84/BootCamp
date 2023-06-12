#!/bin/bash

USERID=$(id -u)

if [ "${USERID}" -ne 0 ]; then
    echo -e "\033[33mCorrer con usuario ROOT\033[0m"
    exit
fi 

#Update Server
echo "====================================="
apt-get update
echo -e "\e[92mEl Servidor se encuentra Actualizado ...\033[0m\n"

#Download Images
echo "Download Apache & MySQL images in Docker"

docker pull mysql
docker pull phpmyadmin 

echo "Build Network"

docker network create apache_mysql

echo "Run Apache & MySQL"

docker run --name=db --network apache_mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret-pw -d mysql:8

echo "MySQL is UP"

docker run --name=my-admin --network apache_mysql -p 82:80 --link db:db -d phpmyadmin

echo "Apache is UP"