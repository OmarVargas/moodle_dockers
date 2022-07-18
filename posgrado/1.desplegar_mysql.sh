#!/bin/bash
source ./conf
echo "Desplegando MySql"
docker pull $mysql_image_name
docker run --network=moodle -p 3306:3306 --name $moodle_db_container_name -v $(pwd)/db:/var/lib/mysql -e MYSQL_ROOT_PASSWORD="moodle" -e MYSQL_DATABASE='moodle' -e MYSQL_USER='user' -e MYSQL_PASSWORD='password' -d $mysql_image_name