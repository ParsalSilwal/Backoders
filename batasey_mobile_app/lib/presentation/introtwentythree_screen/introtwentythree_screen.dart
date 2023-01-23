import 'controller/introtwentythree_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_6.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class IntrotwentythreeScreen extends GetWidget<IntrotwentythreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarSubtitle6(
                    text: "lbl_step_2_2".tr, margin: getMargin(left: 27)),
                actions: [
                  AppbarSubtitle6(
                      text: "lbl_skip".tr,
                      margin:
                          getMargin(left: 32, top: 19, right: 32, bottom: 19))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 23, right: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(264.00),
                          child: Text("msg_and_follow_travel".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterRegular24Black9001
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(top: 63, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMv5bytnlogzhyzg87x84,
                                          height: getVerticalSize(87.00),
                                          width: getHorizontalSize(84.00),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(43.00))),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMv5bytnlogzhyzg87x84,
                                          height: getVerticalSize(87.00),
                                          width: getHorizontalSize(84.00),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(43.00)),
                                          margin: getMargin(top: 10)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMv5bytnlogzhyzg87x84,
                                          height: getVerticalSize(87.00),
                                          width: getHorizontalSize(84.00),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(43.00)),
                                          margin: getMargin(top: 10)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMv5bytnlogzhyzg87x84,
                                          height: getVerticalSize(87.00),
                                          width: getHorizontalSize(84.00),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(43.00)),
                                          margin: getMargin(top: 10))
                                    ]),
                                Padding(
                                    padding: getPadding(
                                        left: 15, top: 20, bottom: 18),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_sakar_bhandari".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterExtraLight16
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "lbl_182_following".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 52),
                                              child: Text(
                                                  "lbl_sakar_bhandari".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "lbl_182_following".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 52),
                                              child: Text(
                                                  "lbl_sakar_bhandari".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "lbl_182_following".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 52),
                                              child: Text(
                                                  "lbl_sakar_bhandari".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "lbl_182_following".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 24, top: 32, bottom: 24),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomButton(
                                              height: 28,
                                              width: 109,
                                              text: "lbl_follow".tr,
                                              variant:
                                                  ButtonVariant.OutlineBlack900,
                                              padding:
                                                  ButtonPadding.PaddingAll3,
                                              fontStyle: ButtonFontStyle
                                                  .InterExtraLight16),
                                          CustomButton(
                                              height: 28,
                                              width: 109,
                                              text: "lbl_follow".tr,
                                              margin: getMargin(top: 70),
                                              variant:
                                                  ButtonVariant.OutlineBlack900,
                                              padding:
                                                  ButtonPadding.PaddingAll3,
                                              fontStyle: ButtonFontStyle
                                                  .InterExtraLight16),
                                          Container(
                                              width: getHorizontalSize(109.00),
                                              margin: getMargin(top: 70),
                                              padding: getPadding(
                                                  left: 19,
                                                  top: 2,
                                                  right: 19,
                                                  bottom: 2),
                                              decoration: AppDecoration
                                                  .txtFillBluegray10001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5),
                                              child: Text("lbl_following".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterExtraLight16
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          CustomButton(
                                              height: 28,
                                              width: 109,
                                              text: "lbl_follow".tr,
                                              margin: getMargin(top: 70),
                                              variant:
                                                  ButtonVariant.OutlineBlack900,
                                              padding:
                                                  ButtonPadding.PaddingAll3,
                                              fontStyle: ButtonFontStyle
                                                  .InterExtraLight16)
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 27, right: 23, bottom: 56),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 47,
                      width: 343,
                      text: "lbl_complete".tr,
                      variant: ButtonVariant.FillLightgreen500,
                      padding: ButtonPadding.PaddingAll13,
                      onTap: onTapComplete)
                ]))));
  }

  onTapComplete() {
    Get.toNamed(AppRoutes.discoveryContainerScreen);
  }
}
