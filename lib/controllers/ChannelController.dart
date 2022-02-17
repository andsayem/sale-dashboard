import 'package:get/state_manager.dart';
import 'package:shopx/models/channel.dart';
import 'package:shopx/services/remote_services.dart';

class ChannelController  extends GetxController {
  var isLoading = true.obs;
  var channelList = List<String>().obs;

  @override
  void onInit() {
    fetchChannel();
    super.onInit();
  }

  void fetchChannel() async {
    try {
      isLoading(true);
      var channels = await RemoteServices.fetchcChannels();
      if (channels != null) {
        channelList.value = channels;
      }
    } finally {
      isLoading(false);
    }
  }
}
