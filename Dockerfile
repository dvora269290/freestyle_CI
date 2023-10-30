# Use an official Node.js runtime as a parent image
FROM node:18-slim
# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

#Another option instead the lean() in the controllers file
# RUN npm i -D handlebars@4.5.0


# Copy all the application files to the container's working directory
COPY . .

# Expose the port your application runs on
EXPOSE 4000



CMD [ "node", "index.js" ]

