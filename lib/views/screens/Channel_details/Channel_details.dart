import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:dashboard/api/api.dart';
import 'dart:convert';
import 'package:dashboard/models/ChannelTargets.dart';

class Channel_details extends StatefulWidget {
  final String clientName;
  const Channel_details(this.clientName);

  @override
  _Channel_detailsState createState() => _Channel_detailsState();
}

class _Channel_detailsState extends State<Channel_details> {
  @override
  void initState() {
    _getTargetRows();
    super.initState();
  }

  Future<List<List>> _getTargetRows() async {
    var res = await CallApi().getData(
        'dashboard-summary-report.php?name=report&date=2018-01-01&to=2022-01-24&channel=Lighting&division=Barishal&token=1');
    var body = json.decode(res.body);
    if (body['message'] == 'success') {
      // if (body['data']['reports']['targets']['rows']?.isNotEmpty == true) {
      //   //var jsonresponse = body['data']['reports']['targets']['rows']; // as List;
      //  // print(jsonresponse) ;
      //  // return channelTargetsFromJson(jsonresponse);
      // } else {
      //   return null;
      // }
      // print(jsonresponse);
      // return channelTargetsFromJson(jsonresponse);

    }
  }

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
                MaterialButton(
                    child: FlatButton(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 10, right: 10),
                        child: Text(
                          'Click Me',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      color: kPrimaryColor,
                      disabledColor: Colors.grey,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      onPressed: _getTargetRows,
                    ),
                    onPressed: _getTargetRows),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Channel Wise Report Details(' + widget.clientName + ')',
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
                                'Months',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'National Tgt.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Delivery',
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
                                'IMS',
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
                                'Coll.',
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
                                'Full Month Lifting',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Full Month IMS',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Full Month Coll.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Till Date Due',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'M/E Total Due',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Trade Due',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Deposit Investment',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
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
                    'Feb,2022 Cumulative Channel Head Wise',
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
                                'Lifting',
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
                                'IMS',
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
                                'Coll.',
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
                            DataColumn(
                              label: Text(
                                'IMS PG Report',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'IMS PG Summary',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Lifting PG Report',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Lifting PG Summary',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('SL')),
                                DataCell(Text('Channel Head')),
                                // DataCell(Text('2323')),
                                DataCell(Text('Lifting Tgt')),
                                DataCell(Text('Lifting')),
                                DataCell(Text('%')),
                                DataCell(Text('IMS Tgt')),
                                DataCell(Text('IMS')),
                                DataCell(Text('%')),
                                DataCell(Text('Coll')),
                                DataCell(Text('%')),
                                DataCell(Text('Cell Number')),
                                DataCell(Text('IMS PG Report')),
                                DataCell(Text('IMS PG Summary')),
                                DataCell(Text('Lifting PG Report')),
                                DataCell(Text('Lifting PG Summary')),
                                // DataCell(Text('Liuft')),
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

  Container rowTarget() {
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
        DataCell(Text('1')),
        DataCell(Text('Lifting')),
        DataCell(Text('2323')),
        DataCell(Text('12')),
        DataCell(Text('24212')),
        DataCell(Text('12341')),
        DataCell(Text('234')),
      ],
    );
  }
}
