import 'package:get/state_manager.dart';
import 'package:shopx/models/DashboardSummaryReport.dart';
import 'package:shopx/services/remote_services.dart';

class DashboardSummaryReportController  extends GetxController {
  var isLoading = true.obs;
  var summaryReportList = List<String>().obs;

  @override
  void onInit() {
    fetchSummaryReport();
    super.onInit();
  }

  void fetchSummaryReport() async {
    // try {
    //   isLoading(true);
    //   var summaryReports = await RemoteServices.fetchSummaryReports();
    //   if (summaryReports != null) {
    //     print(summaryReports);
    //   //  summaryReportList.value = summaryReports as List<String>;
    //   }
    // } finally {
    //   isLoading(false);
    // }
  }
}
