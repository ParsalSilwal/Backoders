import '../controller/log_in_with_email_enter_a_code_controller.dart';
import 'package:get/get.dart';

class LogInWithEmailEnterACodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInWithEmailEnterACodeController());
  }
}
