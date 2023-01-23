import '../profile_page/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 28,
                                                    top: 319,
                                                    right: 28,
                                                    bottom: 319),
                                                decoration: AppDecoration
                                                    .fillBluegray800,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomButton(
                                                          height: 28,
                                                          width: 155,
                                                          text:
                                                              "lbl_edit_profile"
                                                                  .tr,
                                                          margin: getMargin(
                                                              right: 8),
                                                          variant: ButtonVariant
                                                              .OutlineLightgreen200,
                                                          padding: ButtonPadding
                                                              .PaddingAll3,
                                                          fontStyle:
                                                              ButtonFontStyle
                                                                  .InterRegular13,
                                                          alignment: Alignment
                                                              .centerRight),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 11,
                                                                      top: 15,
                                                                      right:
                                                                          18),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            49.00),
                                                                        width: getHorizontalSize(
                                                                            94.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                16),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomLeft,
                                                                            children: [
                                                                              Align(alignment: Alignment.topCenter, child: Text("lbl_namkha2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular24.copyWith(height: getVerticalSize(1.00)))),
                                                                              CustomImageView(svgPath: ImageConstant.imgDownload, height: getVerticalSize(16.00), width: getHorizontalSize(10.00), alignment: Alignment.bottomLeft, margin: getMargin(left: 30, bottom: 2)),
                                                                              CustomImageView(svgPath: ImageConstant.imgClock, height: getVerticalSize(20.00), width: getHorizontalSize(17.00), alignment: Alignment.bottomLeft)
                                                                            ])),
                                                                    Spacer(),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            59.00),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                33),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "lbl_11_2k".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(14), fontFamily: 'Inter', fontWeight: FontWeight.w800, height: getVerticalSize(1.00))),
                                                                              TextSpan(text: "lbl_followers".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(13), fontFamily: 'Inter', fontWeight: FontWeight.w400, height: getVerticalSize(1.00)))
                                                                            ]),
                                                                            textAlign: TextAlign.center)),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            58.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                10,
                                                                            bottom:
                                                                                30),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "lbl_210".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(14), fontFamily: 'Inter', fontWeight: FontWeight.w800, height: getVerticalSize(1.00))),
                                                                              TextSpan(text: "lbl_following".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(13), fontFamily: 'Inter', fontWeight: FontWeight.w400, height: getVerticalSize(1.00)))
                                                                            ]),
                                                                            textAlign: TextAlign.center))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 11, top: 7),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCamera,
                                                                height: getSize(
                                                                    16.00),
                                                                width: getSize(
                                                                    16.00),
                                                                onTap: () {
                                                                  onTapImgCamera();
                                                                }),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            4),
                                                                child: Text(
                                                                    "lbl_realnamkha1"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00))))
                                                          ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  324.00),
                                                          margin: getMargin(
                                                              left: 11,
                                                              top: 7,
                                                              bottom: 46),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "msg_a_23_yr_old_with2"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                9.800000190734863),
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            height: getVerticalSize(1.00))),
                                                                    TextSpan(
                                                                        text: "msg_one_life_one_enlightment"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                10),
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            height: getVerticalSize(1.00)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(302.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
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
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      33.00),
                                                              margin: getMargin(
                                                                  top: 71,
                                                                  right: 20),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapLineTwentySix();
                                                                        },
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4.00),
                                                                            width: getHorizontalSize(33.00),
                                                                            decoration: BoxDecoration(color: ColorConstant.black900))),
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapLineTwentySeven();
                                                                        },
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4.00),
                                                                            width: getHorizontalSize(33.00),
                                                                            margin: getMargin(top: 6),
                                                                            decoration: BoxDecoration(color: ColorConstant.black900))),
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapLineTwentyEight();
                                                                        },
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4.00),
                                                                            width: getHorizontalSize(33.00),
                                                                            margin: getMargin(top: 5),
                                                                            decoration: BoxDecoration(color: ColorConstant.black900)))
                                                                  ])))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMv5bytnlogzhyzg131x120,
                                            height: getVerticalSize(131.00),
                                            width: getHorizontalSize(120.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(65.00)),
                                            alignment: Alignment.topLeft,
                                            margin:
                                                getMargin(left: 26, top: 224)),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                padding: getPadding(top: 511),
                                                child: IntrinsicWidth(
                                                    child: Container(
                                                        width: size.width,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          449.00),
                                                                  width: size
                                                                      .width,
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child: Container(
                                                                                height: getVerticalSize(263.00),
                                                                                width: size.width,
                                                                                margin: getMargin(top: 81),
                                                                                child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                  CustomImageView(imagePath: ImageConstant.imgMeghrajneupane260x393, height: getVerticalSize(260.00), width: getHorizontalSize(393.00), alignment: Alignment.center),
                                                                                  Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Padding(
                                                                                          padding: getPadding(left: 25),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Padding(
                                                                                                padding: getPadding(left: 3),
                                                                                                child: Row(children: [
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorLightGreen200, height: getVerticalSize(3.00), width: getHorizontalSize(30.00)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorLightGreen2003x30, height: getVerticalSize(3.00), width: getHorizontalSize(30.00), margin: getMargin(left: 9)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorLightGreen2002x30, height: getVerticalSize(2.00), width: getHorizontalSize(30.00), margin: getMargin(left: 9))
                                                                                                ])),
                                                                                            Container(
                                                                                                margin: getMargin(top: 29),
                                                                                                padding: getPadding(left: 3, top: 10, right: 3, bottom: 10),
                                                                                                decoration: AppDecoration.outlineLightgreen200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                                                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorLightGreen200, height: getVerticalSize(3.00), width: getHorizontalSize(30.00), margin: getMargin(top: 16, bottom: 1)),
                                                                                                  Container(
                                                                                                      height: getVerticalSize(20.00),
                                                                                                      width: getHorizontalSize(234.00),
                                                                                                      margin: getMargin(left: 4, right: 37),
                                                                                                      child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                                        Align(alignment: Alignment.center, child: Text("msg_share_your_photos".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular16Black900.copyWith(height: getVerticalSize(1.00)))),
                                                                                                        Align(
                                                                                                            alignment: Alignment.bottomLeft,
                                                                                                            child: Padding(
                                                                                                                padding: getPadding(left: 4),
                                                                                                                child: Row(children: [
                                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorLightGreen2003x30, height: getVerticalSize(3.00), width: getHorizontalSize(30.00)),
                                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorLightGreen2002x30, height: getVerticalSize(2.00), width: getHorizontalSize(30.00), margin: getMargin(left: 9))
                                                                                                                ])))
                                                                                                      ]))
                                                                                                ])),
                                                                                            Padding(padding: getPadding(top: 61), child: Text("lbl_my_photos".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular24.copyWith(height: getVerticalSize(1.00))))
                                                                                          ])))
                                                                                ]))),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMeghrajneupane145x191,
                                                                            height: getVerticalSize(140.00),
                                                                            width: getHorizontalSize(172.00),
                                                                            alignment: Alignment.bottomLeft),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMeghrajneupane145x191,
                                                                            height: getVerticalSize(140.00),
                                                                            width: getHorizontalSize(172.00),
                                                                            alignment: Alignment.bottomRight,
                                                                            margin: getMargin(right: 39)),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topLeft,
                                                                            child: Container(
                                                                                margin: getMargin(left: 25),
                                                                                padding: getPadding(left: 23, top: 13, right: 23, bottom: 13),
                                                                                decoration: AppDecoration.outlineBlack9003f.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                  Padding(padding: getPadding(top: 1), child: Text("lbl_check_in".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold24.copyWith(height: getVerticalSize(1.00)))),
                                                                                  Padding(
                                                                                      padding: getPadding(top: 4),
                                                                                      child: Row(children: [
                                                                                        Text("lbl_32".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold40.copyWith(height: getVerticalSize(1.00))),
                                                                                        Padding(padding: getPadding(left: 13, top: 20, bottom: 8), child: Text("lbl_places".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16Black900.copyWith(height: getVerticalSize(1.00))))
                                                                                      ]))
                                                                                ])))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Container(
                                                                      height: getVerticalSize(193.00),
                                                                      width: getHorizontalSize(204.00),
                                                                      margin: getMargin(top: 10),
                                                                      child: Stack(alignment: Alignment.centerLeft, children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMeghrajneupane145x191,
                                                                            height: getVerticalSize(193.00),
                                                                            width: getHorizontalSize(204.00),
                                                                            alignment: Alignment.center),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child: Row(children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(193.00), width: getHorizontalSize(204.00)),
                                                                              Padding(padding: getPadding(left: 64, top: 87, bottom: 77), child: Text("lbl_120".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold24.copyWith(height: getVerticalSize(1.00))))
                                                                            ]))
                                                                      ]))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              21,
                                                                          top:
                                                                              89),
                                                                  child: Text(
                                                                      "lbl_my_journeys"
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
                                                                              height: getVerticalSize(1.00)))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  119,
                                                                              top:
                                                                                  13,
                                                                              right:
                                                                                  47),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_january_3_2022".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraLight16WhiteA700.copyWith(height: getVerticalSize(1.00))),
                                                                                Spacer(),
                                                                                Container(height: getSize(10.00), width: getSize(10.00), margin: getMargin(top: 3, bottom: 6), decoration: BoxDecoration(color: ColorConstant.blueGray10001, borderRadius: BorderRadius.circular(getHorizontalSize(5.00)))),
                                                                                Container(height: getSize(10.00), width: getSize(10.00), margin: getMargin(left: 2, top: 3, bottom: 6), decoration: BoxDecoration(color: ColorConstant.blueGray10001, borderRadius: BorderRadius.circular(getHorizontalSize(5.00)))),
                                                                                Container(height: getSize(10.00), width: getSize(10.00), margin: getMargin(left: 3, top: 3, bottom: 6), decoration: BoxDecoration(color: ColorConstant.blueGray10001, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))))
                                                                              ]))),
                                                              Container(
                                                                  width: getHorizontalSize(
                                                                      355.00),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              9),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              9,
                                                                          right:
                                                                              6,
                                                                          bottom:
                                                                              9),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack9003f
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder20),
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
                                                                        Row(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMeghrajneupane145x191,
                                                                              height: getVerticalSize(189.00),
                                                                              width: getHorizontalSize(126.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(17.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 7),
                                                                              child: Obx(() => StaggeredGridView.countBuilder(
                                                                                  shrinkWrap: true,
                                                                                  primary: false,
                                                                                  crossAxisCount: 2,
                                                                                  crossAxisSpacing: getHorizontalSize(207.00),
                                                                                  mainAxisSpacing: getHorizontalSize(207.00),
                                                                                  staggeredTileBuilder: (index) {
                                                                                    return StaggeredTile.fit(2);
                                                                                  },
                                                                                  itemCount: controller.profileModelObj.value.profileItemList.length,
                                                                                  itemBuilder: (context, index) {
                                                                                    ProfileItemModel model = controller.profileModelObj.value.profileItemList[index];
                                                                                    return ProfileItemWidget(model);
                                                                                  })))
                                                                        ]),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 15),
                                                                            child: Text("msg_in_kathmandu_2022".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraLight16.copyWith(height: getVerticalSize(1.00)))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 9),
                                                                            child: Row(children: [
                                                                              CustomButton(height: 36, width: 143, text: "lbl_rs_5500".tr, padding: ButtonPadding.PaddingAll8, fontStyle: ButtonFontStyle.InterBold16),
                                                                              Padding(padding: getPadding(left: 9, top: 9, bottom: 8), child: Text("lbl_4_days".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraLight16.copyWith(height: getVerticalSize(1.00))))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 70),
                                                                            child: Row(children: [
                                                                              Container(
                                                                                  height: getVerticalSize(37.00),
                                                                                  width: getHorizontalSize(80.00),
                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg1, height: getSize(36.00), width: getSize(36.00), radius: BorderRadius.circular(getHorizontalSize(18.00)), alignment: Alignment.centerLeft),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg2, height: getSize(36.00), width: getSize(36.00), radius: BorderRadius.circular(getHorizontalSize(18.00)), alignment: Alignment.center),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg3, height: getSize(36.00), width: getSize(36.00), radius: BorderRadius.circular(getHorizontalSize(18.00)), alignment: Alignment.centerRight)
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(left: 9, top: 9, bottom: 9),
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "lbl_liked_by".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_abc".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_and".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_2_834".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_others".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00)))
                                                                                      ]),
                                                                                      textAlign: TextAlign.left))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 9),
                                                                            child: Text("lbl_15_comments".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterThin16.copyWith(height: getVerticalSize(1.00)))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 5,
                                                                                top: 5,
                                                                                bottom: 24),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "lbl_abc2".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00))),
                                                                                  TextSpan(text: "lbl_awesome_trip_3".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00)))
                                                                                ]),
                                                                                textAlign: TextAlign.left))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  119,
                                                                              top:
                                                                                  24,
                                                                              right:
                                                                                  47),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_january_3_2022".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraLight16WhiteA700.copyWith(height: getVerticalSize(1.00))),
                                                                                Spacer(),
                                                                                Container(height: getSize(10.00), width: getSize(10.00), margin: getMargin(top: 3, bottom: 6), decoration: BoxDecoration(color: ColorConstant.blueGray10001, borderRadius: BorderRadius.circular(getHorizontalSize(5.00)))),
                                                                                Container(height: getSize(10.00), width: getSize(10.00), margin: getMargin(left: 2, top: 3, bottom: 6), decoration: BoxDecoration(color: ColorConstant.blueGray10001, borderRadius: BorderRadius.circular(getHorizontalSize(5.00)))),
                                                                                Container(height: getSize(10.00), width: getSize(10.00), margin: getMargin(left: 3, top: 3, bottom: 6), decoration: BoxDecoration(color: ColorConstant.blueGray10001, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))))
                                                                              ]))),
                                                              Container(
                                                                  width: getHorizontalSize(
                                                                      355.00),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              9),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              9,
                                                                          right:
                                                                              6,
                                                                          bottom:
                                                                              9),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack9003f
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder20),
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
                                                                        Row(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMeghrajneupane145x191,
                                                                              height: getVerticalSize(189.00),
                                                                              width: getHorizontalSize(126.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(17.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 7),
                                                                              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(97.00), width: getHorizontalSize(207.00), radius: BorderRadius.circular(getHorizontalSize(17.00))),
                                                                                Padding(
                                                                                    padding: getPadding(top: 9),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(83.00), width: getHorizontalSize(100.00), radius: BorderRadius.circular(getHorizontalSize(17.00))),
                                                                                      CustomImageView(imagePath: ImageConstant.imgMeghrajneupane145x191, height: getVerticalSize(83.00), width: getHorizontalSize(100.00), radius: BorderRadius.circular(getHorizontalSize(17.00)), margin: getMargin(left: 7))
                                                                                    ]))
                                                                              ]))
                                                                        ]),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 15),
                                                                            child: Text("msg_in_kathmandu_2022".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraLight16.copyWith(height: getVerticalSize(1.00)))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 9),
                                                                            child: Row(children: [
                                                                              CustomButton(height: 36, width: 143, text: "lbl_rs_5500".tr, padding: ButtonPadding.PaddingAll8, fontStyle: ButtonFontStyle.InterBold16),
                                                                              Padding(padding: getPadding(left: 9, top: 9, bottom: 8), child: Text("lbl_4_days".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraLight16.copyWith(height: getVerticalSize(1.00))))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 70),
                                                                            child: Row(children: [
                                                                              Container(
                                                                                  height: getVerticalSize(37.00),
                                                                                  width: getHorizontalSize(80.00),
                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg1, height: getSize(36.00), width: getSize(36.00), radius: BorderRadius.circular(getHorizontalSize(18.00)), alignment: Alignment.centerLeft),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg2, height: getSize(36.00), width: getSize(36.00), radius: BorderRadius.circular(getHorizontalSize(18.00)), alignment: Alignment.center),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMv5bytnlogzhyzg3, height: getSize(36.00), width: getSize(36.00), radius: BorderRadius.circular(getHorizontalSize(18.00)), alignment: Alignment.centerRight)
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(left: 9, top: 9, bottom: 9),
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "lbl_liked_by".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_abc".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_and".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_2_834".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00))),
                                                                                        TextSpan(text: "lbl_others".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00)))
                                                                                      ]),
                                                                                      textAlign: TextAlign.left))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5, top: 9),
                                                                            child: Text("lbl_15_comments".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterThin16.copyWith(height: getVerticalSize(1.00)))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 5,
                                                                                top: 5,
                                                                                bottom: 24),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "lbl_abc2".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w100, height: getVerticalSize(1.00))),
                                                                                  TextSpan(text: "lbl_awesome_trip_3".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w200, height: getVerticalSize(1.00)))
                                                                                ]),
                                                                                textAlign: TextAlign.left))
                                                                      ]))
                                                            ])))))
                                      ]))))
                    ]))));
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapLineTwentySix() {
    Get.toNamed(AppRoutes.settingsScreen);
  }

  onTapLineTwentySeven() {
    Get.toNamed(AppRoutes.settingsScreen);
  }

  onTapLineTwentyEight() {
    Get.toNamed(AppRoutes.settingsScreen);
  }
}
