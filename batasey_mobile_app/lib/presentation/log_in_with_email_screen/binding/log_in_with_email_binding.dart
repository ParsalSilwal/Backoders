import '../controller/log_in_with_email_controller.dart';
import 'package:get/get.dart';

class LogInWithEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInWithEmailController());
  }
}
