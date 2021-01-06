#!/bin/sh
set -e
export LANG="zh_CN.UTF-8"
echo "启动crondtab定时任务主进程..."
crond -f
echo "加载定时任务..."
sh /qx-scripts/default_task.sh
crontab /qx-scripts/crontab_list.sh