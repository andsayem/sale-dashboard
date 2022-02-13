import 'package:shopx/constants.dart';
import 'package:flutter/material.dart';
import 'package:shopx/views/screens/tabs/components/body.dart'; 
import 'package:shopx/widget/navigation_drawer_widget.dart';
class Tabs extends StatelessWidget {
  @override
  static final String title = 'Sales Dashboard';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
          title: Text(title),
        ),
      
      body: Body(),
    );
  }
}
