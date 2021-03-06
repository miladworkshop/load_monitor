#!/bin/sh
#####################################################################
# Load Monitor Plugin for Directadmin (patched version, 2018)       #
#####################################################################
#                                                                   #
# Patched version: 0.2.6 $ Mon Mar  4 18:07:41 +07 2019             #
# Original version: 0.1 (written by Future Vision)                  #
#                                                                   #
#####################################################################
# Author:                                                           #
#                                                                   #
# - Originally written by: Future Vision                            #
# - Patched by: Alex S Grebenschikov (www.poralix.com)              #
#                                                                   #
#####################################################################

PLUGIN_DIR="/usr/local/directadmin/plugins/load_monitor";

crontab -l > ${PLUGIN_DIR}/cron_current;
/usr/local/bin/php -nc/usr/local/directadmin/plugins/load_monitor/php.ini -f ${PLUGIN_DIR}/scripts/install_cron.php;
crontab ${PLUGIN_DIR}/cron_new;
rm ${PLUGIN_DIR}/cron_current;
rm ${PLUGIN_DIR}/cron_new;
exit 0;
