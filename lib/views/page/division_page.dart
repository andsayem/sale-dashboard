import 'package:flutter/material.dart';
import 'package:dashboard/controllers/DivisionController.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:dashboard/views/component/deviation.dart';

class DivisionPage extends StatelessWidget {
  final DivisionController divisionController = Get.put(DivisionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => Home(),
              // ));
              // Test
            },
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Test ',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (divisionController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return new Row(
                    children: divisionController.divisionList
                        .map((item) => new Text(item))
                        .toList());
              // test2
              // return StaggeredGridView.countBuilder(
              //   crossAxisCount: 3,
              //   itemCount: divisionController.divisionList.length,
              //   crossAxisSpacing: 16,
              //   mainAxisSpacing: 16,
              //   itemBuilder: (context, index) {
              //     return   Column(
              //       children: [
              //         Text('divisionController divisionList length'),
              //       ],
              //     );
              //   },
              //   staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              // );
            }),
          )
        ],
      ),
    );
  }
}
