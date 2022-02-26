import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class CallApi{

   // final String _url = 'http://logintut.localhost/api/';
   // print(data);
   // final String _url = 'https://bpt.ssgbd.com/backend/public/api/'; 
    final String _url = 'https://dashboard.ssgbd.com/app_api/'; 
    postData(data, apiUrl) async { 
        var fullUrl ;
        fullUrl = _url + apiUrl + await _getToken(); 
        return await http.post(
             Uri.parse(fullUrl), 
            body: jsonEncode(data), 
            headers: _setHeaders()
        );
    }
    getData(apiUrl) async {
       var fullUrl ;
        fullUrl = _url + apiUrl ; 
        //print(fullUrl);
       return await http.get(
         Uri.parse(fullUrl),
         headers: _setHeaders()
       );
    }




    _setHeaders() => {
        'Content-type' : 'application/json',
        'Accept' : 'application/json',
    };

    _getToken() async {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        var token = localStorage.getString('token');
        return '?token=$token';
    }
}