# Getting small base image for node (alpine)
FROM node:14-alpine AS builder
# Executed when building the base image
# Creating a new directory for app files
RUN mkdir -p /usr/src/app
# Sets the working directory to this path
WORKDIR /usr/src/app
# Copies the backend code to the working directory
COPY package.json ./
#Install dependencies
RUN npm install --only==production
COPY . .

FROM node:14-alpine
# Sets the working directory to this path
WORKDIR /usr/src/app
# Copies the backend code to the working directory
COPY --from=builder /usr/src/app ./
# Expose container to the correct port number 
EXPOSE 5000
# Executed when creating the container from the image
CMD ["node","server.js"]
