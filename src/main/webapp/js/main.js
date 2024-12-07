//Call API
function callApi(method, url, data, responseHandler)
{
	var options;
	if(method == "GET" || method == "DELETE")
		options = {method: method, headers:{'Content-Type':'application/json'} };
	else
		options = {method: method, headers:{'Content-Type':'application/json'}, body: data };
	fetch(url, options)
		.then(response => {
			if(!response.ok)
				throw new Error(response.status + ": " + response.statusText);
			return response.text();
		})
		.then(data => responseHandler(data))
		.catch(error => alert(error));
} 