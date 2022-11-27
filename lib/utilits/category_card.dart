import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      required this.cardColor,
      required this.imagePath,
      required this.title,
      required this.onTapVoid})
      : super(key: key);

  final Color cardColor;
  final String imagePath;
  final String title;
  final VoidCallback onTapVoid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: cardColor,
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: () => onTapVoid(),
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
                    child: Image.asset(imagePath),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          title,
          style: AppTextStyle.h1Title,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
