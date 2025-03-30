import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_myversion/components/articles_list.dart';
import 'package:news_app_myversion/components/category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News" ,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold ,
                  fontStyle: FontStyle.italic
              ),
            ),
            Text(
              "Cloud" ,
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold ,
                  fontStyle: FontStyle.italic
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        
        padding: EdgeInsets.all(12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryList(),),
            SliverToBoxAdapter(child: SizedBox(height: 25,),),
            ArticlesList(category: "general",),
          ],
        ),
      ),
    );
  }
}
