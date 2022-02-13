import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopx/models/WastegeRelations.dart';
class CallApi{
  //https://dashboarddev.ssgbd.com/app_api/login.php?username=dashboard&password=SNssgbd@2010
  final String _url = 'https://dashboarddev.ssgbd.com/app_api/';
  final String _imgUrl='https://dashboarddev.ssgbd.com/app_api/'; 
  getImage(){
    return _imgUrl;
  }
  postData(data, apiUrl) async {
    print(data);
    var fullUrl = _url + apiUrl ;
    //+ await _getToken();
      http.Response response =  await http.post(
          Uri.parse(fullUrl),
          body: jsonEncode(data),
          headers: _setHeaders()
      );
      if (response.statusCode == 200) {
         var data = jsonDecode(response.body);
         print(data);
      }else{
         print(response.statusCode);
      } 
  }
getData(apiUrl) async {
    var fullUrl = _url + apiUrl ;
    //+ await _getToken() ;
    http.Response response = await http.get(Uri.parse(fullUrl),headers: _setHeaders());
    
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
     
    }else{
      print(response.statusCode);
    }
  }
getLoginData(apiUrl) async {
    var fullUrl = _url + apiUrl ;
    http.Response response = await http.get(Uri.parse(fullUrl),headers: _setHeaders());
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
     // var data = jsonDecode(response.body);
     // print(fullUrl);
      //print(data['token']);
      var  division =  data['division'];
      var  user_id =  data['id'];
      var  token =  data['token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('apiToken', token);
      prefs.setString('user_id', user_id);
      prefs.setString('division', division); 
      if(user_id){
        return  true;
      }else{
        return  false ; 
      }
    }else{
      print(response.statusCode);
    }
  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };
  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '&token=$token';
  }
  getArticles(apiUrl) async {

  }
  getPublicData(apiUrl) async {

  }



}
  Future<List<WastegeRelations>> fetchWastegeRelations() async {
  //final response =  await http.get(Uri.parse('https://dashboarddev.ssgbd.com/app_api/dashboard-summary-report.php?name=report&date=2018-01-01&to=2022-01-24&channel=Lighting&division=Barishal,Barishal-A,Barishal-L&token=1'));
  final response =  await http.get(Uri.parse('https://bpt.ssgbd.com/backend/public/api/wastege_relations?limit=1'));
   
    if (response.statusCode == 200) { 
     // var resData  =  json.decode(response.body); 
      var  jsonResponse = json.decode(response.body);
      List returnData =  jsonResponse['data'];
      return returnData.map((job) => WastegeRelations.fromJson(job)).toList();
      //return WastegeRelations.fromJson(resData['data']);
    } else {
      throw Exception('Failed to load post');
    }
  }
  