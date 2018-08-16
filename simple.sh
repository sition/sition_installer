#! /bin/bash

#PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
#cd "$(dirname "$0")"
#echo  "starting magento 2 dutch configuration"
#sleep 3
#cd ../
#find . -type f -exec chmod 644 {} \;
#find . -type d -exec chmod 755 {} \;
#find ./var -type d -exec chmod 777 {} \;
#find ./pub/media -type d -exec chmod 777 {} \;
#find ./pub/static -type d -exec chmod 777 {} \;
#chmod 777 ./app/etcnano
#chmod 644 ./app/etc/*.xml

find . -name ".htaccess" -type f -exec sed -i 's/FollowSymLinks/SymLinksIfOwnerMatch/g' {} ";"
find . -name ".htaccess" -type f -exec sed -i 's/All -Indexes/ -Indexes/g' {} ";"
composer require honl/magento2-nl-nl
composer update
php bin/magento setup:upgrade
touch pub/static/deployed_version.txt
php bin/magento setup:di:compile
php bin/magento module:enable Ho_nl_NL
php bin/magento sampledata:deploy
php bin/magento setup:static-content:deploy -f
php bin/magento setup:static-content:deploy de_DE nl_NL en_US -f
php bin/magento setup:di:compile
