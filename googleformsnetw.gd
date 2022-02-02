extends HTTPRequest

var coins = 50

var urlform = "https://docs.google.com/forms/u/0/d/e/1FAIpQLSfy9zHTYL1wvcGJhM7Kg1W866GiUo_mAhVRcf2Gbpyg0y1BUA/formResponse"

var headers = ["Content-Type: application/x-www-form-urlencoded"]

var http = HTTPClient.new()

func _on_Button_pressed():
	var data = {"entry.150015492" : $LineEdit.text, "entry.72793803" : coins}
	
	var pool_headers = PoolStringArray(headers)
	
	data = http.query_string_from_dict(data)
	
	var result = self.request(urlform, pool_headers, false, HTTPClient.METHOD_POST, data)
