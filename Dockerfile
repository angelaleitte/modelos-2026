# Use the official Nginx image
FROM nginx:alpine

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the website files to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 81
EXPOSE 81

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]