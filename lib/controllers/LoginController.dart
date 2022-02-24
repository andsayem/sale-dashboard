import 'package:get/state_manager.dart'; 
import 'package:dashboard/services/remote_services.dart';

class LoginController  extends GetxController {
  var isLoading = true.obs;
  var pass = 'SNssgbd@2010' ;
  var loginlList = List<String>();

  LoginController(String pass);
 

  @override
  void onInit() {
    // print('login');
   // fetchLogin();
   // super.onInit();
  }

  void fetchLogin() async {
    try {
      isLoading(true);
      var login = await RemoteServices.fetchcLogin(pass);
      // if (login != null) {
      //   loginlList.value = login  ;
      // }
    } finally {
      isLoading(false);
    }
  }
}
