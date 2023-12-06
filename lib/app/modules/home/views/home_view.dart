import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resto_app/app/components/product_item.dart';

import '../../../../app/components/category_item.dart';
import '../../../../app/components/category_item_2.dart';
import '../../../../utils/constants.dart';
import '../../../components/custom_form_field.dart';
import '../../../components/custom_icon_button.dart';
import '../../../components/dark_transition.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return DarkTransition(
      offset: Offset(context.width, -1),
      isDark: !controller.isLightTheme,
      builder: (context, _) => Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -200.h,
              width: 400.w,
              child: SvgPicture.asset(
                Constants.container,
                fit: BoxFit.fill,
                // ignore: deprecated_member_use
                color: theme.primaryColor,
              ),
            ),
            ListView(
              children: [
                Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
                      title: Text('Location : ',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontSize: 12.sp, color: Colors.white)),
                      subtitle: Text('Denver Apartement',
                          style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                      leading: CircleAvatar(
                        radius: 22.r,
                        backgroundColor: theme.primaryColorDark,
                        child: ClipOval(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(Constants.avatar),
                          ),
                        ),
                      ),
                      trailing: CustomIconButton(
                        onPressed: () => controller.onChangeThemePressed(),
                        backgroundColor: theme.primaryColor,
                        icon: GetBuilder<HomeController>(
                          id: 'Theme',
                          builder: (_) => Icon(
                            controller.isLightTheme
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    10.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CustomFormField(
                        backgroundColor: theme.primaryColorDark,
                        textSize: 14.sp,
                        hint: 'What food do you want ?',
                        hintFontSize: 14.sp,
                        hintColor: theme.hintColor,
                        maxLines: 1,
                        borderRound: 60.r,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.w),
                        focusedBorderColor: Colors.transparent,
                        isSearchField: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.search,
                        prefixIcon: SvgPicture.asset(Constants.searchIcon,
                            fit: BoxFit.none),
                      ),
                    ),
                    20.verticalSpace,
                    SizedBox(
                      width: double.infinity,
                      height: 158.h,
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          initialPage: 1,
                          viewportFraction: 0.9,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayCurve: Curves.easeOutCubic,
                        ),
                        itemCount: controller.cards.length,
                        itemBuilder: (context, itemIndex, pageViewIndex) {
                          const CircularProgressIndicator();
                          const Text("Loading");
                          return Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image.asset(
                              controller.cards[itemIndex],
                              fit: BoxFit.cover,
                            ),
                          );
                          // return Image.asset(controller.cards[itemIndex]);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      20.verticalSpace,
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: controller.categories.map((category) {
                      //     return CategoryItem(category: category);
                      //   }).toList(),
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        verticalDirection: VerticalDirection.down,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: controller.categories.map((category) {
                          return CategoryItem1(category: category);
                        }).toList(),
                      ),

                      // Row(
                      //   children: [
                      //     Container(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        verticalDirection: VerticalDirection.down,
                        children: controller.categories2.map((category) {
                          return CategoryItem2(category: category);
                        }).toList(),
                      ),
                      //     )
                      //   ],
                      // ),
                      16.verticalSpace,
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                          mainAxisExtent: 150.h,
                        ),
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 3,
                        itemBuilder: (context, index) => ProductItem(
                          product: controller.products[index],
                        ),
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
