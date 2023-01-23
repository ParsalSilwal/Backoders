import '../controller/initial_controller.dart';
import '../models/initial_screen_item_model.dart';
import '../models/listzipcode_item_model.dart';
import '../widgets/initial_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class ListzipcodeItemWidget extends StatelessWidget {
  ListzipcodeItemWidget(this.listzipcodeItemModelObj);

  ListzipcodeItemModel listzipcodeItemModelObj;

  var controller = Get.find<InitialController>();

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
          itemCount: listzipcodeItemModelObj.initialScreenItemList.length,
          itemBuilder: (context, index) {
            InitialScreenItemModel model =
                listzipcodeItemModelObj.initialScreenItemList[index];
            return InitialScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
