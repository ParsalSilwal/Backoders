import '../controller/attraction_controller.dart';
import 'package:get/get.dart';

class AttractionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttractionController());
  }
}
