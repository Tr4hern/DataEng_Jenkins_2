FROM node:14-alpine
RUN mkdir -p /app_node_jenkins_docker
WORKDIR /app_node_jenkins_docker
COPY package.json ./
RUN npm install
COPY ./ ./
EXPOSE 3001
CMD [ "node", "index.js" ]