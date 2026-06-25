# docker files use for run our App any other computer correctly

# use alpine image as base image 
FROM node:18-alpine

WORKDIR /DevOps-practice-project-1

COPY package*.json ./

# install dependencies
RUN npm install --only=production

# coppy all files from current directory to working directory in container
COPY . .

# expose port 3000 to the outside world
EXPOSE 3000

# run the app as a non-root user
USER node

# run the app
CMD [ "node","server.js" ]
