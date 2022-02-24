import 'package:flutter/material.dart';
import 'package:dashboard/views/screens/password/Otp_form.dart';
import 'package:dashboard/constants.dart';
import 'package:dashboard/views/screens/password/Confirmation.dart';

class Otp extends StatelessWidget {
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
                'OTP Confirmation',
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
                'Please Enter Your OTP Number',
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
                child: OtpForm(),
              ),
              SizedBox(
                height: 40.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Confirmation(),
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
                      "Done",
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
