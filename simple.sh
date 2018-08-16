#! /bin/bash
find . -name ".htaccess" -type f -exec sed -i 's/FollowSymLinks/SymLinksIfOwnerMatch/g' {} ";"
find . -name ".htaccess" -type f -exec sed -i 's/All -Indexes/ -Indexes/g' {} ";"
composer require honl/magento2-nl-nl
composer update
php bin/magento setup:upgrade
touch pub/static/deployed_version.txt
php bin/magento module:enable Ho_nl_NL
php bin/magento sampledata:deploy
#php bin/magento setup:static-content:deploy -f
php bin/magento setup:static-content:deploy de_DE nl_NL en_US -f
php bin/magento setup:di:compile
n98-magerun2 index:reindex
