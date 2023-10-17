# Utilisation d'une image Node.js
FROM node:18.10

# Définir le répertoire de travail dans l'image Docker
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./
COPY package-lock.json ./

# Installer les dépendances
RUN npm install 

# Utilisez la configuration du port 8080 de votre application Angular
EXPOSE 8080:4200

# Copier le reste des fichiers du projet
COPY .angular ./angular
COPY .vscode ./vscode
COPY node_modules ./node_modules
COPY src ./src
COPY .editorconfig ./editorconfig
COPY .gitignore ./gitignore
COPY angular.json ./angular.json
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json
COPY tsconfig.json ./tsconfig.json
COPY tsconfig.spec.json ./tsconfig.spec.json
COPY tsconfig.app.json ./tsconfig.app.json
COPY playwright.config.ts ./playwright.config.ts
COPY README.md ./README.md
COPY src/ /app/src/

# Commande d'exécution par défaut (peut être modifiée)
CMD ["npx", "playwright", "test", "--ui"]
