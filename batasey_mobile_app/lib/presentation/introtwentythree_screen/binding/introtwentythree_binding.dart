import '../controller/introtwentythree_controller.dart';
import 'package:get/get.dart';

class IntrotwentythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntrotwentythreeController());
  }
}
