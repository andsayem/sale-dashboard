// import 'package:shopx/api/my_api.dart'; 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';  
import 'package:shopx/controllers/DashboardSummaryReportController.dart';  
//import 'package:shopx/controllers/DashboardSummaryReportController.dart';
class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: ItemPage());
  }
}

class ItemPage extends StatefulWidget {
    final DashboardSummaryReportController dashboard_summary_reportController = Get.put(DashboardSummaryReportController());
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
   final DashboardSummaryReportController summary_reportController = Get.put(DashboardSummaryReportController());
  @override
  Widget build(BuildContext context) {
    
    List<String> summary =
        summary_reportController.summaryReportList();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
          child: Column(
            children:<Widget> [
                for (var i in summary)
                 Text('dea')
                    
              // Container(
              //     child: <Widget>[] Text('Test'),
              // )
            ],
          ),
        // child: Container(
        //   child: ListView(
        //     padding: EdgeInsets.only(
        //         top: 10.0, bottom: 20.0, left: 10.0, right: 10.0),
        //     children: <Widget>[ 
        //       Container(
        //           width: double.infinity,
        //             child: Text('Dashboard Report Details ',
        //              style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22 ),
        //           ),
        //       ),
        //       Container(
        //           width: double.infinity,
        //             child: Text('Till 05-Feb-2022 ',
        //              style: TextStyle(fontWeight: FontWeight.normal , fontSize: 16 ),
        //           ),
        //       ),
        //       SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: SingleChildScrollView(
        //               scrollDirection: Axis.vertical,
        //               child: DataTable(
        //                  headingRowColor:
        //                 MaterialStateColor.resolveWith((states) => Colors.blue),
        //                 columns: const <DataColumn>[
                          
        //                   DataColumn( label: Text( 'SL', style: TextStyle( fontSize: 18),),),
        //                   DataColumn( label: Text( 'Cumulative', style: TextStyle( fontSize: 18),),),
        //                   DataColumn( label: Text( 'Achiv.', style: TextStyle( fontSize: 18),),),
        //                   DataColumn( label: Text( 'Last Month', style: TextStyle( fontSize: 18),),),
        //                   DataColumn( label: Text( 'Feb-2021', style: TextStyle( fontSize: 18),),),
        //                   DataColumn( label: Text( 'Achiv. %', style: TextStyle( fontSize: 18),),),
        //                   DataColumn( label: Text( 'Target', style: TextStyle( fontSize: 18),),),
        //                   DataColumn( label: Text( 'Rest Amount', style: TextStyle( fontSize: 18),),),
                           
        //                 ],
        //                 rows: const <DataRow>[
                         
        //                   DataRow(
        //                     cells: <DataCell>[
        //                       DataCell(Text('1')),
        //                       DataCell(Text('Lifting')),
        //                       DataCell(Text('2323')),
        //                       DataCell(Text('12')),
        //                       DataCell(Text('24212')),
        //                       DataCell(Text('12341')),
        //                       DataCell(Text('234')),
        //                       DataCell(Text('234')),
        //                     ],
                            
        //                   ),
        //                     DataRow(
        //                     cells: <DataCell>[
        //                       DataCell(Text('1')),
        //                       DataCell(Text('IMS')),
        //                       DataCell(Text('2323')),
        //                       DataCell(Text('12')),
        //                       DataCell(Text('24212')),
        //                       DataCell(Text('12341')),
        //                       DataCell(Text('234')),
        //                       DataCell(Text('234')),
        //                     ],
                            
        //                   ),
        //                     DataRow(
        //                     cells: <DataCell>[
        //                       DataCell(Text('1')),
        //                       DataCell(Text('Collection')),
        //                       DataCell(Text('2323')),
        //                       DataCell(Text('12')),
        //                       DataCell(Text('24212')),
        //                       DataCell(Text('12341')),
        //                       DataCell(Text('234')),
        //                       DataCell(Text('234')),
        //                     ],
                            
        //                   ),
                           
        //                 ],
        //               ))),
        //     ],
        //   ),
        // ),
      
      ),
    );
  }
}
