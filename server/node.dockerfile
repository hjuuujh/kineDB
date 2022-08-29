# Sets the base image of the application to the node’s official image.
FROM node:13-alpine

# Sets the Working Directory as "/server"
WORKDIR /cast/server
# Copies the package.json file into "/server" and runs npm i
COPY package.json /cast/server
RUN npm install --force
# Copies the entire source code into "/server"
COPY . /cast/server

# Specifies the port the node app will be running on
EXPOSE 5000

# Runs "node server.js" after the above step is completed
CMD ["npm", "run", "dev"]