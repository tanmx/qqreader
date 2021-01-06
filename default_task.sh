#!/bin/sh
set -e
CONFIG=/qx-scripts/repositories/config
echo "下载代码"
while read LINE
do
  NAME=`echo $LINE | awk '{print $1}'`
  REPO=`echo $LINE | awk '{print $2}'`
  if [ ! -d "/qx-scripts/repositories/${NAME}-${REPO}" ];then
    git clone https://github.com/${NAME}/${REPO} /qx-scripts/repositories/${NAME}-${REPO}
  fi
done < ${CONFIG}

echo "定时任务更新代码，git 拉取最新代码，并安装更新依赖..."
git -C /qx-scripts pull
while read LINE
do
  NAME=`echo $LINE | awk '{print $1}'`
  REPO=`echo $LINE | awk '{print $2}'`
  git -C /qx-scripts/repositories/${NAME}-${REPO} pull
  npm install --prefix /qx-scripts/repositories/${NAME}-${REPO}
done < ${CONFIG}
echo "加载最新task"
crontab /qx-scripts/crontab_list.sh
