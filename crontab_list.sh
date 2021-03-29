#必须要的默认定时任务请勿删除
52 */4 * * * bash /qx-scripts/default_task.sh >> /qx-scripts/logs/default_task.log 2>&1
# 每3天的23:50分清理一次日志
50 23 */3 * * rm -rf /qx-scripts/logs/*.log

#聚看点
*/20 */2 * * * node /qx-scripts/repositories/Sunert-Scripts/Task/jukan.js >> /qx-scripts/logs/jukan.log 2>&1
#中青看点
*/7 */2 * * * node /qx-scripts/repositories/Sunert-Scripts/Task/youth.js >> /qx-scripts/logs/youth.log 2>&1
#百度极速版
*/30 */5 * * * node /qx-scripts/repositories/Sunert-Scripts/Task/baidu_speed.js >> /qx-scripts/logs/baidu_speed.log 2>&1
#快手极速版
#15 19 * * * node /qx-scripts/repositories/Sunert-Scripts/Task/kuaishou.js >> /qx-scripts/logs/kuaishou.log 2>&1
#喜玛拉雅
#*/30 * * * * python3 /qx-scripts/repositories/Zero-S1-xmly_speed/xmly_speed.py >> /qx-scripts/logs/xmly_speed.log 2>&1
#今日头条极速版
#5,35 8-23 * * * node /qx-scripts/repositories/ZhiYi-N-Private-Script/Scripts/jrtt.js >> /qx-scripts/logs/jrtt.log 2>&1
#快看点
#*/30 * * * * node /qx-scripts/repositories/ZhiYi-N-Private-Script/Scripts/kkd.js >> /qx-scripts/logs/kkd.log 2>&1
#笑谱视频
#*/6 * * * * node /qx-scripts/repositories/6Svip120apk69-gitee_q8qsTAUA_cThxc1RBVUE/Task/iboxpay.js >> /qx-scripts/logs/iboxpay.log 2>&1
#步步宝
#0,30 0-23 * * * node /qx-scripts/repositories/6Svip120apk69-gitee_q8qsTAUA_cThxc1RBVUE/Task/bububao.js >> /qx-scripts/logs/bububao.log 2>&1
