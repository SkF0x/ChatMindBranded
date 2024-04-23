# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock (if available) to the container
COPY package.json yarn.lock* ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code to the container
COPY . .

# Expose the port on which your application will run
EXPOSE 3000

# Define the command to run your application
CMD ["yarn", "start"]

