#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
echo  "starting magento 2 dutch configuration"
wait 3
cd ../
clear
start='date +%s'
echo  "content deployen"

php bin/magento sampledata:deploy
php bin/magento setup:static-content:deploy
php bin/magento setup:static-content:deploy de_DE

clear
echo "htaccess modification for safe symlinks"

find . -name ".htaccess" -type f -exec sed -i 's/FollowSymLinks/SymLinksIfOwnerMatch/g' {} ";"
find . -name ".htaccess" -type f -exec sed -i 's/All -Indexes/ -Indexes/g' {} ";"

clear
echo "taal installeren en config tool"
echo " "



composer require honl/magento2-nl-nl
composer require semaio/magento2-configimportexport
composer update
php bin/magento setup:upgrade
php bin/magento setup:di:compile

php bin/magento module:enable Ho_nl_NL
php bin/magento module:enable Semaio_ConfigImportExport
php bin/magento setup:static-content:deploy nl_NL

clear
echo "installing cron"
echo " "


crontab -l > sition_installer/oldcron.txt
php sition_installer/generate_cron.php
wait 5
crontab sition_installer/newcron.txt

clear
echo "configuratie import excl. domainname"
echo " "

n98-magerun2 db:import sition_installer/store.sql
n98-magerun2 db:import sition_installer/cms.sql
n98-magerun2 db:import sition_installer/tax.sql

mkdir -p config/store/base
cp  sition_installer/20167103_sition.yaml config/store/base
php bin/magento config:data:import config/store base
n98-magerun2 cache:flush
n98-magerun2 index:reindex
end='date +%s'