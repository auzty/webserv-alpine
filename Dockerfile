FROM alpine
ADD bin/webserver-file /hello
RUN adduser testinguser -D
WORKDIR /

RUN mkdir -p /opt/apps
VOLUME /opt/apps

USER testinguser
EXPOSE 3000
CMD ["-dir","/opt/apps"]
ENTRYPOINT ["/hello"]
