#!/bin/bash
moodle_image_name="moodle_400:1.0.0"
echo "Construyendo imagen..."
docker build -t $moodle_image_name .
