import 'package:get/get.dart';
import 'listzipcode_item_model.dart';
import 'dates_item_model.dart';

class InitialModel {
  RxList<ListzipcodeItemModel> listzipcodeItemList =
      RxList.filled(2, ListzipcodeItemModel());

  RxList<DatesItemModel> datesItemList = RxList.filled(7, DatesItemModel());
}
