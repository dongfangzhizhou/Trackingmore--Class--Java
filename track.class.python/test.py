#!/usr/bin/python
# -*- coding: UTF-8 -*-
from API import trackingmoreclass
tracker =trackingmoreclass.track

result=''
#get
urlStr = "?page=1&limit=25&created_at_min=1441314361&created_at_max=1477381535"
requestData =''
result = tracker.trackingmore(requestData, urlStr, "get")

#post
urlStr = ''
requestData ="{\"tracking_number\": \"BYS006086075\",\"carrier_code\":\"yanwen\"}"
result = tracker.trackingmore(requestData, urlStr, "post")

#batch
urlStr = ''
requestData ="[{\"tracking_number\": \"BYS006086089\",\"carrier_code\":\"yanwen\"},{\"tracking_number\": \"BYS006086092\",\"carrier_code\":\"yanwen\"}]"
result = tracker.trackingmore(requestData, urlStr, "batch")

#codeNumberGet
urlStr = "/yanwen/BYS006086089"
requestData =''
result = tracker.trackingmore(requestData, urlStr, "codeNumberGet")

#codeNumberPut
urlStr = "/yanwen/BYS006086092"
requestData ="{\"title\": \"test\",\"customer_name\":\"abner\",\"customer_email\":\"1421851519@qq.com\",\"order_id\":\"#123123\"}"
result = tracker.trackingmore(requestData, urlStr, "codeNumberPut")


#codeNumberDel
urlStr = "/wishpost/82196271478"
requestData =''
result = tracker.trackingmore(requestData, urlStr, "codeNumberDel")

#realtime
urlStr =''
requestData ="{\"tracking_number\": \"BYS006086061\",\"carrier_code\":\"yanwen\"}"
result = tracker.trackingmore(requestData, urlStr, "realtime")
print(result)