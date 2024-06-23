# DevOpsProject
Working on a side DevOps project for a start up

## Overview
This project sets up an NGINX web server using Docker and Kubernetes. Below are the details of the Dockerfile, Kubernetes deployment, and service configurations used.

## Project Contents

- **Dockerfile**: Sets up the NGINX server and copies the HTML and CSS files.
- **Kubernetes Deployment**: Specifies the NGINX image and the desired number of replicas.
- **Kubernetes Service**: Exposes the NGINX deployment internally within the Kubernetes cluster using a ClusterIP type.
- **HTML and CSS**: Simple web page content to be served by NGINX.

## Dockerfile
The Dockerfile sets up an NGINX server and copies the HTML and CSS files into the default HTML directory. 

```dockerfile
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

# The following commands are for guidance and should be run manually to apply Kubernetes configurations:

# Apply the Kubernetes deployment configuration
# kubectl apply -f nginx-deployment.yaml

# Apply the Kubernetes service configuration
# kubectl apply -f nginx-service.yaml



