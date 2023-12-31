# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy all application files to the container
COPY . .

# Expose the port that the application will listen on
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]