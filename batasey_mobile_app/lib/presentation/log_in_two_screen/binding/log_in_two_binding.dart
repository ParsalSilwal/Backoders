import '../controller/log_in_two_controller.dart';
import 'package:get/get.dart';

class LogInTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInTwoController());
  }
}
