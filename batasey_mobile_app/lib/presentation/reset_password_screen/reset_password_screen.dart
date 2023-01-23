import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/core/utils/validation_functions.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';
import 'package:travelapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    onTap: onTapArrowleft6),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(44.00),
                      width: getHorizontalSize(46.00),
                      svgPath: ImageConstant.imgSend,
                      margin: getMargin(left: 27, top: 6, right: 27, bottom: 6))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 20, top: 47, right: 20, bottom: 47),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(top: 1),
                              child: Text("lbl_reset_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold30.copyWith(
                                      height: getVerticalSize(0.87)))),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Text("msg_please_type_something".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16Black900b2
                                      .copyWith(
                                          height: getVerticalSize(1.03)))),
                          Padding(
                              padding: getPadding(top: 38),
                              child: Text("lbl_new_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                      height: getVerticalSize(1.03)))),
                          Obx(() => CustomTextFormField(
                              width: 353,
                              focusNode: FocusNode(),
                              controller: controller.group126Controller,
                              hintText: "lbl_password2".tr,
                              margin: getMargin(top: 5),
                              variant:
                                  TextFormFieldVariant.OutlineBluegray100_1,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 21,
                                          right: 16,
                                          bottom: 22),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
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
                              isObscureText: !controller.isShowPassword.value)),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Text("msg_confirm_new_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                      height: getVerticalSize(1.03)))),
                          Obx(() => CustomTextFormField(
                              width: 353,
                              focusNode: FocusNode(),
                              controller: controller.group125Controller,
                              hintText: "lbl_repeat_password".tr,
                              margin: getMargin(top: 5),
                              variant:
                                  TextFormFieldVariant.OutlineBluegray100_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword1.value =
                                        !controller.isShowPassword1.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 21,
                                          right: 16,
                                          bottom: 22),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword1.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
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
                              text: "lbl_reset_password2".tr,
                              margin: getMargin(top: 38),
                              shape: ButtonShape.RoundedBorder10,
                              onTap: onTapResetpasswordOne),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an3".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900B2,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.03))),
                                    TextSpan(
                                        text: "lbl_log_in".tr,
                                        style: TextStyle(
                                            color: ColorConstant.lightGreen200,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.03)))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  onTapResetpasswordOne() {
    Get.toNamed(AppRoutes.passwordChangedScreen);
  }

  onTapArrowleft6() {
    Get.back();
  }
}
