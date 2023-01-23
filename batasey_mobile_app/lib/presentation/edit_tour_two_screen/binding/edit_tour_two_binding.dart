import '../controller/edit_tour_two_controller.dart';
import 'package:get/get.dart';

class EditTourTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditTourTwoController());
  }
}
