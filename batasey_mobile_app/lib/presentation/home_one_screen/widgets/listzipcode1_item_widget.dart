import '../controller/home_one_controller.dart';
import '../models/home_one_screen_item_model.dart';
import '../models/listzipcode1_item_model.dart';
import '../widgets/home_one_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class Listzipcode1ItemWidget extends StatelessWidget {
  Listzipcode1ItemWidget(this.listzipcode1ItemModelObj);

  Listzipcode1ItemModel listzipcode1ItemModelObj;

  var controller = Get.find<HomeOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        35.00,
      ),
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: getVerticalSize(
                24.00,
              ),
            );
          },
          itemCount: listzipcode1ItemModelObj.homeOneScreenItemList.length,
          itemBuilder: (context, index) {
            HomeOneScreenItemModel model =
                listzipcode1ItemModelObj.homeOneScreenItemList[index];
            return HomeOneScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
