import '../controller/log_in_with_email_wrong_code_controller.dart';
import 'package:get/get.dart';

class LogInWithEmailWrongCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInWithEmailWrongCodeController());
  }
}
