import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shopx/models/product.dart';
import 'package:shopx/models/division.dart';
import 'package:shopx/models/channel.dart';
import 'package:shopx/models/Login.dart';
import 'package:shopx/models/DashboardSummaryReport.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
  static Future<List<String>> fetchDivisions() async {
    var response = await client.get(Uri.parse(
        'https://dashboarddev.ssgbd.com/app_api/get_division.php?username=dashboard'));
     if (response.statusCode == 200) {
      var jsonString = response.body;
      print('Test----------------');
      return divisionFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
  static Future<List<String>> fetchcChannels() async {
    var response = await client.get(Uri.parse(
        'https://dashboarddev.ssgbd.com/app_api/get_channel.php?username=dashboard'));
     if (response.statusCode == 200) {
      var jsonString = response.body; 
      return channelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
  static Future<String> fetchSummaryReports() async {
    var response = await client.get(Uri.parse(
        'https://dashboarddev.ssgbd.com/app_api/dashboard-summary-report.php?name=report&date=2018-01-01&to=2022-01-24&channel=Lighting&division=Barishal,Barishal-A,Barishal-L,Bogra,Bogra-A,Bogra-L,Chittagong,Chittagong-A,Chittagong-L,Comilla,Comilla-A,Comilla-L,Dhaka%20North,Dhaka%20North-A,Dhaka%20North-L,Dhaka%20South,Dhaka%20South-A,Dhaka%20South-L,Division-1,Division-2,Division-3,Division-4,DMC,DMC-A,DMC-L,Faridpur,Jessore,Jessore-A,Jessore-L,Khulna,Khulna-A,Khulna-L,Mymensingh,Mymensingh-A,Mymensingh-L,Rangpur,Rangpur-A,Rangpur-L,Sylhet,Sylhet-A,Sylhet-L&token=1'));
     if (response.statusCode == 200) {
      //return dashboardSummaryReportToJson(response.data);
    } else {
      //show error message
      return null;
    }
  }
  //SNssgbd@2010
  static Future<Login> fetchcLogin(password) async {
    var response = await client.get(Uri.parse(
        'https://dashboarddev.ssgbd.com/app_api/login.php?username=dashboard&password=' + password));
     if (response.statusCode == 200) {
        var jsonString = response.body; 
        print(jsonString);
      return loginFromJson(jsonString);
    } else {
       print('login error');
      //show error message
      return null;
    }
  }
 // static fetchConsumption() {}
}
 