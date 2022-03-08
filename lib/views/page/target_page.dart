import 'package:flutter/material.dart';
//import 'package:dashboard/provider/myHomePageProvider.dart';
import 'package:dashboard/provider/targetPageProvider.dart';
import 'package:provider/provider.dart';
import 'package:dashboard/constants.dart';

class TargetPage extends StatefulWidget {
  final String clientName;
  const TargetPage(this.clientName);
  @override
  State<TargetPage> createState() => _TargetPageState();
}

class _TargetPageState extends State<TargetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text(widget.clientName),
      ),
      body: ChangeNotifierProvider<TargetPageProvider>(
        create: (context) => TargetPageProvider(),
        child: Consumer<TargetPageProvider>(
          builder: (context, provider, child) {
            if (provider.data == null) {
              provider.getData(context);
              return Center(child: CircularProgressIndicator());
            }
            // when we have the json loaded... let's put the data into a data table widget
            return Container(
              child: ListView(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 20.0, left: 10.0, right: 10.0),
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Dashboard Report Details(' + widget.clientName + ')',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        provider.data.data.reports.targets.title,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 11),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        child: DataTable(
                          headingRowColor: MaterialStateColor.resolveWith(
                              (states) => kPrimaryColor),
                          columns: provider.data.data.reports.targets.columns
                              .map((data) => DataColumn(
                                    label: Text(
                                      data.toString(),
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ))
                              .toList(),
                          rows: provider.data.data.reports.targets.rows
                              .map((data) => DataRow(cells: [
                                    DataCell(Text(data[0].toString())),
                                    DataCell(Text(data[1].toString())),
                                    DataCell(Text(data[2].toString())),
                                    DataCell(Text(data[3].toString())),
                                    DataCell(Text(data[4].toString())),
                                    DataCell(Text(data[5].toString())),
                                    DataCell(Text(data[6].toString())),
                                    DataCell(Text(data[7].toString())),
                                  ]))
                              .toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      child: Text(
                        provider.data.data.reports.forecastVsAchievement.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: DataTable(
                              headingRowColor: MaterialStateColor.resolveWith(
                                  (states) => kPrimaryColor),
                              columns: provider.data.data.reports
                                  .forecastVsAchievement.columns
                                  .map((data) => DataColumn(
                                        label: Text(
                                          data.toString(),
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ))
                                  .toList(),
                              rows: provider
                                  .data.data.reports.forecastVsAchievement.rows
                                  .map((data) => DataRow(cells: [
                                        DataCell(Text(data[0].toString())),
                                        DataCell(Text(data[1].toString())),
                                        DataCell(Text(data[2].toString())),
                                        DataCell(Text(data[3].toString())),
                                        DataCell(Text(data[4].toString())),
                                        DataCell(Text(data[5].toString())),
                                        DataCell(Text(data[6].toString())),
                                        DataCell(Text(data[7].toString())),
                                        DataCell(Text(data[8].toString())),
                                        DataCell(Text(data[9].toString())),
                                        DataCell(Text(data[10].toString())),
                                        DataCell(Text(data[11].toString())),
                                      ]))
                                  .toList(),
                            ))),
                   SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      child: Text(
                        provider.data.data.reports.forecast.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: DataTable(
                              headingRowColor: MaterialStateColor.resolveWith(
                                  (states) => kPrimaryColor),
                              columns: provider.data.data.reports
                                  .forecast.columns
                                  .map((data) => DataColumn(
                                        label: Text(
                                          data.toString(),
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ))
                                  .toList(),
                              rows: provider
                                  .data.data.reports.forecast.rows
                                  .map((data) => DataRow(cells: [
                                        DataCell(Text(data[0].toString())),
                                        DataCell(Text(data[1].toString())),
                                        DataCell(Text(data[2].toString())),
                                        DataCell(Text(data[3].toString())),
                                        DataCell(Text(data[4].toString())),
                                        DataCell(Text(data[5].toString())) 
                                      ]))
                                  .toList(),
                            ))),
                  ]),
            );
          },
        ),
      ),
    );
  }
}
