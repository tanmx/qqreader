FROM alpine
MAINTAINER tanmx <tanmingxiao@gmail.com>

RUN set -ex \
        && apk update && apk upgrade\
        && apk add --no-cache tzdata bash bash-completion git nodejs npm python3 py3-setuptools \
        && pip3 install --upgrade pip && pip3 install requests \
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone \
        && rm -rf /var/cache/apk/* \
        && sed -i 's#/root:/bin/ash#/root:/bin/bash#g' /etc/passwd \
        && source /etc/profile

RUN git clone https://github.com/tanmx/qx-scripts.git /qx-scripts \
        && cd /qx-scripts \
        && mkdir logs 

RUN cp /qx-scripts/docker_entrypoint.sh /usr/local/bin \
        && chmod +x /usr/local/bin/docker_entrypoint.sh

WORKDIR /qx-scripts
ENTRYPOINT ["docker_entrypoint.sh"]