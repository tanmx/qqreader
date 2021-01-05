# ⚠️cookie获取方法：

## 1.企鹅阅读
  
进 https://m.q.qq.com/a/s/d3eacc70120b9a37e46bad408c0c4c2a  点我的,获取cookie  
进一本书 看 10秒以下 然后退出，获取阅读时长cookie，看书一定不能超过10秒  
可能某些页面会卡住，但是能获取到cookie，再注释cookie重写就行了！  
宝箱奖励为20分钟一次，自己根据情况设置定时，建议设置11分钟一次 

#企鹅读书获取cookie
```
[mitm] 
hostname=mqqapi.reader.qq.com  

https:\/\/mqqapi\.reader\.qq\.com\/mqq\/user\/init url script-request-header https://raw.githubusercontent.com/ziye12/JavaScript/master/qqread.js
https:\/\/mqqapi\.reader\.qq\.com\/mqq\/addReadTimeWithBid? url script-request-header https://raw.githubusercontent.com/ziye12/JavaScript/master/qqread.js
```

## 2.今日头条极速版
```
[mitm]  
hostname = api3-normal-c-*.snssdk.com   
[rewrite local]  
^https:\/\/api3-normal-c-\w+\.snssdk\.com\/score_task\/v1\/task\/(sign_in|get_read_bonus) url script-request-header https://raw.githubusercontent.com/ZhiYi-N/Private-Script/master/Scripts/jrtt.js  
^https:\/\/api3-normal-c-\w+\.snssdk\.com\/ttgame\/game_farm\/home_info url script-request-header https://raw.githubusercontent.com/ZhiYi-N/Private-Script/master/Scripts/jrtt.js  
[task]  
5,35 8-23 * * * https://raw.githubusercontent.com/ZhiYi-N/Private-Script/master/Scripts/jrtt.js, tag=今日头条极速版, enabled=true  
```

## 3.抖音极速版
```
[mitm]
hostname = *.snssdk.com

[rewrite local]
https://(aweme-\w+|aweme).snssdk.com/luckycat/aweme/v1/task/sign_in/detail? url script-request-header https://raw.githubusercontent.com/ZhiYi-N/Private-Script/master/Scripts/dyjsb.js
https://(aweme-\w+|aweme).snssdk.com/luckycat/aweme/v1/task/done/read? url script-request-header https://raw.githubusercontent.com/ZhiYi-N/Private-Script/master/Scripts/dyjsb.js
https://(aweme-\w+|aweme).snssdk.com/luckycat/aweme/v1/task/walk/step_submit? - script-request-header https://raw.githubusercontent.com/ZhiYi-N/Private-Script/master/Scripts/dyjsb.js
```