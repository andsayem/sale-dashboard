import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/views/screens/tabs/components/body.dart'; 
import 'package:dashboard/widget/navigation_drawer_widget.dart';
class Tabs extends StatelessWidget {
  @override
  static final String title = 'Sales Dashboard';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor, 
      // appBar: AppBar(
      //     title: Text(title),
      //     backgroundColor: kPrimaryColor,
      //   ),
      
      body: Body(),
    );
  }
}
