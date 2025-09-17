import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_theme.dart';

import 'features/home/presentation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Amit Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: HomePage(),
    );
  }
}
