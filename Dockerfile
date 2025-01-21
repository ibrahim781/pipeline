# Use the official Ubuntu base image
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Nginx
RUN apt-get update -y && \
    apt-get install -y nginx && \
    apt-get clean

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx in the foreground when the container runs
CMD ["nginx", "-g", "daemon off;"]
