#!/usr/bin/ruby -w
#coding=utf-8
require File.dirname(__FILE__) + '/trackingmore.rb'

# post
=begin
url="http://api.trackingmore.com/v2/trackings/post"
postData = {
    "tracking_number" => "EA152563251CN",
    "carrier_code" => "china-ems"
}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

# get
=begin
url="http://api.trackingmore.com/v2/trackings/get?page=1&limit=25&created_at_min=1441314361&created_at_max=1477547238"
postData = ""
tracker = Trackingmore.new()
res =tracker.tracker(url,postData,"GET")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

# batch
=begin
url="http://api.trackingmore.com/v2/trackings/batch"
postData = [
{"tracking_number" => "RX478151565DE", "carrier_code" => "yanwen"},
{"tracking_number" => "RX478151548DE", "carrier_code" => "yanwen"}
]
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

# codeNumberGet
=begin
url="http://api.trackingmore.com/v2/trackings/yanwen/RX478151565DE"
postData =""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"GET")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

# codeNumberPut
=begin
url="http://api.trackingmore.com/v2/trackings/yanwen/RX478151548DE"
postData = {
    "title" => "new title",
    "customer_name" => "sandy",
	"customer_email" => "example@abc.com",
	"order_id" => "#986574521568"
}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"PUT")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end


# codeNumberDelete
=begin
url="http://api.trackingmore.com/v2/trackings/yanwen/RX478151548DE"
postData =""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"DELETE")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end


# realtime
=begin
url="http://api.trackingmore.com/v2/trackings/realtime"
postData = {
    "tracking_number" => "WT7724609050001",
    "carrier_code" => "sfcservice"
}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end






















