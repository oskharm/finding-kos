import 'package:flutter/material.dart';
import 'package:kos/pages/splash_page.dart';
import 'package:kos/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}