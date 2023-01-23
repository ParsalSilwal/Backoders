import 'package:get/get.dart';
import 'listzipcode1_item_model.dart';
import 'dates2_item_model.dart';

class HomeOneModel {
  RxList<Listzipcode1ItemModel> listzipcode1ItemList =
      RxList.filled(2, Listzipcode1ItemModel());

  RxList<Dates2ItemModel> dates2ItemList = RxList.filled(7, Dates2ItemModel());
}
