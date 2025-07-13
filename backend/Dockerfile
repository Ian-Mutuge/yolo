# Getting small base image for node (alpine)
FROM node:12-alpine AS builder
# Executed when building the base image
# Sets the working directory to this path
WORKDIR /app
# Copies the backend code to the working directory
COPY package.json ./
#Install dependencies
RUN npm install --only==production
   
COPY . .

FROM node:12-alpine
# Sets the working directory to this path
WORKDIR /app
# Copies the backend code to the working directory
COPY --from=builder /app ./
# Expose container to the correct port number 
EXPOSE 5000
# Executed when creating the container from the image
CMD ["node","server.js"]
