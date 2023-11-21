# Use an official Node.js runtime as a base image
FROM node:12.2.0-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle your app source
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Define the command to run your app
CMD ["node", "app.js"]