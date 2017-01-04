#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
echo  "starten met:  nohup bash setup.sh &"
echo  "tbv voorkomen timeout!"
wait 20

clear
start='date +%s'
echo  "content deployen"

php ../bin/magento setup:static-content:deploy 
php ../bin/magento setup:static-content:deploy de_DE

clear
echo "htaccess aanpassen"

find . -name ".htaccess" -type f -exec sed -i 's/FollowSymLinks/SymLinksIfOwnerMatch/g' {} ";"
find . -name ".htaccess" -type f -exec sed -i 's/All -Indexes/ -Indexes/g' {} ";"

clear
echo "taal installeren en config tool"

composer require honl/magento2-nl-nl
composer require semaio/magento2-configimportexport
composer update
php ../bin/magento module:enable Ho_nl_NL
php ../bin/magento module:enable Semaio_ConfigImportExpor
php ../bin/magento setup:static-content:deploy nl_NL
php ../bin/magento setup:upgrade
php ../bin/magento setup:di:compile

clear
echo "configuratie imprteren excl. domeinnaam" 

n98-magerun2 db:import store.sql
n98-magerun2 db:import cms.sql
n98-magerun2 db:import tax.sql

mkdir -p ../config/store/base
cp 20167103_sition.yaml ../config/store/base
php ../bin/magento config:data:import config/store base
n98-magerun2 cache:flush
n98-magerun2 index:reindex
end='date +%s'