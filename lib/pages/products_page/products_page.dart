import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luna_mia/strings.dart';
import 'package:luna_mia/utilits/age_button.dart';

class OneProductInsidePage extends StatelessWidget {
  OneProductInsidePage({super.key});

  List<String> myAgeCategoryList = [
    '1-2 Age',
    '2-3 Age',
    '4-5 Age',
    '6-7 Age',
    '8-9 Age',
    '10-11 Age',
    '12-13 Age',
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 330,
                    decoration: BoxDecoration(
                      color: AppColors.cLighGrayColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset('assets/images/category_one_pic.png'),
                    ),
                  ),
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
                      child: Text(
                        'Discont',
                        style: AppTextStyle.hFlagText,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              ProductPreviewPics(),
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
              const SizedBox(
                height: 16.0,
              ),
              AgeButton(
                ageCategoriesList: myAgeCategoryList,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total coast:',
                    style: AppTextStyle.h4Body,
                  ),
                  Text(
                    '\$ 142.56',
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
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 44.0,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: AppColors.cGrayColor),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 44.0,
                        height: 44.0,
                        child: Center(
                          child: Text(
                            '1',
                            style: AppTextStyle.h3Title,
                          ),
                        ),
                      ),
                      Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: AppColors.cGrayColor),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: 44.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.cBlueColor,
                          elevation: 0,
                        ),
                        child: Text(
                          'Buy now',
                          style: AppTextStyle.h3TitleWhite,
                        ),
                      ),
                    ),
                  ),
                ],
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
              Text(
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
                'Matching kid and teddy bear pyjamas are designed in classic style and made from the premium quality 100% cotton fabrics to allow skin breathe all night long. Having matching pyjamas with their teddy bear, will create a distinctive bedtime ritual in which little ones get excited for bedtime.\n \nOur teddy bears are specially manufactured for Luna Mia by using the new and finest materials and fully conforms to CE and EN71 European Safety Standards. It is 45 cm tall,hand washable and safe for all ages with its embroidery eyes, nose and mouth details.\n \n* Matching Kid and Teddy Bear Pyjama Set consists of 1 kid pyjama set and 1 teddy bear with the matching pyjama.\n \n* Luna Mia Pyjama Sets are sent in a special gift box. *Free Worldwide Shipping',
                style: AppTextStyle.h5SubTitleText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductPreviewPics extends StatelessWidget {
  ProductPreviewPics({
    Key? key,
  }) : super(key: key);

  final List<String> _productPicPreviewPathList = [
    'assets/images/product_one.png',
    'assets/images/rectangle_6.png',
    'assets/images/rectangle_7.png',
    'assets/images/rectangle_8.png',
  ];
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) {
          return ProductPreviewOnePic(
            assetPicPath: _productPicPreviewPathList[index],
          );
        }));
  }
}

class ProductPreviewOnePic extends StatelessWidget {
  const ProductPreviewOnePic({
    Key? key,
    required this.assetPicPath,
  }) : super(key: key);

  final String assetPicPath;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return InkWell(
      onTap: (() {}),
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        height: (mediaQuery.size.width / 4) - 16,
        width: (mediaQuery.size.width / 4) - 16,
        child: Image.asset(assetPicPath),
      ),
    );
  }
}
