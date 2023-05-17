
# Utiliser l'image de base Debian Buster
FROM debian:buster

# Mettre à jour les packages de base et installer nginx
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nginx \
    && apt-get -y install openssl 

# Copier le fichier de configuration nginx
# COPY my_nginx.conf /etc


# Lancer nginx au démarrage du conteneur
CMD ["nginx", "-g", "daemon off;"]
