FROM debian:jessie
MAINTAINER Jordi Arcas "arkkanoid@gmail.com"

RUN apt-get update && \
    apt-get install -y \
        python-boto \
        python-requests \
        && \
    rm -rf /var/lib/apt/lists/*


ADD bin/route53-presence /bin/route53-presence

ENTRYPOINT ["/bin/route53-presence"]
CMD ["-h"]
