#!/bin/bash

service mysql start;
mysql < /etc/db.sql;

