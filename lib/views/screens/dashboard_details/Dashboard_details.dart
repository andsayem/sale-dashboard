import 'package:flutter/material.dart';
import 'package:shopx/views/screens/dashboard_details/components/Item.dart';
class Dashboard_details extends StatelessWidget {
  @override 
    Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body:  ItemPage(),
    );
  }
  
}
