#必须要的默认定时任务请勿删除
52 */1 * * * sh /qx-scripts/default_task.sh >> /qx-scripts/logs/default_task.log 2>&1
# 每3天的23:50分清理一次日志
50 23 */3 * * rm -rf /qx-scripts/logs/*.log

#聚看点
*/20 */2 * * * node /qx-scripts/repositories/Sunert-Scripts/Task/jukan.js >> /qx-scripts/logs/jukan.log 2>&1
#抖音极速版
*/5 * * * * node /qx-scripts/repositories/ZhiYi-N-script/dyjsb.js >> /qx-scripts/logs/dyjsb.log 2>&1
