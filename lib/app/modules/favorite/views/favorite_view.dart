import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resto_app/app/components/custom_icon_button.dart';
import 'package:resto_app/app/routes/app_pages.dart';
import 'package:resto_app/utils/constants.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                onPressed: () => Get.back(),
                backgroundColor: theme.scaffoldBackgroundColor,
                borderColor: theme.dividerColor,
                icon: SvgPicture.asset(
                  Constants.backArrowIcon,
                  fit: BoxFit.none,
                  // ignore: deprecated_member_use
                  color: theme.appBarTheme.iconTheme?.color,
                ),
              ),
              Text(
                'Favorite',
                style: theme.textTheme.displaySmall,
              ),
              CustomIconButton(
                onPressed: () => Get.offNamed(Routes.HOME),
                backgroundColor: theme.scaffoldBackgroundColor,
                borderColor: theme.dividerColor,
                icon: SvgPicture.asset(
                  Constants.searchIcon,
                  fit: BoxFit.none,
                  // ignore: deprecated_member_use
                  color: theme.appBarTheme.iconTheme?.color,
                ),
              ),
            ],
          ),
        ),
      ),
      // implement the list view
      body: ListView.builder(
        // the number of items in the list
        itemCount: controller.favorite.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            // In many cases, the key isn't mandatory
            key: ValueKey(controller.favorite[index]),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  5.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Image.asset(
                          controller.favorite[index].image,
                          width: 100,
                          height: 150,
                        ),
                      )
                    ],
                  ),
                  5.horizontalSpace,
                  SizedBox(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          controller.favorite[index].name,
                          style: context.theme.textTheme.displaySmall,
                        ),
                        Row(
                          children: [
                            Image.asset(Constants.favourites,
                                width: 14, height: 14),
                            5.horizontalSpace,
                            Text(
                              controller.favorite[index].score.toString(),
                              style: context.theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                        Text(
                          controller.favorite[index].telpon,
                          style: context.theme.textTheme.labelSmall,
                        ),
                        Text(
                          controller.favorite[index].location,
                          style: context.theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: IconButton(
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.pink,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
