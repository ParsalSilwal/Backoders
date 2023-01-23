import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/core/utils/validation_functions.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';
import 'package:travelapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
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
                    onTap: onTapArrowleft4),
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
                              child: Text("msg_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold30.copyWith(
                                      height: getVerticalSize(0.87)))),
                          Container(
                              width: getHorizontalSize(308.00),
                              margin: getMargin(top: 6),
                              child: Text("msg_don_t_worry_it".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16Black900b2
                                      .copyWith(
                                          height: getVerticalSize(1.03)))),
                          Padding(
                              padding: getPadding(top: 35),
                              child: Text("lbl_email_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                      height: getVerticalSize(1.03)))),
                          CustomTextFormField(
                              width: 353,
                              focusNode: FocusNode(),
                              controller: controller.groupSeventyOneController,
                              hintText: "msg_enter_your_email".tr,
                              margin: getMargin(top: 6),
                              variant:
                                  TextFormFieldVariant.OutlineBluegray100_1,
                              padding: TextFormFieldPadding.PaddingT16_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: 56,
                              width: 353,
                              text: "lbl_send_code".tr,
                              margin: getMargin(top: 38),
                              shape: ButtonShape.RoundedBorder10,
                              onTap: onTapSendcode),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtRememberpassword();
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_remember_password2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900B2,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: getVerticalSize(1.03))),
                                        TextSpan(
                                            text: "lbl_log_in".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: getVerticalSize(1.03)))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  onTapSendcode() {
    Get.toNamed(AppRoutes.forgotPasswordCodeScreen);
  }

  onTapTxtRememberpassword() {
    Get.toNamed(AppRoutes.logInTwoScreen);
  }

  onTapArrowleft4() {
    Get.back();
  }
}
