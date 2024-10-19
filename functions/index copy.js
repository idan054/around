
// To add library:
// $cd/functions/node_modules && npm i axios
// RUN THE CODE AT https://playcode.io/1249705
// My Firestore sample request server: https://github.com/idan054/FireBase_Fuctions_API/blob/master/functions/index.js
// How I Made it: https://www.youtube.com/watch?v=iIVlRZIo2-c&t=591s

//! Actually not in used in this project!

//import * as cors from 'cors';
const functions = require("firebase-functions");
const { default: axios } = require('axios');
//const axios = require('axios');
const corsHandler = require('cors')({origin: true});


 exports.serverVer = functions.https.onRequest((req, res) => {
        res.send({'SERVER VER:' : 7});
 });

 exports.autocomplete = functions.https.onRequest((req, res) => {
       //etc. example.com/user/000000?sex=female
       // ORIGINAL KEY: AIzaSyCzo0DzVe0YEMjpPUVMOGX3rqTtKEXlS9g
       const query = req.query;// query = {sex:"female"}
       const input = query["input"]

    corsHandler(req, res, () => {
       var url = `https://maps.googleapis.com/maps/api/place/autocomplete/json?key=AIzaSyD-5oNLyCX9tiICMNCozzSH8ZoUbb_-7pg&language=he&il&input=${input}`;
              axios.get(url, {}, {headers: {'Access-Control-Allow-Origin': '*'}})
           .then(function (response) {
               res.send(response.data);
           })
           .catch(function (error) {
               console.log(error);
           });
      });
 });

  exports.placeDetails = functions.https.onRequest((req, res) => {
    //etc. example.com/user/000000?sex=female
    const query = req.query;// query = {sex:"female"}
    const placeId = query["placeId"]
    corsHandler(req, res, () => {
        var url = `https://maps.googleapis.com/maps/api/place/details/json?key=AIzaSyD-5oNLyCX9tiICMNCozzSH8ZoUbb_-7pg&language=he&il&placeid=${placeId}`;
            axios.get(url, {}, {headers: {'Access-Control-Allow-Origin': '*'}})
            .then(function (response) {
                res.send(response.data);
            })
            .catch(function (error) {
                console.log(error);
            });
        });
  });

    exports.sendSms = functions.https.onRequest((req, res) => {
    const url = "https://sapi.itnewsletter.co.il/webServices/WsSMS.asmx";
    const action = '/webservices/WsSMS.asmx HTTP/1.1';

    const headers = {
        'Host': 'sapi.itnewsletter.co.il',
        'User-Agent': 'PHP-SOAP/5.6.23',
        'Content-Type': 'text/xml; charset=utf-8',
        'Accept': 'text/xml',
        'SOAPAction': 'apiGlobalSms/sendSmsToRecipients',
        'Cache-Control': 'no-cache',
        'Pragma': 'no-cache',
    };

    const name = "sendSmsToRecipients";

    const body = `<?xml version="1.0" encoding="UTF-8"?>
    <SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns1="apiGlobalSms">
       <SOAP-ENV:Body>
          <ns1:sendSmsToRecipients>
             <ns1:ApiKey>9v@QP7r$cZ#6C$53898k#5sSXd@2$R4x</ns1:ApiKey>
             <ns1:txtOriginator>0506134339</ns1:txtOriginator>
             <ns1:destinations>0584770076</ns1:destinations>
             <ns1:txtSMSmessage>TEXT</ns1:txtSMSmessage>
             <ns1:dteToDeliver />
             <ns1:txtAddInf>LocalMessageID</ns1:txtAddInf>
          </ns1:sendSmsToRecipients>
       </SOAP-ENV:Body>
    </SOAP-ENV:Envelope>`;


      //etc. example.com/user/000000?sex=female
      const query = req.query;// query = {sex:"female"}
      const phone = query["phone"]
      const text = query["text"]


  const data = body.replace("<ns1:destinations>PLACE_HOLDER</ns1:destinations>", `<ns1:destinations>${phone}</ns1:destinations>`);
  const updateData = data.replace("<ns1:txtSMSmessage>TEXT</ns1:txtSMSmessage>", `<ns1:txtSMSmessage>${text}</ns1:txtSMSmessage>`);
  const updatedHeaders = { ...headers, 'Content-Length': data.length.toString() };


      corsHandler(req, res, () => {
              axios.post(url, updateData, { headers: updatedHeaders })
              .then(function (response) {
                  res.send(response.data);
              })
              .catch(function (error) {
                  console.log(error);
                  res.send(error);
              });
          });
    });


    // SENDING SMS:
    function sms()
{
    console.log('START SMS');
    var http = require('https');
    var ApiKey = "9v@QP7r$cZ#6C$53898k#5sSXd@2$R4x";
	var options = {
		host: 'sapi.itnewsletter.co.il',
		port: 443,
		path:   '/webservices/WsSMS.asmx',
		method: 'POST'
	}

	this.sendSms = function(number, text)
	{
		
		var data = 
			'<?xml version="1.0" encoding="utf-8"?>'+
			'<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">'+
  				'<soap12:Body>'+
    				'<sendSmsToRecipients xmlns="apiGlobalSms">'+
      					'<ApiKey>'+ApiKey+'</ApiKey>'+
      					'<txtOriginator>0506134339</txtOriginator>'+
      					'<destinations>'+number+'</destinations>'+
      					'<txtSMSmessage>'+text+'</txtSMSmessage>'+
      					'<dteToDeliver></dteToDeliver>'+
						'<txtAddInf>jsnodetest</txtAddInf>'+
    				'</sendSmsToRecipients>'+
  				'</soap12:Body>'+
			'</soap12:Envelope>';
	
		options.headers = {
            
			'Content-Type' : 'text/xml; charset=utf-8',
			'Content-Length' : Buffer.byteLength(data) ,
			'SOAPAction': 'apiGlobalSms/sendSmsToRecipients'
		}
		
		
		//console.log('data :' + data);
		
		//console.log('data length :' + Buffer.byteLength(data));
		
		var req = http.request(options, function(res) {
            
		  //console.log('headers:\n' + JSON.stringify(res.headers));
		  //console.log('status:\n' + JSON.stringify(res.statusCode));
		  
		  res.setEncoding('utf8');
        
		  res.on('data', function (chunk) {
			//console.log('body:\n' + chunk);
            
			var xml2json = require("xmlparser");
			var xml=chunk;
            // console.log(xml);	
			
			xml=xml.substr(xml.indexOf("<sendSmsToRecipientsResponse"),xml.indexOf("</sendSmsToRecipientsResponse")-xml.indexOf("<sendSmsToRecipientsResponse"))
			
			console.log(xml);	
			var json = xml2json.parser(xml);
			console.log('cost: ' + json.sendSmsToRecipientsResponse.sendSmsToRecipientsResult);
			
		  });
		});

		req.on('error', function(e) {
		  console.log('problem with request: ' + e.message);
		});
		
		//console.log('data :' + data);
		req.write(data);
		req.end();
		
	}
}
