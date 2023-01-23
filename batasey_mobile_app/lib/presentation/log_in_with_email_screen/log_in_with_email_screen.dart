import 'controller/log_in_with_email_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';
import 'package:travelapp/widgets/custom_phone_number.dart';
import 'package:travelapp/widgets/custom_switch.dart';

class LogInWithEmailScreen extends GetWidget<LogInWithEmailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray800,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 59,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 20, top: 9, bottom: 8),
                    onTap: onTapArrowleft),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(44.00),
                      width: getHorizontalSize(46.00),
                      svgPath: ImageConstant.imgSend,
                      margin: getMargin(left: 27, top: 6, right: 27, bottom: 6))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 47, right: 20, bottom: 47),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_log_in".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold30
                              .copyWith(height: getVerticalSize(0.87))),
                      Container(
                          width: getHorizontalSize(286.00),
                          margin: getMargin(top: 7),
                          child: Text("msg_please_confirm_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900b2
                                  .copyWith(height: getVerticalSize(1.03)))),
                      Container(
                          height: getVerticalSize(97.00),
                          width: getHorizontalSize(353.00),
                          margin: getMargin(top: 31),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(left: 3, top: 13),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationBlue900,
                                              height: getSize(30.00),
                                              width: getSize(30.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 15, top: 6, bottom: 2),
                                              child: Text("lbl_nepal".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular17Black900
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.03))))
                                        ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(353.00),
                                        margin: getMargin(bottom: 40),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray100))),
                                Column(children: [
                                  Row(children: [
                                    Padding(
                                        padding: getPadding(top: 73, bottom: 2),
                                        child: CountryPickerUtils
                                            .getDefaultFlagImage(country)),
                                    Padding(
                                        padding: getPadding(left: 6, top: 71),
                                        child: CountryPickerUtils
                                            .getDefaultFlagImage(country)),
                                    Padding(
                                        padding: getPadding(
                                            left: 13,
                                            top: 73,
                                            right: 6,
                                            bottom: 2),
                                        child: CountryPickerUtils
                                            .getDefaultFlagImage(country))
                                  ]),
                                  Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(353.00),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.blueGray100))
                                ])
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(353.00),
                          margin: getMargin(top: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 1),
                                    child: Text("lbl_sync_contacts".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Black9001
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.03)))),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      CustomButton(
                          height: 56,
                          width: 353,
                          text: "lbl_continue".tr,
                          margin: getMargin(top: 42, bottom: 5),
                          shape: ButtonShape.RoundedBorder10,
                          onTap: onTapContinue)
                    ]))));
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.logInWithEmailEnterACodeScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}
