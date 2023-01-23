import '../controller/tour_details_one_controller.dart';
import 'package:get/get.dart';

class TourDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TourDetailsOneController());
  }
}
