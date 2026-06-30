FROM nginx:alpine

RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    root /app; \
    index index.html; \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Expose port 80 (nginx default)
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
