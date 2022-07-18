#!/bin/bash
source ./conf
echo "Desplegando Moodle"
#docker run --network=moodle -p 80:80 --name moodle_app_container_name -v $(pwd)/data:/var/www/moodledata -v $(pwd)/app:/var/www/html -d $moodle_image_name
docker run \
    --env moodle_name=$moodle_name \
    --network=moodle \
    -p 80:80 \
    --name $moodle_app_container_name \
    -v $(pwd)/data:/var/www/moodledata \
    -d $moodle_image_name
