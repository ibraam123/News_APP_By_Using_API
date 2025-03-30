import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_widget.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  List<CategoryModel> categories = [
    CategoryModel(categoryName: 'Business', image: 'assets/business.avif'),
    CategoryModel(categoryName: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryName: 'General', image: 'assets/general.avif'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.avif'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.avif'),
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
        return CategoryWidget(category: categories[index],);
      }),
    );
  }
}
