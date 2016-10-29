package main
import(
	"fmt"
	"io/ioutil"
	"net/http"
	//"net/url"
	"strings"
	//"encoding/json"  
 )
																																																										 
func main(){
		//post
		//var url string ="http://api.trackingmore.com/v2/trackings/post"
		//var postData string ="{\"tracking_number\":\"EA152563251CN\",\"carrier_code\" : \"china-ems\"}"
        //httpDo(url,postData,"POST")
		
		//get
		//var url string ="http://api.trackingmore.com/v2/trackings/get?page=1&limit=25&created_at_min=1441314361&created_at_max=1477721625"
		//httpDo(url,"","GET")
		
		//batch
		//var url string ="http://api.trackingmore.com/v2/trackings/batch"
		//var postData string ="[{\"tracking_number\":\"LM088827160CN\",\"carrier_code\" : \"china-ems\"},{\"tracking_number\":\"LM088827743CN\",\"carrier_code\" : \"china-ems\"}]"
        //httpDo(url,postData,"POST")
		
		//codeNumberGet
		//var url string ="http://api.trackingmore.com/v2/trackings/4px/S000002431442"
        //httpDo(url,"","GET")
		
		//codeNumberPut
		//var url string ="http://api.trackingmore.com/v2/trackings/4px/S000002431442"
		//var postData string ="{\"title\":\"new title\",\"customer_name\" : \"sandy\",\"customer_email\" : \"example@abc.com\",\"order_id\" : \"#123456\"}"
        //httpDo(url,postData,"PUT")
		
		//codeNumberDel
		//var url string ="http://api.trackingmore.com/v2/trackings/4px/S000002431442"
        //httpDo(url,"","DELETE")
		
		//realtime
		//var url string ="http://api.trackingmore.com/v2/trackings/realtime"
		//var postData string ="{\"tracking_number\":\"S000002858641\",\"carrier_code\" : \"4px\"}"
        //httpDo(url,postData,"POST")
		
		
      
}


func httpDo(url,postData,method string) {
    client := &http.Client{}
    req, err := http.NewRequest(method,url,strings.NewReader(postData))
    if err != nil {
        // handle error
    }
    req.Header.Set("Content-Type", "application/json'")
    req.Header.Set("Trackingmore-Api-Key", "YOUR API KEY")
    resp, err := client.Do(req)
    defer resp.Body.Close()
    body, err := ioutil.ReadAll(resp.Body)
    if err != nil {
        // handle error
    }
    fmt.Println(string(body))
}

 
