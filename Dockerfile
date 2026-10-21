# Use official Node runtime as a parent image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy the rest of your app's source code
COPY . .

# Expose the port your app runs on (change if needed)
EXPOSE 3000

# Command to run your app
CMD [ "npm", "start" ]