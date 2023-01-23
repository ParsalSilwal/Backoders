import 'controller/log_in_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/core/utils/validation_functions.dart';
import 'package:travelapp/widgets/custom_button.dart';
import 'package:travelapp/widgets/custom_icon_button.dart';
import 'package:travelapp/widgets/custom_text_form_field.dart';
import 'package:travelapp/domain/facebookauth/facebook_auth_helper.dart';
import 'package:travelapp/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LogInTwoScreen extends GetWidget<LogInTwoController> {
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
                        getPadding(left: 20, top: 47, right: 20, bottom: 47),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgSend,
                              height: getVerticalSize(44.00),
                              width: getHorizontalSize(46.00),
                              alignment: Alignment.centerRight,
                              margin: getMargin(right: 7)),
                          Padding(
                              padding: getPadding(top: 51),
                              child: Row(children: [
                                Text("lbl_hi_welcome".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold30.copyWith(
                                        height: getVerticalSize(0.87))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage296,
                                    height: getSize(30.00),
                                    width: getSize(30.00),
                                    margin:
                                        getMargin(left: 7, top: 7, bottom: 7))
                              ])),
                          Padding(
                              padding: getPadding(top: 34),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                      height: getVerticalSize(1.03)))),
                          CustomTextFormField(
                              width: 353,
                              focusNode: FocusNode(),
                              controller: controller.groupFortyThreeController,
                              hintText: "lbl_your_email".tr,
                              margin: getMargin(top: 6),
                              variant:
                                  TextFormFieldVariant.OutlineBluegray100_1,
                              padding: TextFormFieldPadding.PaddingT17,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 22),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                      height: getVerticalSize(1.03)))),
                          Obx(() => CustomTextFormField(
                              width: 353,
                              focusNode: FocusNode(),
                              controller: controller.groupFortyTwoController,
                              hintText: "msg_enter_your_password".tr,
                              margin: getMargin(top: 6),
                              variant:
                                  TextFormFieldVariant.OutlineBluegray100_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 12,
                                          top: 21,
                                          right: 16,
                                          bottom: 20),
                                      child: CustomImageView(
                                          svgPath: controller
                                                  .isShowPassword.value
                                              ? ImageConstant.imgLightbulb
                                              : ImageConstant.imgLightbulb))),
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
                              padding: getPadding(top: 15),
                              child: Row(children: [
                                CustomIconButton(
                                    height: 20,
                                    width: 20,
                                    shape: IconButtonShape.RoundedBorder5,
                                    padding: IconButtonPadding.PaddingAll6,
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgCheckmarkBlack90020x20)),
                                Padding(
                                    padding:
                                        getPadding(left: 11, top: 1, bottom: 1),
                                    child: Text("lbl_remember_me".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.03)))),
                                Spacer(),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtForgotpassword();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("msg_forgot_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular14
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.03)))))
                              ])),
                          CustomButton(
                              height: 56,
                              width: 353,
                              text: "lbl_log_in".tr,
                              margin: getMargin(top: 42),
                              shape: ButtonShape.RoundedBorder10,
                              onTap: onTapLogin),
                          CustomButton(
                              height: 56,
                              width: 353,
                              text: "msg_log_in_with_phone".tr,
                              margin: getMargin(top: 6),
                              variant: ButtonVariant.FillBlack900,
                              shape: ButtonShape.RoundedBorder10,
                              onTap: onTapLoginwithphonenumber),
                          Padding(
                              padding: getPadding(top: 41),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(132.00),
                                        margin: getMargin(top: 8, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray100)),
                                    Text("lbl_or_with".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular14Black900b2
                                            .copyWith(
                                                height: getVerticalSize(1.03))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(132.00),
                                        margin: getMargin(top: 8, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray100))
                                  ])),
                          Padding(
                              padding: getPadding(top: 22),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: getVerticalSize(56.00),
                                        width: getHorizontalSize(170.00),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 38),
                                                      child: Text(
                                                          "lbl_facebook".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium14
                                                              .copyWith(
                                                                  height: getVerticalSize(
                                                                      1.03))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(
                                                              color: ColorConstant
                                                                  .blueGray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  170.00),
                                                          padding: getPadding(
                                                              left: 37,
                                                              top: 19,
                                                              right: 37,
                                                              bottom: 19),
                                                          decoration: AppDecoration
                                                              .outlineBluegray100
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFacebook,
                                                                height: getSize(
                                                                    18.00),
                                                                width: getSize(
                                                                    18.00),
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                onTap: () {
                                                                  onTapImgFacebookOne();
                                                                })
                                                          ]))))
                                            ])),
                                    Container(
                                        height: getVerticalSize(56.00),
                                        width: getHorizontalSize(170.00),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 45),
                                                      child: Text(
                                                          "lbl_google".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium14
                                                              .copyWith(
                                                                  height: getVerticalSize(
                                                                      1.03))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(
                                                              color: ColorConstant
                                                                  .blueGray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  170.00),
                                                          padding: getPadding(
                                                              left: 46,
                                                              top: 19,
                                                              right: 46,
                                                              bottom: 19),
                                                          decoration: AppDecoration
                                                              .outlineBluegray100
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGoogle,
                                                                height:
                                                                    getVerticalSize(
                                                                        18.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        17.00),
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                onTap: () {
                                                                  onTapImgGoogleOne();
                                                                })
                                                          ]))))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 51),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .black900B2,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height:
                                                        getVerticalSize(1.03))),
                                            TextSpan(
                                                text: " ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height:
                                                        getVerticalSize(1.03))),
                                            TextSpan(
                                                text: "lbl_sign_up".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    height:
                                                        getVerticalSize(1.03)))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.introtwentytwoScreen);
  }

  onTapLoginwithphonenumber() {
    Get.toNamed(AppRoutes.logInWithEmailScreen);
  }

  onTapImgFacebookOne() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogleOne() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(AppRoutes.signUpTwoScreen);
  }
}
