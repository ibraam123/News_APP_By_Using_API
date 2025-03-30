import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_myversion/models/article_model.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key , required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            article.imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            )
          ),
          SizedBox(height: 12,),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )
        ),
        SizedBox(height: 8),
        Text(
          article.description,
          style: TextStyle(
            color: Colors.grey,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
