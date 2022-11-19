import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:luna_mia/utilits/category_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              children: [
                CategoryCard(
                    cardColor: AppColors.cYelowColor,
                    imagePath: 'assets/images/category_one_pic.png',
                    title: 'Girl pajama sets'),
                SizedBox(
                  height: 40.0,
                ),
                CategoryCard(
                    cardColor: AppColors.cLightBlueColor,
                    imagePath: 'assets/images/category_two_pic.png',
                    title: 'Boy pajama sets'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
