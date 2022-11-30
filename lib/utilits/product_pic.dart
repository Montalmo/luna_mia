import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';

class ProductPic extends StatelessWidget {
  const ProductPic({
    Key? key,
    required this.productPic,
    required this.isDiscount,
    required this.onTapVoid,
  }) : super(key: key);

  final String productPic;
  final bool isDiscount;
  final VoidCallback onTapVoid;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      Material(
        color: AppColors.cLighGrayColor,
        borderRadius: BorderRadius.circular(8.0),
        child: InkWell(
          onTap: () => onTapVoid,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 330,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Image.asset(productPic),
                ),
              ),
            ],
          ),
        ),
      ),
      if (isDiscount)
        Positioned(
          top: 16.0,
          child: Container(
            alignment: Alignment.center,
            width: 104,
            height: 32.0,
            decoration: const BoxDecoration(
              color: AppColors.cRedColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  bottomLeft: Radius.circular(4.0)),
            ),
            child: const Text('Discont', style: AppTextStyle.h4BodyWhite),
          ),
        ),
    ]);
  }
}
