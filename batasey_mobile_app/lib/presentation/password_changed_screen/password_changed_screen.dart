import 'controller/password_changed_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/custom_button.dart';

class PasswordChangedScreen extends GetWidget<PasswordChangedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 225, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgReply,
                          height: getVerticalSize(84.00),
                          width: getHorizontalSize(90.00)),
                      Padding(
                          padding: getPadding(top: 36),
                          child: Text("msg_password_changed".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold30
                                  .copyWith(height: getVerticalSize(0.87)))),
                      Container(
                          width: getHorizontalSize(257.00),
                          margin: getMargin(top: 6),
                          child: Text("msg_your_password_has".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterRegular16Black900b2
                                  .copyWith(height: getVerticalSize(1.03)))),
                      CustomButton(
                          height: 56,
                          width: 353,
                          text: "lbl_back_to_login".tr,
                          margin: getMargin(top: 34, bottom: 5),
                          shape: ButtonShape.RoundedBorder10,
                          onTap: onTapBacktologin)
                    ]))));
  }

  onTapBacktologin() {
    Get.toNamed(AppRoutes.logInTwoScreen);
  }
}
