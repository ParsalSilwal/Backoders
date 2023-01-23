import '../controller/tour_details_two_controller.dart';
import 'package:get/get.dart';

class TourDetailsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TourDetailsTwoController());
  }
}
