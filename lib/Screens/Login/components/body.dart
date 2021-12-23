import 'package:flutter/material.dart';
 import 'package:flutter/gestures.dart';
 import 'package:dashboard/constants.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen 
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
	              height: 400,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/images/background.png'),
	                  fit: BoxFit.fill
	                )
	              ),
	              child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                             image: AssetImage('assets/images/light-1.png')
                              )
                          ) ,
                        ),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png')
                                )
                            ) ,
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
                                image: AssetImage('assets/images/light-1.png')
                                  )
                              ) ,
                            ),
                          ),
                          Positioned(
                            child: 
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                              ),
                            )
                            ),
                    ],),
	            ),
               Padding(
                 padding: EdgeInsets.all(30.0),
                 child: Column(
                   children: <Widget>[
                     Container(
                       padding: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [
	                        BoxShadow(
	                          color: Color.fromRGBO(143, 148, 251, .2),
	                          blurRadius: 20.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
                       ),
                        child: Column(
	                      children: <Widget>[
	                        Container(
	                          padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
	                         // width: size.width * 0.9,
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(29),
                              //color:  kPrimaryLightColor,
	                            border: Border(bottom: BorderSide(color: Colors.grey))
	                          ),
	                          child: TextField(
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
                                icon: Icon(
                                  Icons.person,
                                  color: Color.fromRGBO(143, 148, 251, 1), 
                                ),
	                              hintText: "Email or Phone number",
	                              hintStyle: TextStyle(color: Colors.grey[400])
	                            ),
	                          ),
	                        ),
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          child: TextField(
                              obscureText: true,
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
                                icon: Icon(
                                  Icons.lock,
                                  
                                  color: Color.fromRGBO(143, 148, 251, 1), 
                                ),
                                suffixIcon: Icon(Icons.remove_red_eye,
                                color: Color.fromRGBO(143, 148, 251, 1)),
	                              hintText: "Password",
	                              hintStyle: TextStyle(color: Colors.grey[400])
	                            ),
	                          ),
	                        )
	                      ],
	                    ),
                     ),
                     SizedBox(height: 30,),
                      Container(
                        
                          height: 50,
                          
	                    decoration: BoxDecoration(
	                      borderRadius: BorderRadius.circular(10),
	                      
                        gradient: LinearGradient(
	                        colors: [
	                          Color.fromRGBO(143, 148, 251, 1),
	                          Color.fromRGBO(143, 148, 251, .6),
	                        ]
	                      )
	                    ),
	                    child: Center(
	                      child: Text("Login", 
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
	                    ),
                      ),
                     SizedBox(height: 50,),
                     Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)
                   ],
                 ),
               )
	            
	          ],
	        ),
	      ),
      )
    );
  }
}
