import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/Screens/Tabs/components/body.dart'; 
class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
