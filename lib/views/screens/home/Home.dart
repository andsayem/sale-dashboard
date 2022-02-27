import 'package:flutter/material.dart';
import 'package:dashboard/controllers/ChannelController.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:dashboard/constants.dart';
import 'package:dashboard/views/screens/dashboard_details/Dashboard_details.dart';
import 'package:dashboard/views/screens/Channel_details/Channel_details.dart';
import 'package:dashboard/views/screens/Channel_head_details/Channel_head_details.dart';
// import 'package:dashboard/widget/navigation_drawer_widget.dart';

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
      //drawer: NavigationDrawerWidget(),
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
                      presentCard(context, i.toString(), 'Dashboard',
                          Icons.summarize, 'summary')
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
                      presentCard(context, i.toString(), 'Channel',
                          Icons.chair_alt, 'channel')
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
                      presentCard(context, i.toString(), 'Channel Head',
                          Icons.person, 'channel_head')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container presentCard(BuildContext context, String title, String subtext,
      IconData icon, String type) {
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
                    // padding: EdgeInsets.all(1),
                    // onPressed: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //       builder: (context) => Dashboard_details(title)));
                    // },
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
                      if (type == 'summary') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Dashboard_details(title)));
                      } else if (type == 'channel') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Channel_details(title)));
                      } else if (type == 'channel_head') {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => Dashboard_details(title)));
                      } else {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => Dashboard_details(title)));
                      }
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
