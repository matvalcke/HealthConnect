# Utilisation de l'image Node.js officielle en tant qu'image de base
FROM node:latest

# Définir le répertoire de travail à l'intérieur du coteneur
WORKDIR /usr/src/app

# Copier le fichier package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installer les dépendances du projet

RUN npm install

# Copier le reste des fichiers de l'application dans le conteneur
COPY src/ ./src

EXPOSE 3000
CMD [ "npm", "start" ]
