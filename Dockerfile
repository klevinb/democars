FROM nginx:latest

RUN mkdir -p /etc/nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Install openssl and generate SSL certificate
RUN apt-get update && \
    apt-get install -y openssl && \
    openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/nginx/server.key -out /etc/nginx/server.crt -subj "/CN=open-edition.demo" && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

