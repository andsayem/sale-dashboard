//import 'package:day12_login/Animation/FadeAnimation.dart';
//import 'package:dashboard/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';
import 'package:dashboard/Screens/Home/home.dart';
import 'package:dashboard/Screens/Login/login_screen.dart'; 
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dashboard/Screens/Sitemenu/menu_dashboard_layout.dart';
import 'package:dashboard/Screens/Tabs/tabs.dart'; 
import 'package:flutter/services.dart';
import 'package:dashboard/widget/button_widget.dart';
import 'package:dashboard/widget/navigation_drawer_widget.dart';

//Future main() async {

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Sale Dashboard';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body:  Tabs()
      );
}
