#!/bin/bash

openssl req -x509 -newkey rsa:2048 -days 365 -nodes -keyout  /etc/ssl/certs/ssl_key.key -out /etc/ssl/certs/ssl_prv.crt -subj "/C=MA/CN=tbouzalm.42.fr"
