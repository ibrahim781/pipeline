# Use Ubuntu as the base image
FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install nginx
RUN apt-get update -y && apt-get install -y nginx

# Create a test HTML file with "Hello Ibrahim"
RUN echo '<html><body><h1>Hello Ibrahim</h1></body></html>' > /var/www/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
