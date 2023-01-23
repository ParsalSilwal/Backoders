import '../controller/add_tour_two_controller.dart';
import 'package:get/get.dart';

class AddTourTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddTourTwoController());
  }
}
