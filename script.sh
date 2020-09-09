FROM docker:19.03.8-dind

ENV DOCKER_HOST=unix:///var/run/docker.sock

ADD release/linux/amd64/drone-docker /bin/

ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh", "/bin/drone-docker"]