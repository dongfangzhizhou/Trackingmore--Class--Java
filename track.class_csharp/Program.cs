using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace API
{
    class Program
    {
        static void Main(string[] args)
        {
            //post
            string urlstr = null;
            string requestdata = "{\"tracking_number\": \"1047435553720\",\"carrier_code\":\"china-ems\"}";
            string result = new Tracker().getOrderTracesByJson(requestdata, urlstr, "post");


            //get
            string urlStr = "?page=1&limit=25&created_at_min=1441314361&created_at_max=1477308420";
            string requestData = null;
            String result = new Tracker().getOrderTracesByJson(requestData, urlStr, "get");


            //batch
            string urlstr = null;
            string requestdata = "[{\"tracking_number\": \"1047435554520\",\"carrier_code\":\"china-ems\"},{\"tracking_number\": \"1047435555420\",\"carrier_code\":\"china-ems\"}]";
            string result = new Tracker().getOrderTracesByJson(requestdata, urlstr, "batch");

            //codeNumberGet
            string urlStr = "/wishpost/82196269752";
            string requestData = null;
            String result = new Tracker().getOrderTracesByJson(requestData, urlStr, "codeNumberGet");


            //codeNumberPut
            string urlStr = "/wishpost/82196269752";
            string requestData = "{\"title\": \"test\",\"customer_name\":\"abner\",\"customer_email\":\"1421851519@qq.com\",\"order_id\":\"#123123\"}";
            String result = new Tracker().getOrderTracesByJson(requestData, urlStr, "codeNumberPut");

            //codeNumberDel
            string urlStr = "/4px/RF421899730CN";
            string requestData = null;
            String result = new Tracker().getOrderTracesByJson(requestData, urlStr, "codeNumberDel");

            //realtime
            string urlstr = null;
            string requestdata = "{\"tracking_number\": \"RF421899728SG\",\"carrier_code\":\"4px\"}";
            String result = new Tracker().getOrderTracesByJson(requestdata, urlstr, "realtime");


            //Console.WriteLine("result:" + result);
        }
    }
}
