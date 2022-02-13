// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';
import 'package:get/get.dart';

// List<Consumption> consumptionFromJson(String str) =>
//     List<Consumption>.from(json.decode(str).map((x) => Consumption.fromJson(x)));

List<String> divisionFromJson(String str) => 
      List<String>.from(json.decode(str).map((x) => x));

     

String divisionToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));


// String consumptionToJson(List<Consumption> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Consumption {
//   Consumption({
//        this.id, 
//   });

//   int id; 

//   var isFavorite = false.obs;

//   factory Consumption.fromJson(Map<String, dynamic> json) => Consumption(
//         id: json["id"], 
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
       
//       };
// }
 

//final brandValues = EnumValues({"maybelline": Brand.MAYBELLINE});

 

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;

//   // EnumValues(this.map) {
//   //   // TODO: implement 
//   //   throw UnimplementedError();
//   // }

//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
