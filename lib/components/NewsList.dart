import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_myversion/components/article_widget.dart';

import '../models/article_model.dart';

class NewsListState extends StatelessWidget {
  const NewsListState({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return ArticleWidget(article: articles[index]);
      }, childCount: articles.length),
    );
  }
}
