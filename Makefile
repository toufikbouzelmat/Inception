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


up:
	cd srcs && docker-compose up --build -d 

fclean:
	cd srcs && docker-compose build --no-cache && docker-compose up

# all : up

# up : 
# 	@docker-compose -f ./srcs/docker-compose.yml up -d

# down : 
# 	@docker-compose -f ./srcs/docker-compose.yml down

# stop : 
# 	@docker-compose -f ./srcs/docker-compose.yml stop

# start : 
# 	@docker-compose -f ./srcs/docker-compose.yml start

# status : 
# 	@docker ps

# fclean :
# 	@docker system prune --all --force