import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:shopx/Home/homeScreen.dart';
//import 'package:shopx/SignUp/signUpScreen.dart';
import 'package:shopx/api/api.dart';
import 'package:shopx/views/screens/tabs/tabs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _isLoading = false;
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ScaffoldState scaffoldState;
  _showMsg(msg) {
    //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            ///////////  background///////////
            new Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.4, 0.9],
                  colors: [
                    Color(0xFFFF835F),
                    Color(0xFFFC663C),
                    Color(0xFFFF3F1A),
                  ],
                ),
              ),
            ),

            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      elevation: 4.0,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            /////////////  Email//////////////
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: mailController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.grey,
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            /////////////// password////////////////////
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              cursorColor: Color(0xFF9b9b9b),
                              controller: passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.grey,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            /////////////  LogIn Botton///////////////////
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FlatButton(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 8, bottom: 8, left: 10, right: 10),
                                  child: Text(
                                    _isLoading ? 'Loging...' : 'Login',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                color: Color(0xFFFF835F),
                                disabledColor: Colors.grey,
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20.0)),
                                onPressed: _isLoading ? null : _login,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ////////////   new account///////////////
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Tabs()));
                        },
                        child: Text(
                          'Create new Account',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
       _isLoading = true;
    });

    var data = {
      'email': mailController.text,
      'password': passwordController.text
    };
    //'login.php?username=dashboard&password=SNssgbd@2010'

    var res = await CallApi()
        .getData('login.php?username='+mailController.text+'&password='+ passwordController.text);
    var body = json.decode(res.body);
    if (body['token']?.isNotEmpty == true) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body));
      localStorage.setString('username', json.encode(body['username']));
      localStorage.setString('division', json.encode(body['division']));
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => Tabs()));
    } else {
      // _showMsg(body['error']);
      _isLoading = false;
      print(body['error']);
    }

    //  var body = json.decode(res.body);
    // print(body['message']);
    // if(body['success']){
    //   SharedPreferences localStorage = await SharedPreferences.getInstance();
    //   localStorage.setString('token', body['token']);
    //   localStorage.setString('user', json.encode(body['user']));
    //   Navigator.push(
    //     context,
    //     new MaterialPageRoute(
    //         builder: (context) => Tabs()));
    // }else{
    //   _showMsg(body['message']);
    // }

    setState(() {
      _isLoading = false;
    });
  }
}
