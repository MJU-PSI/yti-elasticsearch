FROM elasticsearch:6.8.22

ENV TZ=Europe/Ljubljana

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]