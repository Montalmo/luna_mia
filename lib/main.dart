import 'package:flutter/material.dart';
import 'package:luna_mia/pages/main_page/main_page.dart';
import 'package:luna_mia/pages/main_page/main_page.dart';
// import 'package:luna_mia/pages/one_product_page/one_product_page.dart';
// import 'package:luna_mia/pages/products_page/products_page.dart';
// import 'package:luna_mia/strings.dart';

import 'pages/checkout_page/checkout_page.dart';

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
