# Use the official NGINX base image
FROM nginx:latest

# Copy your NGINX configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static files to the appropriate directory
COPY ./static /usr/share/nginx/html

# Expose the port on which NGINX will listen
EXPOSE 80

# Start NGINX when the container is launched
CMD ["nginx", "-g", "daemon off;"]
