import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/initial_screen/models/initial_model.dart';

class InitialController extends GetxController {
  Rx<InitialModel> initialModelObj = InitialModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
