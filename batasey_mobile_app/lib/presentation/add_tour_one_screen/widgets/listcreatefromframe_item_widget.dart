import '../controller/add_tour_one_controller.dart';
import '../models/listcreatefromframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class ListcreatefromframeItemWidget extends StatelessWidget {
  ListcreatefromframeItemWidget(this.listcreatefromframeItemModelObj);

  ListcreatefromframeItemModel listcreatefromframeItemModelObj;

  var controller = Get.find<AddTourOneController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ColorConstant.blueGray800,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Container(
        height: getVerticalSize(
          47.00,
        ),
        width: getHorizontalSize(
          94.00,
        ),
        decoration: AppDecoration.outlineBluegray800.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getVerticalSize(
                  38.00,
                ),
                width: getHorizontalSize(
                  94.00,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4.00,
                    ),
                  ),
                  border: Border.all(
                    color: ColorConstant.blueGray800,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        17.00,
                      ),
                      width: getHorizontalSize(
                        27.00,
                      ),
                      decoration: AppDecoration.fillGray300,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                16.00,
                              ),
                              width: getHorizontalSize(
                                27.00,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoMedium12.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "lbl_jan_5_jan_7".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoRegular16.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.50,
                          ),
                          height: getVerticalSize(
                            1.10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
