# Official node image
FROM node:13-alpine
# Setting the working directory to "/client"
WORKDIR /cast/client

# Copies the package.json file into "/client" and run npm i
COPY package.json /cast/client
RUN npm install --force
# Copies the entire react source code into "/client"
COPY . /cast/client

EXPOSE 3000
# Starting the react app
CMD [ "npm", "start"]

# https://adamtheautomator.com/mern-stack-tutorial/
# https://medium.com/bb-tutorials-and-thoughts/how-to-run-mern-stack-on-docker-compose-fad2050b9e
# https://medium.com/bb-tutorials-and-thoughts/how-to-build-and-deploy-mern-stack-on-aws-ecs-2a760a1f4de1