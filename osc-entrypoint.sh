#!/bin/bash

echo "Running in OSC"

sed -i 's/:80>$/:8080>$/' /etc/apache2/sites-available/000-default.conf
sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf

/entrypoint.sh "$@"
