import 'package:flutter/material.dart';
import 'package:shopx/views/screens/login/login_screen.dart';
import 'package:shopx/Login/loginScreen.dart';
import 'constants.dart';
import 'package:shopx/routes/routes.dart';

GlobalKey globalKey = GlobalKey();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opening View Demo',
      routes: AppRoutes.define(),
      key: globalKey,
      home: LoginScreen(),
      // home: LogIn(),
    );
    // return MaterialApp(
    //   theme: ThemeData(
    //      primarySwatch: CustomeTheme.primaryLight,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home:LoginScreen(),
    // );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add)),
    );
  }
}
