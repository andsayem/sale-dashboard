import 'package:flutter/material.dart';
import 'package:shopx/constants.dart';

class Confirmation extends StatelessWidget {
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
                'Password Confirmation',
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
                'Please Enter Your New Password',
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
                child: Confirmation(),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
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
                    "Confirm",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
