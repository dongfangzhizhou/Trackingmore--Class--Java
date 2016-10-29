package trackingMore;


public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			
			//post
			/*String	urlStr =null;
			String requestData= "{\"tracking_number\": \"EA152563251CN\",\"carrier_code\":\"china-ems\"}";
			String result = new Tracker().orderOnlineByJson(requestData,urlStr,"post");
			System.out.println("result======="+result);*/
			
			//get
			/*String	urlStr ="?page=1&limit=25&created_at_min=1441314361&created_at_max=1477118489";
			String requestData=null;
			String result = new Tracker().orderOnlineByJson(requestData,urlStr,"get");
			System.out.println("result======="+result);*/
			
			//batch
			/*String	urlStr =null;
			String requestData="[{\"tracking_number\": \"LK032051658CN\",\"carrier_code\":\"china-ems\"},{\"tracking_number\": \"EA166023092CN\",\"carrier_code\":\"china-ems\"}]";
			String result = new Tracker().orderOnlineByJson(requestData,urlStr,"batch");
			System.out.println("result======="+result);*/
			
			//codeNumberGet 
			/*String	urlStr ="/china-ems/EA166023092CN";
			String requestData=null;
			String result = new Tracker().orderOnlineByJson(requestData,urlStr,"codeNumberGet");
			System.out.println("result======="+result);*/
			
			//codeNumberPut
			/*String	urlStr ="/china-ems/EA166023092CN";
			String requestData="{\"title\": \"testtitle\",\"customer_name\":\"javatest\",\"customer_email\":\"942632688@qq.com\",\"order_id\":\"#123456\"}";
			String result = new Tracker().orderOnlineByJson(requestData,urlStr,"codeNumberPut");
			System.out.println("result======="+result);*/
			
			//codeNumberDelete
			/*String	urlStr ="/china-ems/EA166023092CN";
			String requestData=null;
			String result = new Tracker().orderOnlineByJson(requestData,urlStr,"codeNumberDelete");
			System.out.println("result======="+result);*/
			
			//realtime 
			/*String	urlStr =null;
			String requestData="{\"tracking_number\": \"RQ958152738CN\",\"carrier_code\":\"china-ems\"}";
			String result = new Tracker().orderOnlineByJson(requestData,urlStr,"realtime");
			System.out.println("result======="+result);*/
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}