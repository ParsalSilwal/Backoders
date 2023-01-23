import 'controller/openning_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/custom_button.dart';

class OpenningScreen extends GetWidget<OpenningController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgImg,
                          height: getVerticalSize(273.00),
                          width: getHorizontalSize(315.00),
                          margin: getMargin(top: 26)),
                      Padding(
                          padding: getPadding(top: 63),
                          child: Text("lbl_ghumaure".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold32
                                  .copyWith(height: getVerticalSize(0.87)))),
                      Container(
                          width: getHorizontalSize(305.00),
                          margin: getMargin(top: 8),
                          child: Text("msg_now_your_travel".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterRegular17
                                  .copyWith(height: getVerticalSize(1.03)))),
                      CustomButton(
                          height: 56,
                          width: 353,
                          text: "lbl_sign_in".tr,
                          margin: getMargin(top: 54),
                          shape: ButtonShape.RoundedBorder10,
                          onTap: onTapSignin),
                      CustomButton(
                          height: 56,
                          width: 353,
                          text: "lbl_create_account".tr,
                          margin: getMargin(top: 12),
                          variant: ButtonVariant.OutlineGray600,
                          shape: ButtonShape.RoundedBorder10,
                          fontStyle:
                              ButtonFontStyle.InterSemiBold16Lightgreen200,
                          onTap: onTapCreateaccount)
                    ]))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.signUpOneScreen);
  }

  onTapCreateaccount() {
    Get.toNamed(AppRoutes.signUpTwoScreen);
  }
}
