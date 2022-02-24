import 'package:flutter/material.dart';
import 'package:shopx/views/screens/tabs/tabs.dart';
import 'package:shopx/constants.dart';
import 'package:get/get.dart';
import 'package:shopx/widget/custom_alert_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopx/controllers/LoginController.dart';
import 'package:shopx/views/screens/password/Password.dart';
import 'package:shopx/api/api.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ScaffoldState scaffoldState;

  //TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    void showAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            TextEditingController _emailControllerField =
                TextEditingController();
            return CustomAlertDialog(
              content: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 4.5,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text("Insert Reset Email:"),
                    TextField(
                      controller: _emailControllerField,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: "something@example.com",
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xff8c52ff),
                        child: MaterialButton(
                          minWidth: mq.size.width / 2,
                          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                          child: Text(
                            "Send Reset Email",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            try {
                              // FirebaseAuth.instance.sendPasswordResetEmail(
                              //     email: _emailControllerField.text);
                              // Navigator.of(context).pop();
                            } catch (e) {
                              print(e);
                              // TODO: Add snackbar reporting error
                            }
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    }

    final emailField2 = Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      // width: size.width * 0.9,
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(29),
          //color:  kPrimaryLightColor,
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: TextField(
        controller: mailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            hintText: "Email or Phone number",
            hintStyle: TextStyle(color: Colors.grey[400])),
      ),
    );
    final passwordField2 = Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: TextField(
        controller: passwordController,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey[400])),
      ),
    );
    final fields = Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, .2),
                    blurRadius: 20.0,
                    offset: Offset(0, 10))
              ]),
          child: Column(children: <Widget>[
            emailField2,
            passwordField2,
          ]),
        ),
      ]),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.all(10.0),
      child: FlatButton(
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
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
        color: kPrimaryColor,
        disabledColor: Colors.grey,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0)),
        onPressed: _isLoading ? null : _login,
      ),
    );

    final PasswordButton = MaterialButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Password(),
        ));
      },
      child: Container(
        height: 40,
        width: 60000,
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            // gradient: LinearGradient(colors: [
            //   kPrimaryLightColor,
            //   kPrimaryColor,
            // ])
            ),
        child: Center(
          child: Text(
            "Forgot Password?",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        PasswordButton,
      ],
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 400, // mq.size.height ,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-1.png'))),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-1.png'))),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      width: 80,
                      top: 40,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-1.png'))),
                      ),
                    ),
                    Positioned(
                        child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(36),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //logo,
                        fields,
                        Padding(
                          padding: EdgeInsets.only(bottom: 150),
                          child: bottom,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });

    if (mailController.text == '') {
      Fluttertoast.showToast(
          msg: "Please entry your Email/login ID",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1);
    } else if (passwordController.text == '') {
      Fluttertoast.showToast(
          msg: "Please entry your password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1);
    } else {
      //final LoginController loginController = Get.put(LoginController('pass'));

      var data = {
        'email': mailController.text,
        'password': passwordController.text
      };
      //login.php?username=dashboard&password= 'SNssgbd@2010' 
      var res = await CallApi().getData('login.php?username=' +
          mailController.text +
          '&password=' +
          passwordController.text);
      var body = json.decode(res.body);
     // print(body);
     if (body['token']?.isNotEmpty == true) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('token', body['token']);
        localStorage.setString('user', json.encode(body));
        localStorage.setString('username', json.encode(body['username']));
        localStorage.setString('division', json.encode(body['division']));
        _isLoading = false;
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => Tabs()));
      } else {
        _isLoading = false;
        Fluttertoast.showToast(
            msg: body['error'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1);
      }

       
    }
  }
}
