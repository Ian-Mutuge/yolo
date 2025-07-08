# Getting small base image for node (alpine)-Build stage
FROM node:14-alpine AS builder
# Executed when building the base image
# Creating a new directory for app files
RUN mkdir -p /usr/src/frontend
# Sets the working directory to this path
WORKDIR /usr/src/frontend
# Copies the package.json for installing dependencies
COPY package.json ./
# Install dependencies
RUN npm install --only=production
# Copy the rest of the contents
COPY . .

# Final image that is actually pushed -Deploy stage

FROM node:14-alpine 
WORKDIR /usr/src/frontend
#Copy only the files
COPY --from=builder /usr/src/frontend ./
# Expose container to the correct port number 
EXPOSE 3000
# Executed when creating the container from the image
CMD ["npm","start"]

