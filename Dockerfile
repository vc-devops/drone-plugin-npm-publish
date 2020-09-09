FROM docker:19.03.8-dind

ENV DOCKER_HOST=unix:///var/run/docker.sock

ADD script.sh /bin/

RUN chmod +x /bin/script.sh

ENTRYPOINT /bin/script.sh