import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../screens/categories_news_screen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key , required this.category });
  final CategoryModel category;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoriesNewsScreen(category: category.categoryName,);
        }));
      },
      child: Container(
          height: 140,
          width: 200,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.cover
          )
        ),
        alignment: Alignment.center,
        child: Text(category.categoryName , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12 , color: Colors.white),),
      ),
    );
  }
}
