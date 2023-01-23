import '../controller/openning_controller.dart';
import 'package:get/get.dart';

class OpenningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OpenningController());
  }
}
