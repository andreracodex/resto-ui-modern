import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
            // In many cases, the key isn't mandatory
            key: ValueKey(controller.favorite[index]),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  10.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        controller.favorite[index].image,
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  10.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.favorite[index].name,
                        style: context.theme.textTheme.displaySmall,
                      ),
                      SizedBox(height: 5),
                      Text(
                        controller.favorite[index].name,
                        style: context.theme.textTheme.labelSmall,
                      ),
                    ],
                  ),
                  50.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        onPressed: () {},
                      ),
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
