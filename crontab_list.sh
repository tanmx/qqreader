#必须要的默认定时任务请勿删除
52 */4 * * * bash /qx-scripts/default_task.sh >> /qx-scripts/logs/default_task.log 2>&1
# 每3天的23:50分清理一次日志
50 23 */3 * * rm -rf /qx-scripts/logs/*.log

#聚看点
*/20 */2 * * * node /qx-scripts/repositories/Sunert-Scripts/Task/jukan.js >> /qx-scripts/logs/jukan.log 2>&1
#中青看点
*/7 */2 * * * node /qx-scripts/repositories/Sunert-Scripts/Task/youth.js >> /qx-scripts/logs/youth.log 2>&1
#喜玛拉雅
*/30 * * * * python3 /qx-scripts/repositories/Zero-S1-xmly_speed/xmly_speed.py >> /qx-scripts/logs/xmly_speed.log 2>&1
#笑谱视频
*/15 8-23 * * * node /qx-scripts/repositories/ziye12-JavaScript/Task/iboxpay.js >> /qx-scripts/logs/iboxpay.log 2>&1