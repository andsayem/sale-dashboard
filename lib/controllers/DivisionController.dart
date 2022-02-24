import 'package:get/state_manager.dart';
import 'package:dashboard/models/division.dart';
import 'package:dashboard/services/remote_services.dart';

class DivisionController  extends GetxController {
  var isLoading = true.obs;
  var divisionList = List<String>().obs;

  @override
  void onInit() {
    fetchDivision();
    super.onInit();
  }

  void fetchDivision() async {
    // try {
    //   isLoading(true);
    //   var divisions = await RemoteServices.fetchDivisions();
    //   if (divisions != null) {
    //     divisionList.value = divisions;
    //   }
    // } finally {
    //   isLoading(false);
    // }
  }
}
