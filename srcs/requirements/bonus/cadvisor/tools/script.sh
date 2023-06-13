#!/bin/bash

curl -fsSL "https://github.com/google/cadvisor/releases/download/v0.39.1/cadvisor" -o /usr/bin/cadvisor --silent

chmod +x /usr/bin/cadvisor
