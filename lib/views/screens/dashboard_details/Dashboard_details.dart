import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:dashboard/provider/targetPageProvider.dart';
import 'package:provider/provider.dart';
import 'package:dashboard/constants.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Dashboard_details extends StatefulWidget {
  final String clientName;
  const Dashboard_details(this.clientName);
  //var targetList  = new List<String>();
  @override
  _Dashboard_detailsState createState() => _Dashboard_detailsState();
}

class _Dashboard_detailsState extends State<Dashboard_details> {
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
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Selected date '),
                          Text('Selected date count '),
                          Text('Selected range '),
                          Text('Selected ranges count ')
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 80,
                      right: 0,
                      bottom: 0,
                      child: SfDateRangePicker(
                        //onSelectionChanged: _onSelectionChanged,
                        selectionMode: DateRangePickerSelectionMode.range,
                        initialSelectedRange: PickerDateRange(
                            DateTime.now().subtract(const Duration(days: 4)),
                            DateTime.now().add(const Duration(days: 3))),
                      ),
                    ),
                    MultiSelectDialogField(
                      items: provider.data.data.filter.channel
                          .map((e) => MultiSelectItem(e, e))
                          .toList(),
                      listType: MultiSelectListType.LIST,
                      searchable: true,
                      selectedColor: kPrimaryColor,
                      buttonIcon: Icon(Icons.arrow_right_alt_outlined),
                      title: Text('Select Channel'),
                      onConfirm: (values) {
                        // _selectedAnimals = values;
                      },
                    ),

                    // DropdownButton<String>(
                    //   items: provider.data.data.filter.channel.map((String value) {
                    //     return DropdownMenuItem<String>(
                    //       value: value,
                    //       child: Text(value),
                    //     );
                    //   }).toList(),
                    //   onChanged: (_) {},
                    // ),
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
                              columns:
                                  provider.data.data.reports.forecast.columns
                                      .map((data) => DataColumn(
                                            label: Text(
                                              data.toString(),
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ))
                                      .toList(),
                              rows: provider.data.data.reports.forecast.rows
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
