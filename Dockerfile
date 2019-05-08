# specify bbase image which has node preinstalled
FROM node:alpine

# copy files to this dir rather than copying it to root
WORKDIR /usr/app


# option1
# install some dependcies
# make your directoruy availbel in node:apline directory for package.jsond
# COPY ./ ./
# RUN npm install

# option2
COPY ./package.json ./
RUN npm install
COPY ./ ./



# default command
CMD ["npm", "start"]

# docker build  -t umeshvjti/node-docker .
# docker run umeshvjti/node-docker:latest # localhost:5000 wont give anything
# docker run -p 5000:8080 umeshvjti/node-docker:latest # localhost:5000  will work
