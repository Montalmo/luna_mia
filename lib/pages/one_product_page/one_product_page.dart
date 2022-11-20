import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luna_mia/strings.dart';
import 'package:luna_mia/utilits/product_card.dart';

class OneProductPage extends StatelessWidget {
  const OneProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Girl pajama sets',
          style: AppTextStyle.h2Title,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppStrings.iconHome),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView(
          children: [
            ProductCard(
              productTitle: 'Sweetie Pie Matching Kid And Teddy Bear Set',
              productPrice: 71.28,
              productPic: 'assets/images/product_one.png',
              isDiscount: true,
            ),
            ProductCard(
              productTitle: 'Sandra Multicolor Matching Kid And Teddy Bear Set',
              productPrice: 118.94,
              productPic: 'assets/images/product_two.png',
              isDiscount: false,
            ),
          ],
        ),
      ),
    );
  }
}
