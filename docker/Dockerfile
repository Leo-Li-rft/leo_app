FROM busybox

ADD hello-world /bin/hello-world
RUN chmod +x /bin/hello-world

ENV NAME=world

ENTRYPOINT ["/bin/hello-world"]
