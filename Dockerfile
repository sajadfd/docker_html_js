# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /

# Install any needed dependencies
RUN npm install -g http-server

# Make port 80 available to the world outside this container
EXPOSE 80

# Serve the contents of /var/www/html on port 80 when the container launches
CMD ["http-server", "/var/www/html", "-p", "80"]