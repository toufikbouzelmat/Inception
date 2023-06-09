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
	cd srcs && docker compose build --no-cache && docker compose up
	@mkdir -p /home/${USER}/data/wordpress
	@mkdir -p /home/${USER}/data/mariadb
down:
	cd srcs && docker compose down
	@docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker system prune -a --force
	sudo rm -Rf /home/${USER}/data/wordpress
	sudo rm -Rf /home/${USER}/data/mariadb
	mkdir /home/${USER}/data/wordpress
	mkdir /home/${USER}/data/mariadb
stop:
	cd srcs && docker compose stop
start:
	cd srcs && docker compose start
fclean: down
	docker volume prune --force
	docker network prune --force
