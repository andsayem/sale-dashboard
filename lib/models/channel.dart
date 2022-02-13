
import 'dart:convert';
import 'package:get/get.dart'; 
List<String> channelFromJson(String str) => 
List<String>.from(json.decode(str).map((x) => x));

String channelToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
