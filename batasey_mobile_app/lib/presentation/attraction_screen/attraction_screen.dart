import 'controller/attraction_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';
import 'package:travelapp/widgets/custom_text_form_field.dart';

class AttractionScreen extends GetWidget<AttractionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray800,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: Container(
                              height: size.height,
                              width: size.width,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(left: 27, right: 27),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: getHorizontalSize(323.00),
                                            padding: getPadding(
                                                left: 23,
                                                top: 24,
                                                right: 23,
                                                bottom: 24),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder17),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_photos_in_here".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            87.00),
                                                                    width: getHorizontalSize(
                                                                        109.00),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                5),
                                                                    padding: getPadding(
                                                                        left:
                                                                            36,
                                                                        top: 27,
                                                                        right:
                                                                            36,
                                                                        bottom:
                                                                            27),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .outlineBlack900,
                                                                    child: Stack(
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgLock,
                                                                              height: getVerticalSize(32.00),
                                                                              width: getHorizontalSize(36.00),
                                                                              alignment: Alignment.center)
                                                                        ])),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgMeghrajneupane145x191,
                                                                    height:
                                                                        getVerticalSize(
                                                                            92.00),
                                                                    width: getHorizontalSize(
                                                                        144.00),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            17.00)),
                                                                    margin: getMargin(
                                                                        left:
                                                                            10))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 9, bottom: 7),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMeghrajneupane145x191,
                                                            height:
                                                                getVerticalSize(
                                                                    105.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    128.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        17.00))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    105.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    128.00),
                                                            margin: getMargin(
                                                                left: 12),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgMeghrajneupane145x191,
                                                                      height: getVerticalSize(
                                                                          105.00),
                                                                      width: getHorizontalSize(
                                                                          128.00),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              17.00)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgMaterialsymbol,
                                                                      height: getSize(
                                                                          44.00),
                                                                      width: getSize(
                                                                          44.00),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))
                                                      ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 4, right: 5),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomAppBar(
                                                      height: getVerticalSize(
                                                          56.00),
                                                      leadingWidth: 59,
                                                      leading: AppbarImage(
                                                          height:
                                                              getVerticalSize(
                                                                  19.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  28.00),
                                                          svgPath: ImageConstant
                                                              .imgClose,
                                                          margin: getMargin(
                                                              left: 31),
                                                          onTap: onTapClose),
                                                      actions: [
                                                        AppbarImage(
                                                            height:
                                                                getVerticalSize(
                                                                    17.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    26.00),
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFavorite,
                                                            margin: getMargin(
                                                                left: 39,
                                                                top: 2)),
                                                        AppbarImage(
                                                            height:
                                                                getSize(17.00),
                                                            width:
                                                                getSize(17.00),
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgBookmark,
                                                            margin: getMargin(
                                                                left: 13,
                                                                top: 2,
                                                                right: 39))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 35),
                                                      child: Text(
                                                          "lbl_attraction".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular20
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          124.00),
                                                      margin: getMargin(top: 2),
                                                      child: Text(
                                                          "lbl_sena_sangralaya"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular24Black9001
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgLocation,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3),
                                                            child: Text(
                                                                "msg_chauni_kathmandu_nepal"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterThin16
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))))
                                                      ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 4, top: 11),
                                                      child: Row(children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    128.00),
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 2,
                                                                right: 12,
                                                                bottom: 2),
                                                            decoration: AppDecoration
                                                                .txtFillBluegray10001
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtRoundedBorder5),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_rs_20"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(16),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w500,
                                                                              height: getVerticalSize(1.00))),
                                                                      TextSpan(
                                                                          text:
                                                                              " ",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(16),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w200,
                                                                              height: getVerticalSize(1.00))),
                                                                      TextSpan(
                                                                          text: "lbl_per_person"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w200,
                                                                              height: getVerticalSize(1.00)))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)),
                                                        CustomButton(
                                                            height: 28,
                                                            width: 77,
                                                            text: "lbl_4_8".tr,
                                                            margin: getMargin(
                                                                left: 118),
                                                            variant: ButtonVariant
                                                                .FillLightgreen500,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingT3,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .InterRegular16,
                                                            prefixWidget: Container(
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            10),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgEyeWhiteA700)))
                                                      ])),
                                                  Container(
                                                      margin: getMargin(
                                                          left: 4,
                                                          top: 40,
                                                          right: 3),
                                                      padding: getPadding(
                                                          top: 8, bottom: 8),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder13),
                                                      child: Row(children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    69.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    7.00),
                                                            margin: getMargin(
                                                                bottom: 2),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .lightGreen500)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    277.00),
                                                            margin: getMargin(
                                                                left: 12,
                                                                top: 4,
                                                                right: 26,
                                                                bottom: 4),
                                                            child: Text(
                                                                "msg_here_you_will_find"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterExtraLight16
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))))
                                                      ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 4, top: 23),
                                                      child: Row(children: [
                                                        CustomButton(
                                                            height: 49,
                                                            width: 160,
                                                            text:
                                                                "lbl_get_directions"
                                                                    .tr,
                                                            variant: ButtonVariant
                                                                .FillWhiteA700,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingT14,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .InterSemiBold16Black900,
                                                            prefixWidget: Container(
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            2),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVector))),
                                                        CustomTextFormField(
                                                            width: 160,
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .groupNinetyNineController,
                                                            hintText:
                                                                "lbl_visit_website"
                                                                    .tr,
                                                            margin: getMargin(
                                                                left: 3),
                                                            variant:
                                                                TextFormFieldVariant
                                                                    .FillWhiteA700,
                                                            shape: TextFormFieldShape
                                                                .RoundedBorder5,
                                                            padding:
                                                                TextFormFieldPadding
                                                                    .PaddingT15,
                                                            fontStyle:
                                                                TextFormFieldFontStyle
                                                                    .InterSemiBold16,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            prefix: Container(
                                                                margin: getMargin(
                                                                    left: 8,
                                                                    top: 13,
                                                                    right: 4,
                                                                    bottom: 12),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgBiglobecentralsouthasia)),
                                                            prefixConstraints:
                                                                BoxConstraints(
                                                                    maxHeight:
                                                                        getVerticalSize(
                                                                            49.00)))
                                                      ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          323.00),
                                                      margin: getMargin(
                                                          left: 4, top: 23),
                                                      padding: getPadding(
                                                          left: 56,
                                                          top: 13,
                                                          right: 56,
                                                          bottom: 13),
                                                      decoration: AppDecoration
                                                          .outlineBlack9003f
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder17),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_opening_hours"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold16Black900
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "lbl_sunday_friday".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00))),
                                                                          TextSpan(
                                                                              text: "lbl_10_am_5pm".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w600, height: getVerticalSize(1.00)))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "lbl_saturday".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00))),
                                                                          TextSpan(
                                                                              text: "lbl_11_am_3pm".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w600, height: getVerticalSize(1.00)))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 46),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 9,
                                                                        bottom:
                                                                            7),
                                                                    child: Text(
                                                                        "msg_420_people_are_travelling"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterExtraLight16WhiteA700
                                                                            .copyWith(height: getVerticalSize(1.00)))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            37.00),
                                                                    width: getHorizontalSize(
                                                                        80.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            49),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMv5bytnlogzhyzg36x36,
                                                                              height: getSize(36.00),
                                                                              width: getSize(36.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(18.00)),
                                                                              alignment: Alignment.centerLeft),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMv5bytnlogzhyzg36x36,
                                                                              height: getSize(36.00),
                                                                              width: getSize(36.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(18.00)),
                                                                              alignment: Alignment.center),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMv5bytnlogzhyzg36x36,
                                                                              height: getSize(36.00),
                                                                              width: getSize(36.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(18.00)),
                                                                              alignment: Alignment.centerRight)
                                                                        ]))
                                                              ]))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          326.00),
                                                      margin: getMargin(
                                                          left: 4, top: 32),
                                                      padding: getPadding(
                                                          left: 26,
                                                          top: 19,
                                                          right: 26,
                                                          bottom: 19),
                                                      decoration: AppDecoration
                                                          .outlineBlack9003f
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder17),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_reviews_450"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold16
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            25),
                                                                child: Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  4),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg66x68, height: getVerticalSize(66.00), width: getHorizontalSize(68.00), radius: BorderRadius.circular(getHorizontalSize(34.00))),
                                                                                CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg66x68, height: getVerticalSize(66.00), width: getHorizontalSize(68.00), radius: BorderRadius.circular(getHorizontalSize(34.00)), margin: getMargin(top: 18)),
                                                                                CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg66x68, height: getVerticalSize(66.00), width: getHorizontalSize(68.00), radius: BorderRadius.circular(getHorizontalSize(34.00)), margin: getMargin(top: 18)),
                                                                                CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg66x68, height: getVerticalSize(66.00), width: getHorizontalSize(68.00), radius: BorderRadius.circular(getHorizontalSize(34.00)), margin: getMargin(top: 18))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  11),
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_avinay".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold16.copyWith(height: getVerticalSize(1.00))),
                                                                                Container(width: getHorizontalSize(162.00), child: Text("msg_it_was_awesome_visiting".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterLight14.copyWith(height: getVerticalSize(1.00)))),
                                                                                Padding(padding: getPadding(top: 22), child: Text("lbl_avinay".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold16.copyWith(height: getVerticalSize(1.00)))),
                                                                                Container(width: getHorizontalSize(167.00), margin: getMargin(top: 2), child: Text("msg_it_was_awesome_visiting".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterLight14.copyWith(height: getVerticalSize(1.00)))),
                                                                                Padding(padding: getPadding(top: 12), child: Text("lbl_avinay".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold16.copyWith(height: getVerticalSize(1.00)))),
                                                                                Container(width: getHorizontalSize(167.00), margin: getMargin(top: 2), child: Text("msg_it_was_awesome_visiting".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterLight14.copyWith(height: getVerticalSize(1.00)))),
                                                                                Padding(padding: getPadding(top: 12), child: Text("lbl_avinay".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold16.copyWith(height: getVerticalSize(1.00)))),
                                                                                Container(width: getHorizontalSize(167.00), margin: getMargin(top: 2), child: Text("msg_it_was_awesome_visiting".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterLight14.copyWith(height: getVerticalSize(1.00))))
                                                                              ]))
                                                                    ])),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                37),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 9),
                                                                              child: Text("lbl_write_review".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold16Black900e5.copyWith(height: getVerticalSize(1.00)))),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgSendLightGreen500,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00),
                                                                              margin: getMargin(left: 120, bottom: 4))
                                                                        ]))),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        4.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        263.00),
                                                                margin:
                                                                    getMargin(
                                                                        left: 5,
                                                                        top:
                                                                            11),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .lightGreen500))
                                                          ]))
                                                ]))),
                                    CustomButton(
                                        height: 47,
                                        width: 165,
                                        text: "lbl_get_ticket".tr,
                                        margin: getMargin(left: 2, bottom: 61),
                                        variant: ButtonVariant.FillBluegray900,
                                        padding: ButtonPadding.PaddingAll13,
                                        alignment: Alignment.bottomLeft),
                                    CustomButton(
                                        height: 47,
                                        width: 165,
                                        text: "lbl_add_to_trip".tr,
                                        margin: getMargin(right: 3, bottom: 61),
                                        variant:
                                            ButtonVariant.FillLightgreen500,
                                        padding: ButtonPadding.PaddingAll13,
                                        onTap: onTapAddtotrip,
                                        alignment: Alignment.bottomRight)
                                  ]))))
                ]))));
  }

  onTapClose() {
    Get.back();
  }

  onTapAddtotrip() {
    Get.toNamed(AppRoutes.addTourOneScreen);
  }
}
