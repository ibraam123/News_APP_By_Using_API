import 'package:flutter/material.dart';
import 'package:news_app_myversion/components/articles_list.dart';

class CategoriesNewsScreen extends StatelessWidget {
  const CategoriesNewsScreen({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          ArticlesList(category: category)
        ],
      ),
    );
  }
}