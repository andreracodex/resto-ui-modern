import 'package:get/get.dart';
import 'package:resto_app/app/modules/favorite/controllers/favorite_controller.dart';

import '../../calendar/controllers/calendar_controller.dart';
import '../../category/controllers/category_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/base_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(() => BaseController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CategoryController>(() => CategoryController());
    Get.lazyPut<CalendarController>(() => CalendarController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
  }
}
