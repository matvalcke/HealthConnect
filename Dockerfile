# Utilisation de l'image Node.js officielle en tant qu'image de base
FROM node:latest

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installation des dépendances
RUN npm install

# Copie de tout le code source de l'application dans le conteneur
COPY . .

# Exposition du port sur lequel l'application écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
