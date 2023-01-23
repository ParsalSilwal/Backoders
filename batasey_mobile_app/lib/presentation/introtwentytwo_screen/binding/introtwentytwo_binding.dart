import '../controller/introtwentytwo_controller.dart';
import 'package:get/get.dart';

class IntrotwentytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntrotwentytwoController());
  }
}
