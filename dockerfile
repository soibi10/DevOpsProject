# Use the official NGINX image as the base image
FROM nginx:latest

# Copy index.html and styles.css into the NGINX default HTML directory
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# (Optional) Copy additional static assets if needed
# COPY assets /usr/share/nginx/html/assets

# Expose port 80 to allow outside access to our application
EXPOSE 80

# Command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

