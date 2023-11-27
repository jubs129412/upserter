# Use an official Node.js runtime as a parent image
FROM node:21.2.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# Define the command to run your app
CMD ["node", "server.js"]