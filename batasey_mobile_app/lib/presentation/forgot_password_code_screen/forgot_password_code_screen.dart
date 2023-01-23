import 'controller/forgot_password_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class ForgotPasswordCodeScreen extends GetWidget<ForgotPasswordCodeController> {
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
                    onTap: onTapArrowleft5),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(44.00),
                      width: getHorizontalSize(46.00),
                      svgPath: ImageConstant.imgSend,
                      margin: getMargin(left: 27, top: 6, right: 27, bottom: 6))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 46, right: 20, bottom: 46),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(275.00),
                          child: Text("msg_please_check_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold30
                                  .copyWith(height: getVerticalSize(0.87)))),
                      Padding(
                          padding: getPadding(top: 14),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_we_ve_sent_a_code2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900B2,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(1.03))),
                                TextSpan(
                                    text: "msg_helloworld_gmail_com".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: getVerticalSize(1.03)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 36),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(32),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: getVerticalSize(1.03)),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(77.00),
                                  fieldWidth: getHorizontalSize(77.00),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(15.00)),
                                  selectedFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveColor: ColorConstant.blueGray100,
                                  selectedColor: ColorConstant.blueGray100,
                                  activeColor: ColorConstant.blueGray100)))),
                      CustomButton(
                          height: 56,
                          width: 353,
                          text: "lbl_verify".tr,
                          margin: getMargin(top: 38),
                          shape: ButtonShape.RoundedBorder10,
                          onTap: onTapVerify),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 38, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_send_code_again".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.03)))),
                                    Padding(
                                        padding: getPadding(left: 8, bottom: 1),
                                        child: Text("lbl_00_20".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16Black900b2
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.03))))
                                  ])))
                    ]))));
  }

  onTapVerify() {
    Get.toNamed(AppRoutes.resetPasswordScreen);
  }

  onTapArrowleft5() {
    Get.back();
  }
}
