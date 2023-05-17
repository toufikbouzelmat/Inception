#!/bin/bash
# yes "" | openssl req -newkey rsa:2048 -nodes -keyout /etc/nginx/tbouzalm.42.fr.key -x509 -days 365 -out /etc/nginx/tbouzalm.42.fr.crt

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "Nginx: setting up ssl ...";
openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/nginx.key \
		-out /etc/ssl/certs/nginx.crt \
		-subj "/C=MA/CN=tbouzalm.42.fr";
echo "Nginx: ssl is set up!";
fi