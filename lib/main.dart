import 'package:flutter/material.dart';
import 'package:luna_mia/pages/main_page/main_page.dart';

void main() {
  runApp(const LunaMiaApp());
}

class LunaMiaApp extends StatelessWidget {
  const LunaMiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
