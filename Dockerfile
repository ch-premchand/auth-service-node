# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

COPY . .

# Install Node.js dependencies
RUN npm install

# Expose the port on which your Node.js application will run
EXPOSE 3006

# Define the command to run your Node.js application
CMD [ "npm", "start" ]