import 'controller/log_in_with_email_enter_a_code_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class LogInWithEmailEnterACodeTwoScreen
    extends GetWidget<LogInWithEmailEnterACodeTwoController> {
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
                    onTap: onTapArrowleft3),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(44.00),
                      width: getHorizontalSize(46.00),
                      svgPath: ImageConstant.imgSend,
                      margin: getMargin(left: 27, top: 6, right: 27, bottom: 6))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 44, right: 20, bottom: 44),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(272.00),
                          child: Text("msg_verify_your_phone".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold30
                                  .copyWith(height: getVerticalSize(0.87)))),
                      Container(
                          width: getHorizontalSize(287.00),
                          margin: getMargin(top: 12),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_we_ve_sent_an_sms2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900B2,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(1.03))),
                                TextSpan(
                                    text: "msg_33_2_94_27_84_11".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(1.03)))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 5,
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
                                  fontSize: getFontSize(24),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: getVerticalSize(1.03)),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(64.00),
                                  fieldWidth: getHorizontalSize(63.00),
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
                      Padding(
                          padding: getPadding(top: 52),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_i_didn_t_receive".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular16Black900b2
                                        .copyWith(
                                            height: getVerticalSize(1.03))),
                                Padding(
                                    padding: getPadding(left: 12),
                                    child: Text("lbl_resend".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold16Lightgreen200
                                            .copyWith(
                                                height: getVerticalSize(1.03))))
                              ])),
                      CustomButton(
                          height: 56,
                          width: 353,
                          text: "lbl_verify".tr,
                          margin: getMargin(top: 27, bottom: 5),
                          shape: ButtonShape.RoundedBorder10,
                          onTap: onTapVerify)
                    ]))));
  }

  onTapVerify() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapArrowleft3() {
    Get.back();
  }
}
