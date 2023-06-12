#!/bin/bash

echo "actualizando sistema"
apt-get update

echo -e "el servidor esta actualizado"

if dpkg -s tree > /dev/null 2>&1; then
    echo -e "\n\e[96mSe verifica que Tree está instalado \033[0m\n"
else    
    echo -e "\n\e[92mInstalando tree ...\033[0m\n"
    apt install -y tree

echo -e "\n\033[33mTree se ha instalado correctamente\033[0m\n" 

fi
sleep 1 

echo -e "\n\033[91mBorrando directorio\033[0m\n"
rm -rf foo

sleep 1
echo "creando directorios"
mkdir -p foo/{empty,dummy}

sleep 1
echo "creando archivos"
touch foo/dummy/{file1.txt,file2.txt}
echo "me encanta bash" > foo/dummy/file1.txt

chown -R vagrant:vagrant foo/

tree foo/

sleep 1
echo -e "\n\033[33mmostrando contenido file1.txt\033[0m\n"
cat foo/dummy/file1.txt


repo1=foo/dummy
repo2=foo/empty

cat $repo1/file1.txt >> $repo1/file2.txt

mv $repo1/file2.txt $repo2

cat $repo1/file1.txt $repo2/file2.txt

tree foo/

            echo -e "\n\033[94mCreación finalizada\033[0m\n"