import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/openning_screen/models/openning_model.dart';

class OpenningController extends GetxController {
  Rx<OpenningModel> openningModelObj = OpenningModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
