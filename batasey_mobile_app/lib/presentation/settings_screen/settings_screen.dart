import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            appBar: CustomAppBar(
                height: getVerticalSize(101.00),
                title: Row(children: [
                  Padding(
                      padding: getPadding(left: 25, top: 40, bottom: 16),
                      child: Text("lbl2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold36
                              .copyWith(height: getVerticalSize(1.00)))),
                  Padding(
                      padding: getPadding(left: 99, top: 50, bottom: 20),
                      child: Text("lbl_settings".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular24Black900
                              .copyWith(height: getVerticalSize(1.00))))
                ]),
                actions: [
                  GestureDetector(
                      onTap: () {
                        onTapTxtSignOut();
                      },
                      child: Padding(
                          padding: getPadding(
                              left: 20, top: 55, right: 20, bottom: 26),
                          child: Text("lbl_sign_out".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterExtraLight15
                                  .copyWith(height: getVerticalSize(1.00)))))
                ],
                styleType: Style.bgFillBluegray10001),
            body: Container(
                width: size.width,
                padding: getPadding(top: 51, bottom: 51),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 25, right: 25),
                              padding: getPadding(
                                  left: 11, top: 7, right: 11, bottom: 7),
                              decoration: AppDecoration.outlineBlack9003f1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder13),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgMv5bytnlogzhyzg109x100,
                                        height: getVerticalSize(109.00),
                                        width: getHorizontalSize(100.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(54.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 13,
                                            top: 22,
                                            right: 57,
                                            bottom: 35),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_namkha2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular24Black900
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text(
                                                      "msg_realn_gmail_com".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterThin14Black900
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 25, top: 34),
                          child: Text("lbl_preferences".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular24Black900
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 15),
                          padding: getPadding(
                              left: 15, top: 11, right: 15, bottom: 11),
                          decoration: AppDecoration.fillBluegray10001,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgNotification,
                                height: getVerticalSize(21.00),
                                width: getHorizontalSize(20.00),
                                margin: getMargin(top: 2, bottom: 1)),
                            Padding(
                                padding: getPadding(left: 23, right: 204),
                                child: Text("lbl_notifications".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterThin20.copyWith(
                                        height: getVerticalSize(1.00))))
                          ])),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 20, top: 10, right: 20, bottom: 10),
                          decoration: AppDecoration.fillBluegray10001,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorBlack900,
                                    height: getVerticalSize(17.00),
                                    width: getHorizontalSize(15.00),
                                    margin: getMargin(top: 4, bottom: 6)),
                                Padding(
                                    padding: getPadding(
                                        left: 23, top: 2, right: 224),
                                    child: Text("lbl_language".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterThin20.copyWith(
                                            height: getVerticalSize(1.00))))
                              ])),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 17, top: 11, right: 17, bottom: 11),
                          decoration: AppDecoration.fillBluegray10001,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVectorBlack90021x21,
                                height: getSize(21.00),
                                width: getSize(21.00),
                                margin: getMargin(top: 2, bottom: 2)),
                            Padding(
                                padding: getPadding(left: 20, right: 235),
                                child: Text("lbl_currency".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterThin20.copyWith(
                                        height: getVerticalSize(1.00))))
                          ])),
                      Padding(
                          padding: getPadding(left: 25, top: 23),
                          child: Text("lbl_payment_method".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular24Black900
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 17),
                          padding: getPadding(
                              left: 17, top: 11, right: 17, bottom: 11),
                          decoration: AppDecoration.fillBluegray10001,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getVerticalSize(18.00),
                                    width: getHorizontalSize(22.00),
                                    margin: getMargin(top: 4, bottom: 3)),
                                Padding(
                                    padding: getPadding(
                                        left: 19, right: 162, bottom: 1),
                                    child: Text("lbl_payment_options".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterThin20.copyWith(
                                            height: getVerticalSize(1.00))))
                              ])),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 43),
                          padding: getPadding(
                              left: 27, top: 9, right: 27, bottom: 9),
                          decoration: AppDecoration.txtFillBluegray10001,
                          child: Text("lbl_privacy_policy".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterThin20
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 8, bottom: 5),
                          padding: getPadding(
                              left: 27, top: 10, right: 27, bottom: 10),
                          decoration: AppDecoration.txtFillBluegray10001,
                          child: Text("lbl_terms_of_use".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterThin20
                                  .copyWith(height: getVerticalSize(1.00))))
                    ]))));
  }

  onTapTxtSignOut() {
    Get.toNamed(AppRoutes.logInTwoScreen);
  }
}
