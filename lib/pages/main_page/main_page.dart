import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:luna_mia/pages/one_product_page/one_product_page.dart';
import 'package:luna_mia/strings.dart';
import 'package:luna_mia/utilits/category_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    void clickRoute(String title, List<Product> productsList) {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => OneProductPage(
            title: title,
            productsList: productsList,
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              children: [
                CategoryCard(
                    onTapVoid: () => clickRoute(productsCategories[0], appProductList),
                    cardColor: AppColors.cYelowColor,
                    imagePath: 'assets/images/category_one_pic.png',
                    title: productsCategories[0]),
                const SizedBox(
                  height: 40.0,
                ),
                CategoryCard(
                    onTapVoid: () => clickRoute(productsCategories[1], appProductList),
                    cardColor: AppColors.cLightBlueColor,
                    imagePath: 'assets/images/category_two_pic.png',
                    title: productsCategories[1]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
