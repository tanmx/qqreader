FROM alpine
MAINTAINER tanmx <tanmingxiao@gmail.com>

RUN set -ex \
        && apk update && apk upgrade\
        && apk add --no-cache tzdata bash git nodejs npm \
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

RUN git clone https://github.com/tanmx/qx-scripts.git /qx-scripts \
        && cd /qx-scripts \
        && mkdir logs 

WORKDIR /qx-scripts
ENTRYPOINT ["bash", "docker_entrypoint.sh"]
