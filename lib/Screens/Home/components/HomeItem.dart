import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: HomePage());
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[500],
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: Icon(Icons.menu),
      //   title: Text("Home"),
      //   actions: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.all(10.0),
      //       child: Container(
      //         width: 36,
      //         height: 30,
      //         decoration: BoxDecoration(
      //           color: Colors.grey[800],
      //           borderRadius: BorderRadius.circular(10)
      //         ),
      //         child: Center(child: Text("0")),
      //       ),
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 100,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/one.jpg'),
                //     fit: BoxFit.cover
                //   )
                // ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Dashboard Summary Report", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Center(child: Text("Search", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),)),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem.map((item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        
                        )
                      ),
                      
                      child: Transform.translate(
                        offset: Offset(50, -50),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 62, vertical: 63),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple
                          ),
                          
                          child: Icon(Icons.navigate_next, size: 25, color: Colors.white,),
                          
                        ),
                        
                      ),
                    ),
                  )).toList(),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
