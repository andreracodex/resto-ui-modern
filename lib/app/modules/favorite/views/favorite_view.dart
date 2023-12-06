import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resto_app/utils/constants.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite', style: context.theme.textTheme.displaySmall),
        centerTitle: true,
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
                  10.horizontalSpace,
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
                  10.horizontalSpace,
                  SizedBox(
                    width: 150,
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
