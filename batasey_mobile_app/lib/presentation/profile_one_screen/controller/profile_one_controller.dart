import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/profile_one_screen/models/profile_one_model.dart';
import 'package:travelapp/widgets/custom_bottom_bar.dart';

class ProfileOneController extends GetxController {
  Rx<ProfileOneModel> profileOneModelObj = ProfileOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
