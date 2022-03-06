import 'package:dashboard/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
// import 'package:dashboard/views/homepage.dart';
import 'package:dashboard/views/screens/login/login_screen.dart';
//import 'package:dashboard/Login/loginScreen.dart';
import 'package:dashboard/views/screens/tabs/tabs.dart';
//import 'constants.dart';
//import 'package:dashboard/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

GlobalKey globalKey = GlobalKey();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }

  void _checkIfLoggedIn() async {
    // check if token is there
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      setState(() {
        _isLoggedIn = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        body: _isLoggedIn ? Tabs() : LoginScreen(),
      ),
    );
  }
}
