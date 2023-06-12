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

Download Images
echo "\e[92mDownload MongoDB...\033[0m\n"
docker pull mongo

echo "\e[92mStart MongoDB...\033[0m\n"
docker run -d -p 27017:27017 --name m1 mongo

echo "\e[92mInstalando librerias en el contenedor de MongoDB...\033[0m\n"
python3 -m pip install pymongo

sleep 2s
echo "\e[92mCorriendo Script en MongoDB...\033[0m\n"
python3 ./populate.py
python3 ./find.py


echo "\e[92mDesafio Terminado!!!\033[0m\n"