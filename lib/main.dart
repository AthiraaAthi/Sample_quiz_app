import 'package:flutter/material.dart';
import 'package:quiz_app/view/home_page/home_page.dart';
void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(), 
    );
  }
}