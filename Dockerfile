FROM ubuntu
USER root
RUN apt-get update
RUN apt-get install -y nginx
VOLUME [ "/data" ]
COPY READ.me /data/readme
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
