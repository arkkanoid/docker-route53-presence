route53-presence
================

Docker container which registers the local ec2 instance into route53 record-set.


docker run --name route53-presence \
-e HOSTNAME_PUBLIC=example.com \
-e RECORD_DOMAIN=pre.example.com \
-e INSTANCE_NAME_TAG=kube-aws-worker \
-e AWS_DEFAULT_REGION=eu-west-1 \
-e AWS_ACCESS_KEY_ID=XXXXXX \
-e AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXX \
arkkanoid/docker-route53-presence