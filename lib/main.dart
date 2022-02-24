import 'package:flutter/material.dart';
// import 'package:shopx/views/homepage.dart';
import 'package:shopx/views/screens/login/login_screen.dart';
//import 'package:shopx/Login/loginScreen.dart';
import 'package:shopx/views/screens/tabs/tabs.dart';
//import 'constants.dart';
//import 'package:shopx/routes/routes.dart';
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
  void _checkIfLoggedIn() async{
      // check if token is there
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      var token = localStorage.getString('token');
      if(token!= null){
         setState(() {
            _isLoggedIn = true;
         });
      }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _isLoggedIn ? Tabs() :  LoginScreen(),
      ),
      
    );
  }
}
