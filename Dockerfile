FROM debian:jessie
MAINTAINER Jordi Arcas "arkkanoid@gmail.com"

RUN apt-get update && \
    apt-get install -y \
        python-boto=2.34.0-2 \
        python-requests=2.4.3-6 \
        && \
    rm -rf /var/lib/apt/lists/*


ADD bin/route53-presence /bin/route53-presence

ENTRYPOINT ["/bin/route53-presence"]
CMD ["-h"]
