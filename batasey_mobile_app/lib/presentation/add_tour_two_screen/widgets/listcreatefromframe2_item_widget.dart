import '../controller/add_tour_two_controller.dart';
import '../models/listcreatefromframe2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class Listcreatefromframe2ItemWidget extends StatelessWidget {
  Listcreatefromframe2ItemWidget(this.listcreatefromframe2ItemModelObj);

  Listcreatefromframe2ItemModel listcreatefromframe2ItemModelObj;

  var controller = Get.find<AddTourTwoController>();

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
          44.00,
        ),
        width: getHorizontalSize(
          121.00,
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
                  36.00,
                ),
                width: getHorizontalSize(
                  121.00,
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
                      width: getHorizontalSize(
                        34.00,
                      ),
                      padding: getPadding(
                        left: 4,
                        top: 1,
                        right: 4,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFillGray300,
                      child: Text(
                        "lbl_date".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.40,
                          ),
                          height: getVerticalSize(
                            1.14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 9,
                      ),
                      child: Text(
                        "lbl_jan_24_jan_27".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.50,
                          ),
                          height: getVerticalSize(
                            1.28,
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
