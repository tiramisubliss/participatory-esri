FROM node:16-slim

# Create and change to the app directory.
WORKDIR /usr/src/app

COPY package*.json ./
COPY . ./

# Install production dependencies.
RUN npm install

# Copy local code to the container image.
COPY . ./

EXPOSE 3000

# Run the web service on container startup.
CMD [ "npm", "start" ]


# FROM node:16
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3000
# CMD [ "npm", "start" ]

