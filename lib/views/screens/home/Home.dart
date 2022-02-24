import 'package:flutter/material.dart';
import 'package:dashboard/controllers/ChannelController.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/instance_manager.dart';
import 'package:dashboard/constants.dart';
import 'package:dashboard/views/screens/dashboard_details/Dashboard_details.dart';

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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final ChannelController channelController = Get.put(ChannelController());

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    List<String> channe =
        channelController.channelList(); // ['A Tab', 'B Tab', 'C Tab'];
    // channelController.channelList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Sales Dashboard'),
        centerTitle: true,
        elevation: 20,
        shadowColor: Color.fromARGB(255, 15, 99, 67),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.summarize),
              text: 'Summary',
            ),
            Tab(
              icon: Icon(Icons.chair_alt),
              text: 'Channel',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Channel Head',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Container(
              child: Center(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(1),
                  crossAxisCount: 3,
                  children: <Widget>[
                    for (var i in channe)
                      presentCard(
                          context, i.toString(), 'Dashboard', Icons.light)
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Center(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(1),
                  crossAxisCount: 3,
                  children: <Widget>[
                    for (var i in channe)
                      presentCard(context, i.toString(), 'Channel', Icons.light)
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Center(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(1),
                  crossAxisCount: 3,
                  children: <Widget>[
                    for (var i in channe)
                      presentCard(
                          context, i.toString(), 'Channel Head', Icons.light)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container presentCard(
      BuildContext context, String title, String subtext, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(0),
      // height: 100,
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
              padding: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlatButton(
                    padding: EdgeInsets.all(1),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Dashboard_details(title)));
                    },
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Dashboard_details(title)));
                    },
                    child: Text(
                      subtext,
                    ),
                    textColor: Colors.white70,
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: FractionalOffset.topRight,
            margin: EdgeInsets.only(top: 70, right: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                // BoxShadow(color: Colors.black, offset: Offset(0, 3)),
              ],
            ),
            //padding: EdgeInsets.all(1),
            child: Icon(
              icon,
              color: Colors.teal[700],
              size: 50,
            ),
          )
        ],
      ),
    );
  }
}
