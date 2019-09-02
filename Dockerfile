ARG VERSION="0.1"
ARG APP_NAME="readme-to-dockerhub"
ARG USER="root"
ARG ALPINE_VERSION="12-alpine"
ARG GIT_REPO_DOCKERFILE="https://github.com/firepress-org/readme-to-dockerhub"
ARG GIT_REPO_SOURCE="same"

FROM node:${ALPINE_VERSION}
COPY index.js package*.json /app/
WORKDIR /app/
RUN npm install
ENTRYPOINT ["node", "/app/index.js"]
