import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luna_mia/pages/main_page/main_page.dart';
import 'package:luna_mia/pages/products_page/products_page.dart';
import 'package:luna_mia/strings.dart';
import 'package:luna_mia/utilits/product_card.dart';

class OneProductPage extends StatelessWidget {
  const OneProductPage(
      {super.key, required this.title, required this.productsList});

  final String title;
  final List<Product> productsList;

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

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.cBlackColor),
        title: Text(
          title,
          style: AppTextStyle.h2Title,
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: clickRouteHome,
            icon: SvgPicture.asset(AppStrings.iconHome),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: List.generate(
              productsList.length,
              (index) => AppProductCard(
                currentProduct: productsList[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppProductCard extends StatelessWidget {
  AppProductCard({
    Key? key,
    required this.currentProduct,
  }) : super(key: key);

  final Product currentProduct;

  late final double currentProductDiscountPrice =
      currentProduct.productCoast - (currentProduct.productCoast * 15 / 100);

  @override
  Widget build(BuildContext context) {
    void clickRoute() {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) =>
              OneProductInsidePage(currentProduct: currentProduct),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: clickRoute,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 311.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Image.asset(currentProduct.productPicPath[0]),
                  if (currentProduct.isDiscount)
                    Positioned(
                      top: 16.0,
                      child: Container(
                        alignment: Alignment.center,
                        width: 104,
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: AppColors.cRedColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              bottomLeft: Radius.circular(4.0)),
                        ),
                        child: Text('Discont', style: AppTextStyle.h4BodyWhite),
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  currentProduct.isDiscount
                      ? Text(
                          '\$ ${currentProductDiscountPrice.toStringAsFixed(2)}',
                          style: AppTextStyle.h2TitlePrice,
                        )
                      : Text(
                          '\$ ${currentProduct.productCoast}',
                          style: AppTextStyle.h2TitlePrice,
                        ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  if (currentProduct.isDiscount)
                    Text(
                      '\$ ${currentProduct.productCoast}',
                      style: AppTextStyle.h5SubTitle,
                    ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                currentProduct.productTitle,
                style: AppTextStyle.hTitleText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
