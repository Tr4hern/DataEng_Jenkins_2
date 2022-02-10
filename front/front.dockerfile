FROM node:14-alpine 
RUN mkdir -p /app_node_jenkins_docker
WORKDIR /app_node_jenkins_docker
COPY package.json /app_node_jenkins_docker
RUN npm install 
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
