import 'controller/discovery_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/discovery_page/discovery_page.dart';
import 'package:travelapp/presentation/profile_page/profile_page.dart';
import 'package:travelapp/widgets/custom_bottom_bar.dart';

class DiscoveryContainerScreen extends GetWidget<DiscoveryContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.discoveryPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Checkmark:
        return AppRoutes.discoveryPage;
      case BottomBarEnum.Bag:
        return "/";
      case BottomBarEnum.User:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.discoveryPage:
        return DiscoveryPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
