# Utilizar una imagen oficial de Jenkins con soporte para Docker basada en Alpine
FROM jenkins/jenkins:lts-alpine

# Cambiar al usuario root para instalar software
USER root

# Instalar Node.js y npm
RUN apk update && \
    apk add --no-cache curl && \
    apk add --no-cache nodejs npm && \
    apk add --no-cache python3

# Instalar Newman globalmente
RUN npm install -g newman newman-reporter-htmlextra

# Volver al usuario jenkins
USER jenkins
