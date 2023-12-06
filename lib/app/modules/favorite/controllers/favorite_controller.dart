import 'package:get/get.dart';
import 'package:resto_app/app/data/models/favorite_model.dart';
import 'package:resto_app/utils/dummy_helper.dart';

class FavoriteController extends GetxController {
  // to hold the product
  List<FavoriteModel> favorite = [];

  @override
  void onInit() {
    getFavorite();
    super.onInit();
  }

  /// get favorite from dummy helper
  getFavorite() {
    favorite = DummyHelper.favorite;
  }
}
