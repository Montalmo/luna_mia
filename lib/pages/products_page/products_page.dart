import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luna_mia/strings.dart';
import 'package:luna_mia/utilits/age_button.dart';
import 'package:luna_mia/utilits/product_images.dart';
import 'package:luna_mia/utilits/square_outline_button.dart';

class OneProductInsidePage extends StatelessWidget {
  OneProductInsidePage({super.key, required this.currentProduct});

  final Product currentProduct;
  late final double currentProductDiscountPrice =
      currentProduct.productCoast - (currentProduct.productCoast * 15 / 100);

  late final CurrentProductInOrder currentProductInOrder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.cBlackColor),
        title: Text(
          currentProduct.productTitle,
          style: AppTextStyle.h2Title,
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppStrings.iconHome),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductImages(
                picPathList: currentProduct.productPicPath,
                isDiscount: currentProduct.isDiscount,
              ),
              const SizedBox(
                height: 24.0,
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
                height: 16.0,
              ),
              Text(
                currentProduct.productTitle,
                maxLines: 2,
                style: AppTextStyle.h2Title,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'Size:',
                style: AppTextStyle.h3Title,
              ),
              const SizedBox(
                height: 16.0,
              ),
              AgeButton(
                ageCategoriesList: currentProduct.productSizeList,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Divider(
                color: AppColors.cGrayColor,
              ),
              const SizedBox(
                height: 16.0,
              ),
              currentProduct.isDiscount
                  ? ProductToBuy(
                      currentProductCoast: currentProductDiscountPrice,
                    )
                  : ProductToBuy(
                      currentProductCoast: currentProduct.productCoast,
                    ),
              const SizedBox(
                height: 16.0,
              ),
              const Divider(
                color: AppColors.cGrayColor,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Product description',
                style: AppTextStyle.h4Body,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'Matching Kid And Teddy Bear Set',
                style: AppTextStyle.h4Body,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                currentProduct.productDescription,
                style: AppTextStyle.h5SubTitleText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductToBuy extends StatefulWidget {
  ProductToBuy({
    Key? key,
    required this.currentProductCoast,
  }) : super(key: key);

  final double currentProductCoast;

  @override
  State<ProductToBuy> createState() => _ProductToBuyState();
}

class _ProductToBuyState extends State<ProductToBuy> {
  int currentProductPCS = 1;
  late double totalCoast = widget.currentProductCoast * currentProductPCS;

  void increment() {
    setState(() {
      currentProductPCS += 1;
    });
  }

  void decrement() {
    setState(() {
      if (currentProductPCS > 1) currentProductPCS -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total coast:',
              style: AppTextStyle.h4Body,
            ),
            Text(
              '\$ ${(totalCoast * currentProductPCS).toStringAsFixed(2)}',
              style: AppTextStyle.h4BodyBlue,
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SquareOutlineButton(
                  onTapVoid: () => decrement(),
                  title: '-',
                ),
                Container(
                  width: 44.0,
                  height: 44.0,
                  child: Center(
                    child: Text(
                      currentProductPCS.toString(),
                      style: AppTextStyle.h3Title,
                    ),
                  ),
                ),
                SquareOutlineButton(
                  onTapVoid: () => increment(),
                  title: '+',
                ),
                const SizedBox(
                  width: 8.0,
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: 44.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.cBlueColor,
                    elevation: 0,
                  ),
                  child: const Text(
                    'Buy now',
                    style: AppTextStyle.h3TitleWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
