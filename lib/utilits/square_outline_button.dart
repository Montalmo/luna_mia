import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';


class SquareOutlineButton extends StatelessWidget {
  const SquareOutlineButton({
    Key? key,
    required this.title,
    required this.onTapVoid,
  }) : super(key: key);

  final String title;
  final VoidCallback onTapVoid;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 44,
      child: OutlinedButton(
        onPressed: () => onTapVoid(),
        child: Text(
          title,
          style: AppTextStyle.h2Title,
        ),
      ),
    );
  }
}
