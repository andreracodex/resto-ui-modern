import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resto_app/app/modules/favorite/views/favorite_view.dart';
import 'package:resto_app/app/modules/search/views/search_view.dart';

import '../../../../utils/constants.dart';
import '../../../routes/app_pages.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/base_controller.dart';

class BaseView extends GetView<BaseController> {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return GetBuilder<BaseController>(
      builder: (_) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          bottom: false,
          child: IndexedStack(
            index: controller.currentIndex,
            children: const [
              HomeView(),
              SearchView(),
              // Center(),
              FavoriteView(),
              ProfileView()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0.0,
          items: [
            _mBottomNavItem(
              label: 'Home',
              icon: Constants.homeIcon,
            ),
            _mBottomNavItem(
              label: 'search',
              icon: Constants.searchIcon,
            ),
            // const BottomNavigationBarItem(
            //   label: '',
            //   icon: Center(),
            // ),
            _mBottomNavItem(
              label: 'Favorite',
              icon: Constants.fav,
            ),
            _mBottomNavItem(
              label: 'Profile',
              icon: Constants.userIcon,
            ),
          ],
          onTap: controller.changeScreen,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          onPressed: () => Get.toNamed(Routes.CART),
          child: GetBuilder<BaseController>(
            id: 'CartBadge',
            builder: (_) => badges.Badge(
              position: BadgePosition.bottomEnd(bottom: -16, end: 13),
              badgeContent: Text(
                controller.cartItemsCount.toString(),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              badgeStyle: BadgeStyle(
                elevation: 2,
                badgeColor: theme.colorScheme.secondary,
                borderSide: const BorderSide(color: Colors.white, width: 1),
              ),
              child: CircleAvatar(
                radius: 22.r,
                backgroundColor: theme.primaryColor,
                child: SvgPicture.asset(
                  Constants.cartIcon,
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _mBottomNavItem({required String label, required String icon}) {
    return BottomNavigationBarItem(
      label: label,
      // ignore: deprecated_member_use
      icon: SvgPicture.asset(icon, color: Get.theme.iconTheme.color),
      activeIcon:
          // ignore: deprecated_member_use
          SvgPicture.asset(icon, color: Get.theme.appBarTheme.iconTheme?.color),
    );
  }
}
