import '../controller/edit_tour_one_controller.dart';
import 'package:get/get.dart';

class EditTourOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditTourOneController());
  }
}
