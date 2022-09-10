#!/bin/bash

echo -e

echo '####################################################################################'
echo '#                                                                                  #'
echo '# Este script serve para automatizar a criação de uma IaC - Infrastructure as Code #'
echo '#                           para subirmos um Web Server                            #'
echo '#                                                                                  #'
echo '####################################################################################'

echo -e

echo '# Atualizações do servidor... #'

echo -e

apt-get update
apt-get upgrade -y

echo -e

echo '*** Atualizações concluídas ***'

echo -e

echo '# Instalando pacotes... #'

echo  -e

apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo -e

echo '*** Instalações concluídas ***'

echo -e

echo '# Altera para a pasta temporária... #'

echo -e

cd /tmp

echo -e

echo '*** Pasta alterada ***'

echo -e

echo '# Baixa o arquivo do projeto do GitHub e salva na pasta temporária... #'

echo -e

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo -e

echo '# Descompacta o arquivo .main #'

echo -e

unzip main.zip

echo -e

echo '# Arquivo descompactado #'

echo -e

echo '# main.zip descompactado cria o diretório linux-site-dio e copia todos os arquivos para a pasta do Apache #'

echo -e

cd linux-site-dio-main

echo -e

cp -R * /var/www/html/

echo '*** Diretório criado e arquivos copiados ***'

echo -e

echo 'Data da criação da estrutura: '

echo -e

date

echo -e

echo '# Estrutura do WebServer finalizada #'

echo -e
