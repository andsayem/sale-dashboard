import 'package:flutter/material.dart';
import 'package:shopx/constants.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Dashboard_details extends StatefulWidget {
  final String clientName;
  const Dashboard_details(this.clientName);

  @override
  _Dashboard_detailsState createState() => _Dashboard_detailsState();
}

class _Dashboard_detailsState extends State<Dashboard_details> {
  @override
  Widget build(BuildContext context) {
    // Here you direct access using widget
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text(widget.clientName),
        ),
        body: SafeArea(
          child: Container(
            child: ListView(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 20.0, left: 10.0, right: 10.0),
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Text(
                    'Dashboard Report Details (' + widget.clientName + ')',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Till 05-Feb-2022 ',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: DataTable(
                          headingRowColor: MaterialStateColor.resolveWith(
                              (states) => kPrimaryColor),
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'SL',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Cumulative',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Achiv.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Last Month',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Feb-2021',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Achiv. %',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Target',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Rest Amount',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('IMS')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Collection')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                              ],
                            ),
                          ],
                        ))),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: Text(
                    '22-Feb-2022 (forecast data vs achievement)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: DataTable(
                          headingRowColor: MaterialStateColor.resolveWith(
                              (states) => kPrimaryColor),
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'SL',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Channel Head',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Lifting Tgt',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Lifting ACHV',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                '%',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'IMS Tgt',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'IMS ACHV',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                '%',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'IMS Tgt',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'IMS ACHV',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                '%',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Cell Number',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: 
                              <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(
                                  ElevatedButton(
                                    // onPressed: () {
                                    //   print(222)
                                    // },
                                    child: const Text(" Call"),
                                    // onPressed: () async {
                                    //   FlutterPhoneDirectCaller.callNumber('01687493421');
                                    // },
                                  ),
                                ),
                                
                              ],
                            ),
                            DataRow(
                              cells: 
                              <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(
                                  ElevatedButton(
                                    // onPressed: () {
                                    //   print(222)
                                    // },
                                    child: const Text(" Call"),
                                    // onPressed: () async {
                                    //   FlutterPhoneDirectCaller.callNumber('01687493421');
                                    // },
                                  ),
                                ),
                                
                              ],
                            ),
                            DataRow(
                              cells: 
                              <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(
                                  ElevatedButton(
                                    // onPressed: () {
                                    //   print(222)
                                    // },
                                    child: const Text(" Call"),
                                    // onPressed: () async {
                                    //   FlutterPhoneDirectCaller.callNumber('01687493421');
                                    // },
                                  ),
                                ),
                                
                              ],
                            ),
                            DataRow(
                              cells: 
                              <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(
                                  ElevatedButton(
                                    // onPressed: () {
                                    //   print(222)
                                    // },
                                    child: const Text(" Call"),
                                    // onPressed: () async {
                                    //   FlutterPhoneDirectCaller.callNumber('01687493421');
                                    // },
                                  ),
                                ),
                                
                              ],
                            ),
                            DataRow(
                              cells: 
                              <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(
                                  ElevatedButton(
                                    // onPressed: () {
                                    //   print(222)
                                    // },
                                    child: const Text(" Call"),
                                    // onPressed: () async {
                                    //   FlutterPhoneDirectCaller.callNumber('01687493421');
                                    // },
                                  ),
                                ),
                                
                              ],
                            ),
                            DataRow(
                              cells: 
                              <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(
                                  ElevatedButton(
                                    // onPressed: () {
                                    //   print(222)
                                    // },
                                    child: const Text(" Call"),
                                    // onPressed: () async {
                                    //   FlutterPhoneDirectCaller.callNumber('01687493421');
                                    // },
                                  ),
                                ),
                                
                              ],
                            ),
                            DataRow(
                              cells: 
                              <DataCell>[
                                DataCell(Text('1')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('2323')),
                                DataCell(Text('12')),
                                DataCell(Text('24212')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(Text('12341')),
                                DataCell(Text('234')),
                                DataCell(Text('234')),
                                DataCell(
                                  ElevatedButton(
                                    // onPressed: () {
                                    //   print(222)
                                    // },
                                    child: const Text(" Call"),
                                    // onPressed: () async {
                                    //   FlutterPhoneDirectCaller.callNumber('01687493421');
                                    // },
                                  ),
                                ),
                                
                              ],
                            ),
                          ],
                        ))),
              ],
            ),
          ),
        ));
  }

  Container phoneCall() {
    ElevatedButton(
      child: const Text("Test Call"),
      onPressed: () async {
        FlutterPhoneDirectCaller.callNumber('01687493421');
      },
    );
  }
}
