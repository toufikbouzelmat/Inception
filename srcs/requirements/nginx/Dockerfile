
# Utiliser l'image de base Debian Buster
FROM debian:buster

# Mettre à jour les packages de base et installer nginx
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nginx \
    && apt-get -y install openssl 

# Copier le fichier de configuration nginx
COPY default.conf /etc/nginx/sites-available/default2
COPY tools/script.sh etc/nginx

RUN chmod +x etc/nginx/script.sh

RUN ./etc/nginx/script.sh

# Lancer nginx au démarrage du conteneur
CMD ["nginx", "-g", "daemon off;"]
