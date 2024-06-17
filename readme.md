###Dockerfile Explanation

# Base Image

FROM node:20

# Sets the working directory inside the container

WORKDIR /app

# Copies all files from the current directory to /app in the container

COPY . .

# Install dependencies defined in package.json

RUN npm install

# Build the application

RUN npm run build

# Generate Prisma client

RUN npx prisma generate

# Expose port 3000 to allow external access

EXPOSE 3000

# Command to run when the container starts

CMD ["node", "dist/index.js"]

Common commands

- WORKDIR: Sets the working directory for any RUN, CMD, ENTRYPOINT, COPYinstructions that follow it.
- RUN: Executes any commands in a new layer on top of the current image and commits the results.
- CMD: Provides defaults for executing a container. There can only be one CMD instruction in a Dockerfile.
- EXPOSE: Informs Docker that the container listens on the specified network ports at runtime.
- ENV: Sets the environment variable.
  C- OPY: Allow files from the Docker host to be added to the Docker image

Common docker commands
docker images
docker ps
docker run
docker build

1. **docker images**: Shows you all the images that you have on your machine
2. **docker ps**: Shows you all the containers you are running on your machine
3. **docker run**: Lets you start a container
   **-p ⇒ let’s you create a port mapping**
   **-d. ⇒ Let’s you run it in detatched mode**
4. **docker build**: Lets you build an image. We will see this after we understand how to create your own Dockerfile
5. **docker push**: Lets you push your image to a registry
6. Extra commands:
   **docker kill**
   **docker exec**
