import '../controller/add_tour_one_controller.dart';
import 'package:get/get.dart';

class AddTourOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddTourOneController());
  }
}
