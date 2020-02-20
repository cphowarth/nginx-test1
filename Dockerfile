FROM nginx:1.9.1

RUN apt-get update

RUN apt-get install -y vim curl

RUN mkdir -p /data/up1
WORKDIR /data/up1
RUN echo "hi there" > /data/up1/index.html

RUN mkdir /data/images
WORKDIR /data/images
COPY giffy.gif giffy.gif

WORKDIR /etc/nginx/conf.d
COPY nginx.conf default.conf

# RUN nginx -s reload
