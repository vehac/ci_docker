#!/bin/bash

echo "------------------ Permissions folder ---------------------"
bash -c 'chmod -R 777 /var/www/html/application/cache'

bash -c 'chmod -R 777 /var/www/html/upload/temporal'

echo "------------------ Init DB --------------------------------"
if [ $(mysql -u root -p7*DBci369 -h7.14.21.35 db_ci -sse "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='db_ci' AND table_name='user'") -eq 1 ];
then
        echo "Database exists"
else
        echo "Database not exist, init dump ...."
        mysql -u root -p7*DBci369 -h7.14.21.35 db_ci < /var/www/html/docker/my_db.sql
fi

echo "------------------ Starting apache server ------------------"
exec "apache2-foreground"