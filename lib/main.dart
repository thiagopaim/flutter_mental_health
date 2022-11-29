import 'package:flutter/material.dart';
import 'package:mental_health/utils/theme.dart';
import 'package:mental_health/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health',
      theme: AppTheme().themeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
