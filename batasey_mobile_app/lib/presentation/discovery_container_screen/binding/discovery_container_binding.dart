import '../controller/discovery_container_controller.dart';
import 'package:get/get.dart';

class DiscoveryContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoveryContainerController());
  }
}
