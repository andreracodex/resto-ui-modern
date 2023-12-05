import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../app/data/models/category_model_2.dart';
import '../routes/app_pages.dart';

class CategoryItem2 extends StatelessWidget {
  final CategoryModel2 category;
  const CategoryItem2({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PRODUCTS),
      child: Column(
        children: [
          Card(
            child: SizedBox(
              width: 115,
              height: 100,
              child: SvgPicture.asset(category.image),
            ),
          ).animate().fade(duration: 200.ms),
          Text(
            category.title,
            style: theme.textTheme.labelSmall,
          ).animate().fade().slideY(
                duration: 200.ms,
                begin: 1,
                curve: Curves.easeInSine,
              ),
        ],
      ),
    );
  }
}
