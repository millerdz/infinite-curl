FROM ubuntu:18.04
LABEL maintainer="derrick.miller@docker.com"
LABEL description="Ubuntu image that infinitely curls the specified URL. \
USAGE: docker run --rm ubuntu:custom-18.04 http://www.example.org"
ADD curlloop.sh /
RUN apt-get update; apt-get install -y curl; apt-get clean
#RUN chmod 0700 /curlloop.sh
#CMD ["/bin/sh"]
#ENTRYPOINT ["/bin/sh"]
ENTRYPOINT ["/bin/sh", "/curlloop.sh"]