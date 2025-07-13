# Getting small base image for node (alpine)-Build stage
FROM node:12-alpine  AS builder
# Sets the working directory to this path
WORKDIR /frontend
# Copies the package.json for installing dependencies
COPY package*.json ./
# Install dependencies
RUN npm install

# Copy the rest of the contents
COPY . .

# Final image that is actually pushed -Deploy stage

FROM node:12-alpine 
WORKDIR /frontend
#Copy only the files
COPY --from=builder /frontend ./
# Expose container to the correct port number 
EXPOSE 3000
# Executed when creating the container from the image
CMD ["npm","start"]

