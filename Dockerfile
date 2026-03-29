FROM ubuntu/squid:latest

COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 3128

ENTRYPOINT ["/entrypoint.sh"]
