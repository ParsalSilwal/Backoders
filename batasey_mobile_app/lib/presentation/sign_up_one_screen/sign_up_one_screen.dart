import 'controller/sign_up_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/core/utils/validation_functions.dart';
import 'package:travelapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpOneScreen extends GetWidget<SignUpOneController> {
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
                    width: size.width,
                    padding:
                        getPadding(left: 10, top: 31, right: 10, bottom: 31),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(697.00),
                              width: getHorizontalSize(373.00),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            padding:
                                                getPadding(top: 22, bottom: 22),
                                            decoration: AppDecoration
                                                .fillGray700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder32),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgImgWhiteA700,
                                                      height: getVerticalSize(
                                                          315.00),
                                                      width: getHorizontalSize(
                                                          361.00),
                                                      margin: getMargin(
                                                          bottom: 338))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10,
                                                right: 10,
                                                bottom: 34),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_ghumaure".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold30
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      0.87))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          292.00),
                                                      margin: getMargin(top: 6),
                                                      child: Text(
                                                          "msg_now_your_travel2"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtInterRegular16Black900b2
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.03)))),
                                                  CustomTextFormField(
                                                      width: 353,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .group36688Controller,
                                                      hintText:
                                                          "msg_continue_with_google"
                                                              .tr,
                                                      margin:
                                                          getMargin(top: 27),
                                                      shape: TextFormFieldShape
                                                          .CircleBorder27,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .InterSemiBold16,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 18,
                                                              right: 17,
                                                              bottom: 18),
                                                          child: CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgGoogle)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                                  getVerticalSize(
                                                                      54.00))),
                                                  CustomTextFormField(
                                                      width: 353,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .group36687Controller,
                                                      hintText:
                                                          "msg_continue_with_apple"
                                                              .tr,
                                                      margin:
                                                          getMargin(top: 14),
                                                      shape: TextFormFieldShape
                                                          .CircleBorder27,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .InterSemiBold16,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 17,
                                                              right: 17,
                                                              bottom: 17),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgUserBlack900)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                                  getVerticalSize(
                                                                      54.00))),
                                                  CustomTextFormField(
                                                      width: 353,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .group36686Controller,
                                                      hintText:
                                                          "msg_continue_with_email"
                                                              .tr,
                                                      margin:
                                                          getMargin(top: 14),
                                                      shape: TextFormFieldShape
                                                          .CircleBorder27,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .InterSemiBold16,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      textInputType:
                                                          TextInputType
                                                              .emailAddress,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 20,
                                                              right: 18,
                                                              bottom: 20),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmarkBlack900)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                                  getVerticalSize(
                                                                      54.00)),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidEmail(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "Please enter valid email";
                                                        }
                                                        return null;
                                                      })
                                                ])))
                                  ])),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean();
                              },
                              child: Padding(
                                  padding: getPadding(top: 42, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900B2,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: getVerticalSize(1.03))),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: getVerticalSize(1.03))),
                                        TextSpan(
                                            text: "lbl_log_in".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.lightGreen200,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: getVerticalSize(1.03),
                                                decoration:
                                                    TextDecoration.underline))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.logInTwoScreen);
  }
}
