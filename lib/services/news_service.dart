import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsService {
  NewsService(this.dio);

  final Dio dio;

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?apiKey=0d3827c047ad4a99a4e65a2f429c1564&category=$category&country=us",
    );
    List<ArticleModel> articles = [];

    Map<String, dynamic> data = response.data;
    List<dynamic> news = data["articles"];
    for (int i = 0; i < news.length; i++) {
      articles.add(
        ArticleModel(
          title: news[i]["title"],
          description: news[i]["description"],
          imageUrl: news[i]["urlToImage"],
        ),
      );
    }

    return articles;
  }
}
