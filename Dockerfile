# Use the official NGINX base image
FROM nginx:latest

# Copy your index.html to the appropriate directory
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX when the container is launched
CMD ["nginx", "-g", "daemon off;"]
