import '../controller/forgot_password_code_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordCodeController());
  }
}
