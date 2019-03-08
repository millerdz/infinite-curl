FROM alpine:3.9
LABEL maintainer="derrick.miller@docker.com"
LABEL description="Alpine image that curls the specified URL the specified number of times. \
USAGE: docker run --rm alpine:custom-3.9-curl http://www.example.org 10 \
This curls the URL http://www.example.org over a period of 10 times."
RUN apk add --no-cache curl
ADD curlloop.sh /
#RUN chmod 0700 /curlloop.sh
#CMD ["/bin/sh"]
#ENTRYPOINT ["/bin/sh"]
ENTRYPOINT ["/bin/sh", "/curlloop.sh"]