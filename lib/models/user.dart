import 'package:flutter/cupertino.dart';

class User {
  final String imagePath;
  final String name;
  final String designation;
  final String department;
  final String id;
  final String email;
  final String phone;

  const User({
    this.imagePath,
    this.name,
    this.designation,
    this.department,
    this.id,
    this.email,
    this.phone,
  });
}
