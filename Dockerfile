# Utiliser l'image debian officielle comme image parent
FROM debian:latest

# Installer des services et des packages
RUN  apt-get update && \
    apt-get -y install  \
    nginx \
    git

# Copier les fichiers de l'hôte vers l'image
RUN  git clone https://github.com/GloubyBoulga/docker-sae203.git
RUN cp -r docker-sae203/html/ /var/www/
RUN cp -r docker-sae203/video/ /var/www/html/

# Exposer le port 80
EXPOSE 80

# Lancer le service nginx au démarrage du conteneur
CMD ["nginx", "-g", "daemon off;"]
