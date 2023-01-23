import '../profile_one_screen/widgets/profile_one_item_widget.dart';
import 'controller/profile_one_controller.dart';
import 'models/profile_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/discovery_page/discovery_page.dart';
import 'package:travelapp/presentation/profile_page/profile_page.dart';
import 'package:travelapp/widgets/custom_bottom_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class ProfileOneScreen extends GetWidget<ProfileOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          height: getVerticalSize(334.00),
                          width: getHorizontalSize(390.00),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMeghrajneupane207x390,
                                height: getVerticalSize(207.00),
                                width: getHorizontalSize(390.00),
                                alignment: Alignment.topCenter),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 43, bottom: 19),
                                    child: Text("lbl_namkha2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular24Black900
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.00))))),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMv5bytnlogzhyzg131x120,
                                height: getVerticalSize(131.00),
                                width: getHorizontalSize(120.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(65.00)),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(left: 27, bottom: 64)),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: getHorizontalSize(155.00),
                                    margin: getMargin(right: 31, bottom: 30),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomButton(
                                              height: 28,
                                              width: 155,
                                              text: "lbl_edit_profile".tr,
                                              variant: ButtonVariant
                                                  .OutlineLightgreen200,
                                              padding:
                                                  ButtonPadding.PaddingAll3,
                                              fontStyle: ButtonFontStyle
                                                  .InterRegular13Black900),
                                          Padding(
                                              padding: getPadding(
                                                  top: 15, right: 10),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                59.00),
                                                        margin: getMargin(
                                                            bottom: 2),
                                                        child: Text(
                                                            "lbl_11_2k_followers"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtInterRegular13Black900
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.00)))),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                58.00),
                                                        margin:
                                                            getMargin(left: 10),
                                                        child: Text(
                                                            "lbl_210_following"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtInterRegular13Black900
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.00))))
                                                  ]))
                                        ]))),
                            CustomImageView(
                                svgPath: ImageConstant.imgDownload,
                                height: getVerticalSize(16.00),
                                width: getHorizontalSize(10.00),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(left: 73, bottom: 2)),
                            CustomImageView(
                                svgPath: ImageConstant.imgClock,
                                height: getVerticalSize(20.00),
                                width: getHorizontalSize(17.00),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(left: 43))
                          ])),
                      Padding(
                          padding: getPadding(left: 43, top: 7),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCameraBlack900,
                                height: getSize(16.00),
                                width: getSize(16.00),
                                onTap: () {
                                  onTapImgCamera();
                                }),
                            Padding(
                                padding: getPadding(left: 4),
                                child: Text("lbl_realnamkha1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular13Black900
                                        .copyWith(
                                            height: getVerticalSize(1.00))))
                          ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(324.00),
                              margin: getMargin(top: 7, right: 22),
                              child: Text("msg_a_23_yr_old_with".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterLight10Black900
                                      .copyWith(
                                          height: getVerticalSize(1.00))))),
                      Container(
                          height: getVerticalSize(449.00),
                          width: getHorizontalSize(390.00),
                          margin: getMargin(top: 56),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(263.00),
                                    width: getHorizontalSize(390.00),
                                    margin: getMargin(top: 81),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMeghrajneupane263x390,
                                              height: getVerticalSize(263.00),
                                              width: getHorizontalSize(390.00),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 43,
                                                      right: 34,
                                                      bottom: 48),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomButton(
                                                            height: 42,
                                                            width: 313,
                                                            text:
                                                                "msg_share_your_photos"
                                                                    .tr,
                                                            variant: ButtonVariant
                                                                .OutlineLightgreen200_1,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll8,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .InterRegular16Black900),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 61),
                                                            child: Text(
                                                                "lbl_my_photos"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular24Black900
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))))
                                                      ])))
                                        ]))),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMeghrajneupane145x191,
                                height: getVerticalSize(140.00),
                                width: getHorizontalSize(172.00),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(left: 18)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMeghrajneupane145x191,
                                height: getVerticalSize(140.00),
                                width: getHorizontalSize(172.00),
                                alignment: Alignment.bottomRight,
                                margin: getMargin(right: 18)),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: getMargin(left: 43),
                                    padding: getPadding(
                                        left: 23,
                                        top: 13,
                                        right: 23,
                                        bottom: 13),
                                    decoration: AppDecoration.outlineBlack9003f
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder32),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_check_in".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold24
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Row(children: [
                                                Text("lbl_32".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold40
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 13,
                                                        top: 20,
                                                        bottom: 8),
                                                    child: Text("lbl_places".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold16Black900
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00))))
                                              ]))
                                        ])))
                          ])),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 4, top: 10),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMeghrajneupane145x191,
                                    height: getVerticalSize(193.00),
                                    width: getHorizontalSize(204.00)),
                                Container(
                                    height: getVerticalSize(193.00),
                                    width: getHorizontalSize(204.00),
                                    margin: getMargin(left: 12),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 52, bottom: 76),
                                                  child: Text("lbl_120".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold24
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMeghrajneupane145x191,
                                              height: getVerticalSize(193.00),
                                              width: getHorizontalSize(204.00),
                                              alignment: Alignment.center)
                                        ]))
                              ]))),
                      Padding(
                          padding: getPadding(left: 39, top: 90),
                          child: Text("lbl_my_journeys".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular24Black900
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(left: 137, top: 11, right: 26),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_january_3_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterExtraLight16
                                            .copyWith(
                                                height: getVerticalSize(1.00))),
                                    Spacer(),
                                    Container(
                                        height: getSize(10.00),
                                        width: getSize(10.00),
                                        margin: getMargin(top: 2, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray10001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.00)))),
                                    Container(
                                        height: getSize(10.00),
                                        width: getSize(10.00),
                                        margin: getMargin(
                                            left: 2, top: 2, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray10001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.00)))),
                                    Container(
                                        height: getSize(10.00),
                                        width: getSize(10.00),
                                        margin: getMargin(
                                            left: 3, top: 2, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray10001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.00))))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(355.00),
                              margin: getMargin(top: 7),
                              padding: getPadding(
                                  left: 6, top: 9, right: 6, bottom: 9),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMeghrajneupane145x191,
                                          height: getVerticalSize(189.00),
                                          width: getHorizontalSize(126.00),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(17.00))),
                                      Padding(
                                          padding: getPadding(left: 7),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMeghrajneupane145x191,
                                                    height:
                                                        getVerticalSize(97.00),
                                                    width: getHorizontalSize(
                                                        207.00),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                17.00))),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgMeghrajneupane145x191,
                                                              height:
                                                                  getVerticalSize(
                                                                      83.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      100.00),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          17.00))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgMeghrajneupane145x191,
                                                              height:
                                                                  getVerticalSize(
                                                                      83.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      100.00),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          17.00)),
                                                              margin: getMargin(
                                                                  left: 7))
                                                        ]))
                                              ]))
                                    ]),
                                    Padding(
                                        padding: getPadding(left: 5, top: 14),
                                        child: Text("msg_in_kathmandu_2022".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterExtraLight16
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    Padding(
                                        padding: getPadding(left: 5, top: 8),
                                        child: Row(children: [
                                          CustomButton(
                                              height: 36,
                                              width: 143,
                                              text: "lbl_rs_5500".tr,
                                              padding:
                                                  ButtonPadding.PaddingAll8,
                                              fontStyle:
                                                  ButtonFontStyle.InterBold16),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, top: 9, bottom: 6),
                                              child: Text("lbl_4_days".tr,
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
                                        padding: getPadding(left: 22, top: 19),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFavoriteLightGreen200,
                                              height: getVerticalSize(27.00),
                                              width: getHorizontalSize(30.00),
                                              margin:
                                                  getMargin(top: 2, bottom: 1)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgNotificationLightGreen200,
                                              height: getSize(30.00),
                                              width: getSize(30.00),
                                              margin:
                                                  getMargin(left: 9, top: 1)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgSendLightGreen200,
                                              height: getVerticalSize(25.00),
                                              width: getHorizontalSize(30.00),
                                              margin:
                                                  getMargin(left: 9, bottom: 5))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 5, top: 20),
                                        child: Row(children: [
                                          Container(
                                              height: getVerticalSize(37.00),
                                              width: getHorizontalSize(80.00),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMv5bytnlogzhyzg2,
                                                        height: getSize(36.00),
                                                        width: getSize(36.00),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    18.00)),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMv5bytnlogzhyzg3,
                                                        height: getSize(36.00),
                                                        width: getSize(36.00),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    18.00)),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMv5bytnlogzhyzg3,
                                                        height: getSize(36.00),
                                                        width: getSize(36.00),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    18.00)),
                                                        alignment: Alignment
                                                            .centerRight)
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, top: 9, bottom: 7),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl_liked_by".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w100,
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))),
                                                    TextSpan(
                                                        text: "lbl_abc".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))),
                                                    TextSpan(
                                                        text: "lbl_and".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w100,
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))),
                                                    TextSpan(
                                                        text: "lbl_2_834".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))),
                                                    TextSpan(
                                                        text: "lbl_others".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w100,
                                                            height:
                                                                getVerticalSize(
                                                                    1.00)))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 5, top: 8),
                                        child: Text("lbl_15_comments".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterThin16
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 5, top: 5, bottom: 22),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_abc2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      height: getVerticalSize(
                                                          1.00))),
                                              TextSpan(
                                                  text: "lbl_awesome_trip_3".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      height: getVerticalSize(
                                                          1.00)))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(left: 137, top: 34, right: 26),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_september_8_2019".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterExtraLight16
                                            .copyWith(
                                                height: getVerticalSize(1.00))),
                                    Spacer(),
                                    Container(
                                        height: getSize(10.00),
                                        width: getSize(10.00),
                                        margin: getMargin(top: 2, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray10001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.00)))),
                                    Container(
                                        height: getSize(10.00),
                                        width: getSize(10.00),
                                        margin: getMargin(
                                            left: 2, top: 2, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray10001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.00)))),
                                    Container(
                                        height: getSize(10.00),
                                        width: getSize(10.00),
                                        margin: getMargin(
                                            left: 3, top: 2, bottom: 7),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray10001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.00))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(491.00),
                              width: getHorizontalSize(372.00),
                              margin: getMargin(top: 7),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 11, bottom: 57),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_in_pokhara_2019".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterExtraLight16
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  CustomButton(
                                                      height: 36,
                                                      width: 143,
                                                      text: "lbl_rs_7580".tr,
                                                      margin: getMargin(top: 8),
                                                      padding: ButtonPadding
                                                          .PaddingAll8,
                                                      fontStyle: ButtonFontStyle
                                                          .InterBold16),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 19),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFavoriteLightGreen200,
                                                                    height:
                                                                        getVerticalSize(
                                                                            27.00),
                                                                    width: getHorizontalSize(
                                                                        30.00),
                                                                    margin: getMargin(
                                                                        top: 2,
                                                                        bottom:
                                                                            1)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgNotificationLightGreen200,
                                                                    height:
                                                                        getSize(
                                                                            30.00),
                                                                    width: getSize(
                                                                        30.00),
                                                                    margin: getMargin(
                                                                        left: 9,
                                                                        top:
                                                                            1)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgSendLightGreen200,
                                                                    height:
                                                                        getVerticalSize(
                                                                            25.00),
                                                                    width: getHorizontalSize(
                                                                        30.00),
                                                                    margin: getMargin(
                                                                        left: 9,
                                                                        bottom:
                                                                            5))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 113),
                                            child: Text("lbl_8_days".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterExtraLight16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00))))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding: getPadding(
                                                right: 54, bottom: 7),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_liked_by".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w100,
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                                  TextSpan(
                                                      text: "lbl_abc".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                                  TextSpan(
                                                      text: "lbl_and".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w100,
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                                  TextSpan(
                                                      text: "lbl_2_834".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                                  TextSpan(
                                                      text: "lbl_others".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w100,
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))
                                                ]),
                                                textAlign: TextAlign.left))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMv5bytnlogzhyzg2,
                                        height: getSize(36.00),
                                        width: getSize(36.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(18.00)),
                                        alignment: Alignment.bottomLeft,
                                        margin: getMargin(left: 11, bottom: 1)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMv5bytnlogzhyzg3,
                                        height: getSize(36.00),
                                        width: getSize(36.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(18.00)),
                                        alignment: Alignment.bottomLeft,
                                        margin: getMargin(left: 33, bottom: 1)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMv5bytnlogzhyzg3,
                                        height: getSize(36.00),
                                        width: getSize(36.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(18.00)),
                                        alignment: Alignment.bottomLeft,
                                        margin: getMargin(left: 55)),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: getMargin(
                                                right: 17, bottom: 22),
                                            padding: getPadding(
                                                left: 6,
                                                top: 9,
                                                right: 6,
                                                bottom: 9),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMeghrajneupane145x191,
                                                      height: getVerticalSize(
                                                          189.00),
                                                      width: getHorizontalSize(
                                                          126.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  17.00)),
                                                      margin: getMargin(
                                                          bottom: 262)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 7,
                                                          right: 3,
                                                          bottom: 262),
                                                      child: Obx(() => StaggeredGridView
                                                          .countBuilder(
                                                              shrinkWrap: true,
                                                              primary: false,
                                                              crossAxisCount: 2,
                                                              crossAxisSpacing:
                                                                  getHorizontalSize(
                                                                      207.00),
                                                              mainAxisSpacing:
                                                                  getHorizontalSize(
                                                                      207.00),
                                                              staggeredTileBuilder:
                                                                  (index) {
                                                                return StaggeredTile
                                                                    .fit(2);
                                                              },
                                                              itemCount: controller
                                                                  .profileOneModelObj
                                                                  .value
                                                                  .profileOneItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ProfileOneItemModel
                                                                    model =
                                                                    controller
                                                                        .profileOneModelObj
                                                                        .value
                                                                        .profileOneItemList[index];
                                                                return ProfileOneItemWidget(
                                                                    model);
                                                              })))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: getHorizontalSize(161.00),
                                            margin: getMargin(bottom: 4),
                                            padding: getPadding(
                                                left: 56,
                                                top: 15,
                                                right: 56,
                                                bottom: 15),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup69),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUserLightGreen200,
                                                      height: getSize(44.00),
                                                      width: getSize(44.00),
                                                      margin:
                                                          getMargin(top: 41)),
                                                  Container(
                                                      height: getSize(13.00),
                                                      width: getSize(13.00),
                                                      margin: getMargin(
                                                          top: 6, right: 14),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      6.00))))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 29, top: 9),
                          child: Text("lbl_15_comments".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterThin16
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(left: 29, top: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_abc2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w100,
                                        height: getVerticalSize(1.00))),
                                TextSpan(
                                    text: "lbl_awesome_trip_3".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w200,
                                        height: getVerticalSize(1.00)))
                              ]),
                              textAlign: TextAlign.left))
                    ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Checkmark:
        return AppRoutes.discoveryPage;
      case BottomBarEnum.Bag:
        return "/";
      case BottomBarEnum.User:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.discoveryPage:
        return DiscoveryPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
