FROM nginx

LABEL Pawel Akonom

COPY run-all.sh /root

RUN chmod 755 /root/run-all.sh && \
    apt-get update && \
    apt-get install -y memcached

COPY nginx.conf /etc/nginx/nginx.conf
COPY memcached.conf /etc/memcached.conf

EXPOSE 80

CMD ["/root/run-all.sh"]
