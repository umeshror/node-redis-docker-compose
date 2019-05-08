# specify bbase image
FROM node:alpine

# copy files to this dir rather than copying it to root
WORKDIR /usr/app

COPY ./package.json ./
RUN npm install
COPY ./ ./

# default command
CMD ["npm", "start"]

# docker build  -t umeshvjti/nrd-node-docker .
# docker run umeshvjti/nrd-node-docker:latest # localhost:8080 wont give anything
