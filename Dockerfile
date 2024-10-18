# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the index.html file to the default NGINX HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to make the web server accessible
EXPOSE 80

# Start the NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
