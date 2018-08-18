FROM heroku/heroku:18

RUN mkdir -m 777 /cgi_bin

ADD entrypoint.sh /entrypoint.sh
ADD server_config.json /cgi_bin/config.json
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
