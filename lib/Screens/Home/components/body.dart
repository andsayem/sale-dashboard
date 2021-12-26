import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:dashboard/constants.dart';
import 'package:google_fonts/google_fonts.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    List<Map<String, dynamic>> boxcolor=[] ;
    boxcolor = [{'bgcolor':'kPrimaryLightColor'}, {'bgcolor': 'kPrimaryLightColor'}, {'bgcolor': 'kPrimaryLightColor'}];
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
               
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    Text('Good Morning', style: GoogleFonts.inder(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor
                    )),
                    Text('Abu Sayed Sayem',style: GoogleFonts.inder(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor
                    ),)
                  ],
                ),
              ),
              Container(
                height: 199,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: boxcolor.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(right:10),
                      padding: EdgeInsets.only(left: 10 , top: 10),
                      height: 199,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.blue, 
                      ),
                      child: Text("Production Report"),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16,bottom: 16 , top: 10),
                child: Row(
                  children:<Widget>[ 
                    Text('Operations'),
                    
                  ],
                  ),
                )
            ],
          ),
        ));
  }
}
