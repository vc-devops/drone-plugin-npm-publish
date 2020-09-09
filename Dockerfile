FROM docker:19.03.8-dind

ENV DOCKER_HOST=unix:///var/run/docker.sock

ADD script.sh /bin/

RUN chmod +x /bin/script.sh

RUN docker build --pull --rm -f "${PLUGIN_DOCKERFILE}" -t dronepluginnpmpublish:latest "."

ENTRYPOINT /bin/script.sh