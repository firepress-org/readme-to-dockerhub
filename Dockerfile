ARG VERSION="1.0"
ARG APP_NAME="readme-dockerhub"
ARG USER="root"
ARG ALPINE_VERSION="12.9-alpine"
ARG GIT_REPO_DOCKERFILE="https://github.com/firepress-org/readme-to-dockerhub"
ARG GIT_REPO_SOURCE="same"

FROM node:12.9-alpine
COPY index.js package*.json /app/
WORKDIR /app/
RUN npm install
ENTRYPOINT ["node", "/app/index.js"]
