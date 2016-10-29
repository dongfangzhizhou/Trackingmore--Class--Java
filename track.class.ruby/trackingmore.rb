#!/usr/bin/ruby -w
#coding=utf-8
	
class Trackingmore
	require 'uri'
	require 'net/http'
	require 'net/https'
	require 'json'
	
	def tracker(url,postData,method)
		headers ={'Content-Type' =>'application/json','Trackingmore-Api-Key':'896d1021-4caa-4492-8adf-aa84520d3ef9'}
		if postData.empty?
			@toSend =""
		else
			@toSend =postData.to_json
		end
		uri = URI.parse(url)
		https = Net::HTTP.new(uri.host,uri.port)
		if method =="GET"
			req = Net::HTTP::Get.new(uri.path,headers)
		elsif method =="POST"
			req = Net::HTTP::Post.new(uri.path,headers)
		elsif method =="PUT"
			req = Net::HTTP::Put.new(uri.path,headers)
		elsif method =="DELETE"
			req = Net::HTTP::Delete.new(uri.path,headers)
		else
			puts "parameter method is wrong!"
		end
		req.body = "#{@toSend}"
		res = https.request(req)
		
		return res
	end
	
end

	