import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/discovery_container_screen/models/discovery_container_model.dart';
import 'package:travelapp/widgets/custom_bottom_bar.dart';

class DiscoveryContainerController extends GetxController {
  Rx<DiscoveryContainerModel> discoveryContainerModelObj =
      DiscoveryContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.openningScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
