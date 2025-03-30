import 'package:flutter/material.dart';
import 'package:news_app_myversion/screens/home_screen.dart';

void main() {
  runApp(NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen() ,
    );
  }
}

