import '../controller/log_in_with_email_enter_a_code_two_controller.dart';
import 'package:get/get.dart';

class LogInWithEmailEnterACodeTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInWithEmailEnterACodeTwoController());
  }
}
