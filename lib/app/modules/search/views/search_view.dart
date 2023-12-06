import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/no_data.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search', style: context.theme.textTheme.displaySmall),
        centerTitle: true,
      ),
      body: const NoData(text: 'This is Search Screen'),
    );
  }
}
