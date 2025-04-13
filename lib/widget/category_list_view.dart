import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widget/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryName: 'Entertainment',
        categoryimage: 'assets/images/entertaiment.avif'),
    CategoryModel(
        categoryName: 'Business', categoryimage: 'assets/images/business.avif'),
    CategoryModel(
        categoryName: 'Health', categoryimage: 'assets/images/health.avif'),
    CategoryModel(
        categoryName: 'Science', categoryimage: 'assets/images/science.avif'),
    CategoryModel(
        categoryName: 'technologie',
        categoryimage: 'assets/images/technology.jpeg'),
    CategoryModel(
        categoryName: 'General', categoryimage: 'assets/images/general.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
