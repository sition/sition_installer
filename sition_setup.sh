#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
cd "$(dirname "$0")"
echo  "starting magento 2 dutch configuration"
sleep 3
cd ../
#find . -type f -exec chmod 644 {} \;
#find . -type d -exec chmod 755 {} \;
find ./var -type d -exec chmod 777 {} \;
#find ./pub/media -type d -exec chmod 777 {} \;
find ./pub/static -type d -exec chmod 777 {} \;
#chmod 777 ./app/etcnano
#chmod 644 ./app/etc/*.xml

find . -name ".htaccess" -type f -exec sed -i 's/FollowSymLinks/SymLinksIfOwnerMatch/g' {} ";"
find . -name ".htaccess" -type f -exec sed -i 's/All -Indexes/ -Indexes/g' {} ";"
composer require honl/magento2-nl-nl
composer require semaio/magento2-configimportexport
composer update
php bin/magento setup:upgrade
touch pub/static/deployed_version.txt
php bin/magento setup:di:compile
php bin/magento module:enable Ho_nl_NL
php bin/magento module:enable Semaio_ConfigImportExport
php bin/magento sampledata:deploy
php bin/magento setup:static-content:deploy
php bin/magento setup:static-content:deploy de_DE
elsels

crontab -l > sition_installer/oldcron.txt
sleep 5
crontab sition_installer/newcron.txt
n98-magerun2 db:import sition_installer/store.sql
n98-magerun2 db:import sition_installer/cms.sql
n98-magerun2 db:import sition_installer/tax.sql
mkdir -p config/store/base
cp  sition_installer/20167103_sition.yaml config/store/base
php bin/magento config:data:import config/store base
n98-magerun2 cache:flush
n98-magerun2 index:reindex
cd p