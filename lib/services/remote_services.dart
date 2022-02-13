import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shopx/models/product.dart';
import 'package:shopx/models/division.dart';
import 'package:shopx/models/channel.dart';

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
 // static fetchConsumption() {}
}
 