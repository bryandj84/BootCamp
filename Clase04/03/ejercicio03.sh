# #!/bin/bash

USERID=$(id -u)

if [ "${USERID}" -ne 0 ]; then
    echo -e "\033[33mCorrer con usuario ROOT\033[0m"
    exit
fi 

#Update Server
echo "====================================="
apt-get update
echo "\e[92mEl Servidor se encuentra Actualizado ...\033[0m\n"

#Download Images
echo "\e[92mDownload Nginx...\033[0m\n"
docker pull nginx

#Running Nginx Container in local port 9999 
echo "\e[92mStarting Nginx...\033[0m\n"
docker run -d -p 9999:80 --name bootcamp-web nginx

echo "\e[92mCopy Web inside Nginx Container...\033[0m\n"
docker cp -a ./web/. bootcamp-web:/usr/share/nginx/html/

#Check if copy is ok
echo "\e[92mCheck if copy ok...\033[0m\n"
docker exec bootcamp-web ls /usr/share/nginx/html/

sleep 2s
echo "\e[92mDesafio Terminado!!!\033[0m\n"