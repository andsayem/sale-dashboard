// import 'package:flutter/gestures.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopx/views/screens/password/reset_form.dart';
import 'package:shopx/views/screens/password/Otp.dart';
import 'package:shopx/constants.dart';

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Please Enter Your Email Address',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: ResetForm(),
              ),
              SizedBox(
                height: 40.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Otp(),
                  ));
                },
                child: Container(
                  height: 40,
                  width: 600,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        kPrimaryLightColor,
                        kPrimaryColor,
                      ])),
                  child: Center(
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
