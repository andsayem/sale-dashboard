import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.id,
    this.username,
    this.division,
    this.userType,
    this.token,
  });

  String id;
  String username;
  List<String> division;
  String userType;
  String token;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        id: json["id"],
        username: json["username"],
        division: List<String>.from(json["division"].map((x) => x)),
        userType: json["user_type"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "division": List<dynamic>.from(division.map((x) => x)),
        "user_type": userType,
        "token": token,
      };
}
