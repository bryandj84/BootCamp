FROM node:16-alpine
LABEL project="demo"

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Copy package.json file into the container at /usr/src/app
COPY ./package.json /usr/src/app

# Install any needed packages specified in requirements.txt
RUN npm install 

# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app/

# Make port 3000 available to the world outside this container
EXPOSE 3000

# run the command
CMD [ "npm" , "run" , "start" ]
