import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';

class ProductImages extends StatefulWidget {
  final List<String> picPathList;
  final bool isDiscount;

  const ProductImages(
      {super.key, required this.picPathList, required this.isDiscount});

  @override
  State<StatefulWidget> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 330,
              decoration: const BoxDecoration(
                color: AppColors.cLighGrayColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
              child: Center(
                child: Image.asset(
                  widget.picPathList[selectImage],
                ),
              ),
            ),
            if (widget.isDiscount)
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
                  child: const Text(
                    'Discont',
                    style: AppTextStyle.hFlagText,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            4,
            (index) {
              return buildSmallProductPrewiew(context, index);
            },
          ),
        ),
      ],
    );
  }

  InkWell buildSmallProductPrewiew(context, int index) {
    
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return InkWell(
      onTap: () {
        setState(() {
          selectImage = index;
        });
      },
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Container(
            height: (mediaQuery.size.width / 4) - 16,
            width: (mediaQuery.size.width / 4) - 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Image.asset(
              widget.picPathList[index],
              fit: BoxFit.cover,
            ),
          ),
          if (selectImage != index)
            Container(
              height: (mediaQuery.size.width / 4) - 16,
              width: (mediaQuery.size.width / 4) - 16,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
        ],
      ),
    );
  }
}
