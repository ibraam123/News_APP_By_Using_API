import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_myversion/components/NewsList.dart';
import 'package:news_app_myversion/models/article_model.dart';
import 'package:news_app_myversion/services/news_service.dart';

class ArticlesList extends StatefulWidget {
  const ArticlesList({super.key, required this.category});
  final String category;

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        print(snapshot.data);
        if (snapshot.hasData) {
          return NewsListState(articles: snapshot.data!);
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(color: Colors.orange),
            ),
          );
        }
      },
    );
  }
}
