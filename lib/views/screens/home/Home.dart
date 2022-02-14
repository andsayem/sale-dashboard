import 'package:flutter/material.dart';
import 'package:shopx/controllers/channel.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/instance_manager.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ChannelController channelController = Get.put(ChannelController());
  @override
  Widget build(BuildContext context) {
    List<String> channe = ['3','3','34'];
    // channelController.channelList();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(1),
            crossAxisCount: 2,
            children: <Widget>[
              for (var i in channe)
                presentCard(context, i.toString(), 'Dashboard', Icons.light)
            ],
          ),
          
        ));
  }

  Container presentCard(
      BuildContext context, String title, String count, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 100,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Colors.teal.shade300,
                    Colors.teal.shade600,
                    Colors.teal.shade900,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    count,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: FractionalOffset.topRight,
            margin: EdgeInsets.only(top: 30, right: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                // BoxShadow(color: Colors.black, offset: Offset(0, 3)),
              ],
            ),
            //padding: EdgeInsets.all(1),
            child: Icon(
              icon,
              color: Colors.teal,
              size: 100,
            ),
          )
        ],
      ),
    );
  }

  Container present_card(
      BuildContext context, String title, String count, IconData icon) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 1 / 2 - 10,
      child: Stack(
        children: [
          Card(
            // color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Colors.teal.shade300,
                    Colors.teal.shade600,
                    Colors.teal.shade900,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    count,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: FractionalOffset.topRight,
            margin: EdgeInsets.only(top: 30, right: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                // BoxShadow(color: Colors.black, offset: Offset(0, 3)),
              ],
            ),
            //padding: EdgeInsets.all(1),
            child: Icon(
              icon,
              color: Colors.teal,
              size: 55,
            ),
          )
        ],
      ),
    );
  }
}
