import 'controller/discovery_controller.dart';
import 'models/discovery_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_8.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DiscoveryPage extends StatelessWidget {
  DiscoveryController controller =
      Get.put(DiscoveryController(DiscoveryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            body: Container(
                width: size.width,
                decoration: AppDecoration.fillBluegray800,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(330.00),
                                    width: size.width,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(302.00),
                                                  width: size.width,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMeghrajneupane,
                                                            height:
                                                                getVerticalSize(
                                                                    302.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    393.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            36,
                                                                        right:
                                                                            21),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomAppBar(
                                                                          height: getVerticalSize(
                                                                              125.00),
                                                                          leadingWidth:
                                                                              159,
                                                                          leading: AppbarImage(
                                                                              height: getVerticalSize(67.00),
                                                                              width: getHorizontalSize(51.00),
                                                                              svgPath: ImageConstant.imgLocation,
                                                                              margin: getMargin(right: 108)),
                                                                          title: AppbarSubtitle8(text: "msg_you_re_in_kathmandu".tr, margin: getMargin(left: 44, top: 52)),
                                                                          actions: [
                                                                            Container(
                                                                                height: getVerticalSize(72.00),
                                                                                width: getHorizontalSize(68.00),
                                                                                margin: getMargin(left: 109, right: 21, bottom: 53),
                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                  CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg, height: getVerticalSize(72.00), width: getHorizontalSize(66.00), radius: BorderRadius.circular(getHorizontalSize(36.00)), alignment: Alignment.center, margin: getMargin(right: 2)),
                                                                                  AppbarImage(height: getVerticalSize(17.00), width: getHorizontalSize(18.00), svgPath: ImageConstant.imgGroup7, margin: getMargin(left: 50, top: 6, bottom: 49)),
                                                                                  AppbarSubtitle8(text: "lbl_3".tr, margin: getMargin(left: 55, top: 7, right: 5, bottom: 49))
                                                                                ]))
                                                                          ]),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  14,
                                                                              top:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_discovery".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular36.copyWith(height: getVerticalSize(1.00))))
                                                                    ])))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  margin: getMargin(
                                                      left: 29,
                                                      top: 273,
                                                      right: 27),
                                                  padding: getPadding(
                                                      left: 14,
                                                      top: 16,
                                                      right: 14,
                                                      bottom: 16),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgSearch,
                                                        height: getSize(24.00),
                                                        width: getSize(24.00),
                                                        margin:
                                                            getMargin(top: 1)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24,
                                                            top: 6,
                                                            right: 48,
                                                            bottom: 3),
                                                        child: Text(
                                                            "msg_hi_namkha_where"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular12
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.00))))
                                                  ])))
                                        ])),
                                Expanded(
                                    child: SingleChildScrollView(
                                        child: Padding(
                                            padding:
                                                getPadding(left: 23, top: 30),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 14, right: 29),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "lbl_for_you"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular24
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 7,
                                                                        bottom:
                                                                            2),
                                                                child: Text(
                                                                    "lbl_see_all"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00))))
                                                          ])),
                                                  SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      padding:
                                                          getPadding(top: 17),
                                                      child: IntrinsicWidth(
                                                          child:
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapRowmeghrajneupaneone();
                                                                  },
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMeghrajneupane145x191,
                                                                            height: getVerticalSize(145.00),
                                                                            width: getHorizontalSize(191.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(17.00))),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMeghrajneupane145x191,
                                                                            height: getVerticalSize(145.00),
                                                                            width: getHorizontalSize(191.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(17.00)),
                                                                            margin: getMargin(left: 22)),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMeghrajneupane145x191,
                                                                            height: getVerticalSize(145.00),
                                                                            width: getHorizontalSize(191.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(17.00)),
                                                                            margin: getMargin(left: 22)),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMeghrajneupane145x191,
                                                                            height: getVerticalSize(145.00),
                                                                            width: getHorizontalSize(191.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(17.00)),
                                                                            margin: getMargin(left: 22))
                                                                      ])))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 14, top: 17),
                                                      child: Text(
                                                          "lbl_stories".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular24
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      padding: getPadding(
                                                          left: 13, top: 14),
                                                      child: IntrinsicWidth(
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                            Container(
                                                                width: getSize(
                                                                    68.00),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            17,
                                                                        top: 3,
                                                                        right:
                                                                            17,
                                                                        bottom:
                                                                            3),
                                                                decoration: AppDecoration
                                                                    .txtFillWhiteA700
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtCircleBorder34),
                                                                child: Text(
                                                                    "lbl".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular48
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00)))),
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin: getMargin(
                                                                    left: 8),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        width: getHorizontalSize(
                                                                            3.00)),
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder36),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            68.00),
                                                                        width: getSize(
                                                                            68.00),
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                8,
                                                                            bottom:
                                                                                7),
                                                                        decoration: AppDecoration
                                                                            .outlineWhiteA700
                                                                            .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMeghrajneupane145x191,
                                                                              height: getVerticalSize(53.00),
                                                                              width: getHorizontalSize(51.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(25.00)),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin: getMargin(
                                                                    left: 8),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        width: getHorizontalSize(
                                                                            3.00)),
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder36),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            68.00),
                                                                        width: getSize(
                                                                            68.00),
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                8,
                                                                            bottom:
                                                                                7),
                                                                        decoration: AppDecoration
                                                                            .outlineWhiteA700
                                                                            .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMeghrajneupane145x191,
                                                                              height: getVerticalSize(53.00),
                                                                              width: getHorizontalSize(51.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(25.00)),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin: getMargin(
                                                                    left: 8),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        width: getHorizontalSize(
                                                                            3.00)),
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder36),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            68.00),
                                                                        width: getSize(
                                                                            68.00),
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                8,
                                                                            bottom:
                                                                                7),
                                                                        decoration: AppDecoration
                                                                            .outlineWhiteA700
                                                                            .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMeghrajneupane145x191,
                                                                              height: getVerticalSize(53.00),
                                                                              width: getHorizontalSize(51.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(25.00)),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin: getMargin(
                                                                    left: 8),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        width: getHorizontalSize(
                                                                            3.00)),
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder36),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            68.00),
                                                                        width: getSize(
                                                                            68.00),
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                8,
                                                                            bottom:
                                                                                7),
                                                                        decoration: AppDecoration
                                                                            .outlineWhiteA700
                                                                            .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMeghrajneupane145x191,
                                                                              height: getVerticalSize(53.00),
                                                                              width: getHorizontalSize(51.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(25.00)),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin: getMargin(
                                                                    left: 8),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        width: getHorizontalSize(
                                                                            3.00)),
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder36),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            68.00),
                                                                        width: getSize(
                                                                            68.00),
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                8,
                                                                            bottom:
                                                                                7),
                                                                        decoration: AppDecoration
                                                                            .outlineWhiteA700
                                                                            .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMeghrajneupane145x191,
                                                                              height: getVerticalSize(53.00),
                                                                              width: getHorizontalSize(51.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(25.00)),
                                                                              alignment: Alignment.center)
                                                                        ])))
                                                          ]))),
                                                  SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      padding: getPadding(
                                                          left: 11, top: 34),
                                                      child: IntrinsicWidth(
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      665.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      359.00),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Container(
                                                                            padding: getPadding(left: 9, top: 7, right: 9, bottom: 7),
                                                                            decoration: AppDecoration.outlineBlack9003f.copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Padding(
                                                                                  padding: getPadding(left: 1),
                                                                                  child: Row(children: [
                                                                                    Text("lbl_hot_places".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular24Black900.copyWith(height: getVerticalSize(1.00))),
                                                                                    Padding(padding: getPadding(left: 125, top: 4, bottom: 5), child: Text("lbl_see_all".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular16Black900.copyWith(height: getVerticalSize(1.00))))
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(top: 317, bottom: 273),
                                                                                  child: Row(children: [
                                                                                    Text("lbl_featured_places".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular24Black900.copyWith(height: getVerticalSize(1.00))),
                                                                                    Padding(padding: getPadding(left: 65, top: 5, bottom: 5), child: Text("lbl_see_all".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular16Black900.copyWith(height: getVerticalSize(1.00))))
                                                                                  ]))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        child: Padding(
                                                                            padding: getPadding(bottom: 53),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(215.00), width: getHorizontalSize(243.00), radius: BorderRadius.circular(getHorizontalSize(17.00))),
                                                                              CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(215.00), width: getHorizontalSize(243.00), radius: BorderRadius.circular(getHorizontalSize(17.00)), margin: getMargin(left: 16))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        child: Padding(
                                                                            padding: getPadding(top: 50),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(215.00), width: getHorizontalSize(154.00), radius: BorderRadius.circular(getHorizontalSize(17.00))),
                                                                              CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(215.00), width: getHorizontalSize(154.00), radius: BorderRadius.circular(getHorizontalSize(17.00)), margin: getMargin(left: 13)),
                                                                              CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(215.00), width: getHorizontalSize(154.00), radius: BorderRadius.circular(getHorizontalSize(17.00)), margin: getMargin(left: 13))
                                                                            ])))
                                                                  ]))))
                                                ]))))
                              ]))
                    ]))));
  }

  onTapRowmeghrajneupaneone() {
    Get.toNamed(AppRoutes.attractionScreen);
  }
}
