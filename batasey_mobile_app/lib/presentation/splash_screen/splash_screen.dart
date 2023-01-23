import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/custom_button.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(left: 55, top: 38),
                          child: Text("lbl_ghumaure".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoRegular39
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          width: getHorizontalSize(210.00),
                          margin: getMargin(left: 63, top: 12),
                          child: Text("msg_plan_your_tour_and".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNunitoRegular14
                                  .copyWith(height: getVerticalSize(1.00)))),
                      CustomImageView(
                          svgPath: ImageConstant.imgTravelingrafiki,
                          height: getVerticalSize(227.00),
                          width: getHorizontalSize(320.00),
                          alignment: Alignment.center,
                          margin: getMargin(top: 78)),
                      Spacer(),
                      CustomButton(
                          height: 48,
                          width: 361,
                          text: "lbl_get_started".tr,
                          shape: ButtonShape.CircleBorder24,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.NunitoRegular14,
                          onTap: onTapGetstarted)
                    ]))));
  }

  onTapGetstarted() {
    Get.toNamed(AppRoutes.openningScreen);
  }
}
