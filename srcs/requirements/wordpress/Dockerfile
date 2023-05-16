# Utiliser une image de base avec PHP et Apache
FROM php:7.4-apache

# Mettre à jour les paquets du système
RUN apt-get update && apt-get upgrade -y

# Installer les dépendances nécessaires pour WordPress
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Télécharger et décompresser WordPress
RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf /tmp/wordpress.tar.gz -C /var/www/html/ --strip-components=1 && \
    rm /tmp/wordpress.tar.gz

# Définir les permissions correctes sur les fichiers WordPress
RUN chown -R www-data:www-data /var/www/html/

# Exposer le port 80 pour le serveur web
EXPOSE 80

# Lancer Apache au démarrage du conteneur
CMD ["apache2-foreground"]