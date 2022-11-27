import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:luna_mia/pages/main_page/main_page.dart';
import 'package:luna_mia/utilits/product_pic.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.productPic,
    required this.productTitle,
    required this.productPrice,
    required this.isDiscount,
    required this.onTapVoid,
  }) : super(key: key);

  final String productPic;
  final String productTitle;
  final double productPrice;
  late final String oldPrice =
      (productPrice + (productPrice * 15 / 100)).toStringAsFixed(2);
  bool isDiscount;
  final VoidCallback onTapVoid;

  @override
  Widget build(BuildContext context) {
    void clickRouteHome() {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const MainPage(),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ProductPic(
            productPic: productPic,
            isDiscount: isDiscount,
            onTapVoid: () => onTapVoid,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Text(
                '\$ $productPrice',
                style: AppTextStyle.h2TitlePrice,
              ),
              const SizedBox(
                width: 8.0,
              ),
              if (isDiscount)
                Text(
                  '\$ $oldPrice',
                  style: AppTextStyle.h5SubTitle,
                ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            productTitle,
            maxLines: 2,
            style: AppTextStyle.hTitleText,
          )
        ],
      ),
    );
  }
}
