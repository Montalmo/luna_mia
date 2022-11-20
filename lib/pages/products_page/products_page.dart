import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luna_mia/strings.dart';
import 'package:luna_mia/utilits/product_card.dart';
import 'package:luna_mia/utilits/product_pic.dart';

class OneProductInsidePage extends StatelessWidget {
  const OneProductInsidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sweetie Pie',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProductPic(
                productPic: 'assets/images/product_one.png', isDiscount: true),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (() {}),
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    height: 71,
                    width: 71,
                    child: Image.asset('assets/images/product_one.png'),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    print('Ok');
                  }),
                  child: Container(
                    height: 71,
                    width: 71,
                    child: Image.asset('assets/images/rectangle_6.png'),
                  ),
                ),
                Container(
                  height: 71,
                  width: 71,
                  child: Image.asset('assets/images/rectangle_7.png'),
                ),
                Container(
                  height: 71,
                  width: 71,
                  child: Image.asset('assets/images/rectangle_8.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              children: [
                Text(
                  '\$ 71.80',
                  style: AppTextStyle.h2TitlePrice,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  '\$ 118.94',
                  style: AppTextStyle.h5SubTitle,
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Sweetie Pie Matching Kid And Teddy Bear Set',
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
          ],
        ),
      ),
    );
  }
}
