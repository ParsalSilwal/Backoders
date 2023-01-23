import '../controller/home_two_controller.dart';
import 'package:get/get.dart';

class HomeTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeTwoController());
  }
}
