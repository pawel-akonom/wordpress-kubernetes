FROM nginx

LABEL Pawel Akonom

COPY nginx.conf /etc/nginx/nginx.conf
COPY run-all.sh /root

RUN chmod 755 /root/run-all.sh && \
    apt-get update && \
    apt-get install -y memcached && \
    service memcached start

EXPOSE 80

CMD ["/root/run-all.sh"]
