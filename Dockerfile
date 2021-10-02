# Base Nginx HTTP/3 Image
FROM ranadeeppolavarapu/nginx-http3:latest

# Copy your certs.
COPY privkey.pem /etc/ssl/private/
COPY fullchain.pem /etc/ssl/

# Copy your configs.
COPY nginx.conf /etc/nginx/
COPY h3.nginx.conf /etc/nginx/conf.d/