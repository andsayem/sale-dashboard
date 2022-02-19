import 'package:flutter/material.dart';
import 'package:shopx/routes/routes.dart';
import 'package:shopx/views/screens/tabs/tabs.dart';
import 'package:flutter/gestures.dart';
import 'package:shopx/constants.dart';
import 'package:get/get.dart';
import 'package:shopx/widget/custom_alert_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopx/controllers/LoginController.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
        controller: _emailController,
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

    // final emailField = TextFormField(
    //   controller: _emailController,
    //   keyboardType: TextInputType.emailAddress,
    //   style: TextStyle(
    //     color: Colors.white,
    //   ),
    //   cursorColor: Colors.white,
    //   decoration: InputDecoration(
    //     focusedBorder: UnderlineInputBorder(
    //       borderSide: BorderSide(
    //         color: Colors.white,
    //       ),
    //     ),
    //     hintText: "something@example.com",
    //     labelText: "Email",
    //     labelStyle: TextStyle(
    //       color: Colors.white,
    //     ),
    //     hintStyle: TextStyle(
    //       color: Colors.white,
    //     ),
    //   ),
    // );

    final passwordField2 = Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      // width: size.width * 0.9,
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(29),
          //color:  kPrimaryLightColor,
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: TextField(
        controller: _passwordController,
        // keyboardType: TextInputType.emailAddress,
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

    // final passwordField = Column(
    //   children: <Widget>[
    //     TextFormField(
    //       obscureText: true,
    //       controller: _passwordController,
    //       style: TextStyle(
    //         color: Colors.white,
    //       ),
    //       cursorColor: Colors.white,
    //       decoration: InputDecoration(
    //         focusedBorder: UnderlineInputBorder(
    //           borderSide: BorderSide(
    //             color: Colors.white,
    //           ),
    //         ),
    //         hintText: "password",
    //         labelText: "Password",
    //         labelStyle: TextStyle(
    //           color: Colors.white,
    //         ),
    //         hintStyle: TextStyle(
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     Padding(
    //       padding: EdgeInsets.all(2.0),
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       children: <Widget>[
    //         MaterialButton(
    //             child: Text(
    //               "Forgot Password",
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .caption
    //                   .copyWith(color: Colors.white),
    //             ),
    //             onPressed: () {
    //               showAlertDialog(context);
    //             }),
    //       ],
    //     ),
    //   ],
    // );

    final fields = Padding(
      padding: EdgeInsets.only(top: 30.0),
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
      ]

          // mainAxisAlignment: MainAxisAlignment.start,
          // children: <Widget>[
          //   emailField,
          //   passwordField,
          // ],
          ),
    );

    // final loginButton = Material(
    //   elevation: 5.0,
    //   borderRadius: BorderRadius.circular(25.0),
    //   color: Colors.white,
    //   child: MaterialButton(
    //     minWidth: mq.size.width / 1.2,
    //     padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
    //     child: Text(
    //       "Login",
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //         fontSize: 20.0,
    //         color: Colors.black,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     onPressed: () async {
    //       try {
    //         // FirebaseUser user =
    //         //     (await FirebaseAuth.instance.signInWithEmailAndPassword(
    //         //   email: _emailController.text,
    //         //   password: _passwordController.text,
    //         // ))
    //         //         .user;
    //         // if (user != null) {
    //         //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //         //   prefs.setString('displayName', user.displayName);
    //         //   Navigator.of(context).pushNamed(AppRoutes.menu);
    //         // }
    //       } catch (e) {
    //         print(e);
    //         _emailController.text = "";
    //         _passwordController.text = "";
    //         // TODO: AlertDialog with error
    //       }
    //     },
    //   ),
    // );
    final loginButton2 = MaterialButton(
      onPressed: () {
        if (_emailController.text == '') {
          Fluttertoast.showToast(
              msg: "Please entry your Email/login ID",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1);
        } else if (_passwordController.text == '') {
          Fluttertoast.showToast(
              msg: "Please entry your password",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1);
        } else {
          //final LoginController loginController = Get.put(LoginController('pass'));
           Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Tabs(),
            ));
        // List<String> login = loginController.loginlList();
          // if (login != null) {
          //   Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => Tabs(),
          //   ));
          // }else{
          //    Fluttertoast.showToast(
          //     msg: "Invalid credential",
          //     toastLength: Toast.LENGTH_LONG,
          //     gravity: ToastGravity.CENTER,
          //     timeInSecForIosWeb: 1);
          // }
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //   content: Text('Test'),
          // ));
        }
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              kPrimaryLightColor,
              kPrimaryColor,
            ])),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton2,
        // Padding(
        //   padding: EdgeInsets.all(8.0),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Not a member?",
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white,
                  ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authRegister);
              },
              child: Text(
                "Sign Up",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ],
        ),
        Text(
          "Forgot Password?",
          style: TextStyle(color: kPrimaryColor),
        )
      ],
    );
    return Scaffold(
      // backgroundColor: Color(0xff8c52ff),
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
                              fontSize: 40,
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
}
