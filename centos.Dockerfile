FROM centos:7
LABEL maintainer="derrick.miller@docker.com"
LABEL description="Centos image that infinitely curls the specified URL. \
USAGE: docker run --rm centos:custom-7 http://www.example.org"
ADD curlloop.sh /
#RUN chmod 0700 /curlloop.sh
#CMD ["/bin/sh"]
#ENTRYPOINT ["/bin/sh"]
ENTRYPOINT ["/bin/sh", "/curlloop.sh"]