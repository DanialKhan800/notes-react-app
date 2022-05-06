# get the base node image
FROM node:alpine as builder

# set the working dir for container
WORKDIR /home/danial/fiver-project

# copy the json file first
COPY ./package.json /home/danial/fiver-project

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

# build the folder
CMD [ "npm", "run", "start" ]
