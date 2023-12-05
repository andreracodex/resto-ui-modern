import 'package:get/get.dart';

import '../../../../config/theme/my_theme.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/dummy_helper.dart';
import '../../../data/local/my_shared_pref.dart';
import '../../../data/models/category_model.dart';
import '../../../data/models/category_model_2.dart';
import '../../../data/models/product_model.dart';

class HomeController extends GetxController {
  // to hold categories & products
  List<CategoryModel> categories = [];
  List<CategoryModel2> categories2 = [];
  List<ProductModel> products = [];

  // for app theme
  var isLightTheme = MySharedPref.getThemeIsLight();

  // for home screen cards
  var cards = [Constants.card1, Constants.card2, Constants.card3];

  @override
  void onInit() {
    getCategories();
    getCategories2();
    getProducts();
    super.onInit();
  }

  /// get categories from dummy helper
  getCategories() {
    categories = DummyHelper.categories;
  }

  getCategories2() {
    categories2 = DummyHelper.categories2;
  }

  /// get products from dummy helper
  getProducts() {
    products = DummyHelper.products;
  }

  /// when the user press on change theme icon
  onChangeThemePressed() {
    MyTheme.changeTheme();
    isLightTheme = MySharedPref.getThemeIsLight();
    update(['Theme']);
  }
}
