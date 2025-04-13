import 'package:flutter/material.dart';
import 'package:newsapp/widget/news_list_view_builder.dart';

class NewsCategoryView extends StatelessWidget {
  const NewsCategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category),
        ],
      ),
    );
  }
}
