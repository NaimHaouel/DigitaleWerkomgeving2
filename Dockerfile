FROM nginx:alpine
RUN date > /usr/share/nginx/html/buildtime.txt
COPY html /usr/share/nginx/html
EXPOSE 80
