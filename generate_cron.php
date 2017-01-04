<?php
/**
 * Created by PhpStorm.
 * User: micheldoens
 * Date: 04-01-17
 * Time: 10:09
 */


$file = 'sition_installer/oldcron.txt';
$file2 = 'sition_installer/newcron.txt';
// Open the file to get existing content
$current = file_get_contents($file);
$currentwkd = getcwd ( );

$current .= "*/1 * * * * /usr/bin/php ".$currentwkd."/bin/magento cron:run >> ".$currentwkd."/var/log/magento.cron.log\n";
$current .= "*/1 * * * * /usr/bin/php ".$currentwkd."/update/cron.php cron:run >> ".$currentwkd."/var/log/magento_update.cron.log\n";
$current .= "*/1 * * * * /usr/bin/php".$currentwkd."/bin/magento setup:cron:run >> ".$currentwkd."/var/log/magento_setup.cron.log\n";

// Write the contents back to the file
file_put_contents($file, $current);
?>