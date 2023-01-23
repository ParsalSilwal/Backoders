import '../introtwentytwo_screen/widgets/introtwentytwo_item_widget.dart';
import 'controller/introtwentytwo_controller.dart';
import 'models/introtwentytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_6.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class IntrotwentytwoScreen extends GetWidget<IntrotwentytwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray800,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarSubtitle6(
                    text: "lbl_step_1_2".tr, margin: getMargin(left: 27)),
                actions: [
                  AppbarSubtitle6(
                      text: "lbl_skip".tr,
                      margin:
                          getMargin(left: 32, top: 19, right: 32, bottom: 19))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 21, right: 21),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(292.00),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_hi".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w100,
                                        height: getVerticalSize(1.00))),
                                TextSpan(
                                    text: "lbl_namkha".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(1.00))),
                                TextSpan(
                                    text: "msg_what_do_you_love".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w100,
                                        height: getVerticalSize(1.00)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("msg_select_3_or_more".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium12
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(left: 1, top: 20),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(146.00),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(10.00),
                                      crossAxisSpacing:
                                          getHorizontalSize(10.00)),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.introtwentytwoModelObj.value
                                  .introtwentytwoItemList.length,
                              itemBuilder: (context, index) {
                                IntrotwentytwoItemModel model = controller
                                    .introtwentytwoModelObj
                                    .value
                                    .introtwentytwoItemList[index];
                                return IntrotwentytwoItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 30, right: 20, bottom: 56),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 47,
                      width: 343,
                      text: "lbl_continue".tr,
                      variant: ButtonVariant.FillLightgreen500,
                      padding: ButtonPadding.PaddingAll13,
                      onTap: onTapContinue)
                ]))));
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.introtwentythreeScreen);
  }
}
