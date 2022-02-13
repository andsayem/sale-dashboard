import 'package:flutter/material.dart';
import 'package:shopx/views/homepage.dart';
class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('API Test'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: HomePage(),
      );
}