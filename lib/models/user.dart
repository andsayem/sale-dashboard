import 'package:flutter/cupertino.dart';

class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final String isDarkmode;

  const User({
    this.imagePath,
    this.name,
    this.email,
    this.about,
    this.isDarkmode,
  });
}
