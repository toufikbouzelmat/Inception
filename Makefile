# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbouzalm <tbouzalm@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/14 00:24:38 by tbouzalm          #+#    #+#              #
#    Updated: 2023/05/20 17:18:24 by tbouzalm         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


all: up

up:
	cd srcs && docker-compose build --no-cache && docker-compose up

down:
	cd srcs && docker-compose down
stop:
	cd srcs && docker-compose stop
start:
	cd srcs && docker-compose start
fclean:
	cd srcs && docker-compose down --rmi all
	docker volume prune --force
	docker network prune --force
