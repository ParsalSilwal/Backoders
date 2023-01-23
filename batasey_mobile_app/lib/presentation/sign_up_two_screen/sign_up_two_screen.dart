import 'controller/sign_up_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/core/utils/validation_functions.dart';
import 'package:travelapp/widgets/custom_button.dart';
import 'package:travelapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoScreen extends GetWidget<SignUpTwoController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray800,
            body: Form(
                key: _formKey,
                child: Container(
                    height: size.height,
                    width: size.width,
                    padding:
                        getPadding(left: 10, top: 17, right: 10, bottom: 17),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: getPadding(
                                  left: 40, top: 25, right: 40, bottom: 25),
                              decoration: AppDecoration.fillGray700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder32),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgImgWhiteA700252x291,
                                        height: getVerticalSize(252.00),
                                        width: getHorizontalSize(291.00),
                                        margin: getMargin(bottom: 513))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding:
                                  getPadding(left: 10, right: 10, bottom: 37),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_create_account".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold30
                                            .copyWith(
                                                height: getVerticalSize(0.87))),
                                    CustomTextFormField(
                                        width: 353,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group129Controller,
                                        hintText: "lbl_email_address".tr,
                                        margin: getMargin(top: 27),
                                        padding:
                                            TextFormFieldPadding.PaddingT17,
                                        fontStyle: TextFormFieldFontStyle
                                            .InterRegular16,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        }),
                                    Obx(() => CustomTextFormField(
                                        width: 353,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group128Controller,
                                        hintText: "lbl_password".tr,
                                        margin: getMargin(top: 14),
                                        fontStyle: TextFormFieldFontStyle
                                            .InterRegular16,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword.value =
                                                  !controller
                                                      .isShowPassword.value;
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 20,
                                                    right: 16,
                                                    bottom: 21),
                                                child: CustomImageView(
                                                    svgPath: controller
                                                            .isShowPassword
                                                            .value
                                                        ? ImageConstant
                                                            .imgLightbulb
                                                        : ImageConstant
                                                            .imgLightbulb))),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(56.00)),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText:
                                            !controller.isShowPassword.value)),
                                    Obx(() => CustomTextFormField(
                                        width: 353,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group127Controller,
                                        hintText: "msg_confirm_password".tr,
                                        margin: getMargin(top: 14),
                                        fontStyle: TextFormFieldFontStyle
                                            .InterRegular16,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword1.value =
                                                  !controller
                                                      .isShowPassword1.value;
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 20,
                                                    right: 16,
                                                    bottom: 21),
                                                child: CustomImageView(
                                                    svgPath: controller
                                                            .isShowPassword1
                                                            .value
                                                        ? ImageConstant
                                                            .imgLightbulb
                                                        : ImageConstant
                                                            .imgLightbulb))),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(56.00)),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText:
                                            !controller.isShowPassword1.value)),
                                    CustomButton(
                                        height: 56,
                                        width: 353,
                                        text: "lbl_create_account".tr,
                                        margin: getMargin(top: 30),
                                        shape: ButtonShape.RoundedBorder10,
                                        onTap: onTapCreateaccountOne),
                                    Container(
                                        width: getHorizontalSize(248.00),
                                        margin: getMargin(top: 82),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_by_creating_an_account2"
                                                          .tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900B2,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: getVerticalSize(
                                                          1.03))),
                                              TextSpan(
                                                  text:
                                                      "msg_terms_and_conditions"
                                                          .tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .lightGreen200,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          getVerticalSize(1.03),
                                                      decoration: TextDecoration
                                                          .underline))
                                            ]),
                                            textAlign: TextAlign.center))
                                  ])))
                    ])))));
  }

  onTapCreateaccountOne() {
    Get.toNamed(AppRoutes.logInTwoScreen);
  }
}
