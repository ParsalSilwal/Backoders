import 'package:get/get.dart';
import 'dates4_item_model.dart';
import 'listcreatefromframe2_item_model.dart';
import 'listcreatefromframe_two1_item_model.dart';

class AddTourTwoModel {
  RxList<Dates4ItemModel> dates4ItemList = RxList.filled(7, Dates4ItemModel());

  RxList<Listcreatefromframe2ItemModel> listcreatefromframe2ItemList =
      RxList.filled(2, Listcreatefromframe2ItemModel());

  RxList<ListcreatefromframeTwo1ItemModel> listcreatefromframeTwo1ItemList =
      RxList.filled(2, ListcreatefromframeTwo1ItemModel());
}
