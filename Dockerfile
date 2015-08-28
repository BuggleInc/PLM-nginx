# Set nginx base image
FROM nginx

# File Author / Maintainer
MAINTAINER Matthieu NICOLAS

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/ssl
COPY webPLM.bundle.crt /etc/nginx/ssl/webPLM.crt
COPY webPLM.key /etc/nginx/ssl/webPLM.key