import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/home_one_screen/models/home_one_model.dart';

class HomeOneController extends GetxController {
  Rx<HomeOneModel> homeOneModelObj = HomeOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
