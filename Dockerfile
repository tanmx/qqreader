FROM alpine
MAINTAINER tanmx <tanmingxiao@gmail.com>

RUN set -ex \
        && apk update && apk upgrade\
        && apk add --no-cache tzdata git nodejs npm\
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

RUN git clone https://github.com/tanmx/qx-scripts.git /qx-scripts \
        && cd /qx-scripts \
        && mkdir logs

RUN git clone https://github.com/Sunert/Scripts.git /qx-scripts/Scripts \
		&& cd /qx-scripts/Scripts \
		&& npm install

RUN crontab /qx-scripts/crontab_list.sh

WORKDIR /qx-scripts
CMD ["node"]
