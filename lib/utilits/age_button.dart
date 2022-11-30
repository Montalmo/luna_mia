import 'package:flutter/material.dart';
import 'package:luna_mia/constants.dart';

class AgeButton extends StatelessWidget {
  const AgeButton({
    Key? key,
    required this.ageCategoriesList
  }) : super(key: key);

  

  final List<String> ageCategoriesList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 8.0,
      runSpacing: 8.0,
      children: List.generate(ageCategoriesList.length, (index) {
        return AgeCategoryButton(title: ageCategoriesList[index]);
      }),
    );
  }
}

class AgeCategory {
  AgeCategory(this.title, this.isActive);

  final String title;
  final bool isActive;
}

class AgeCategoryButton extends StatefulWidget {
  final String title;
  bool isActive;

  AgeCategoryButton({super.key, required this.title, this.isActive = false});

  @override
  State<StatefulWidget> createState() => _AgeCategoryButtonState();
}

class _AgeCategoryButtonState extends State<AgeCategoryButton> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Container(
        width: (mediaQuery.size.width / 3) - 16,
        height: 44,
        decoration: widget.isActive
            ? BoxDecoration(
                color: AppColors.cLightBlueColor,
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(color: AppColors.cBlueColor),
              )
            : BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(color: AppColors.cGrayColor),
              ),
        child: Center(
          child: Text(
            widget.title,
            style:
                widget.isActive ? AppTextStyle.h4BodyBlue : AppTextStyle.h4Body,
          ),
        ),
      ),
    );
  }
}
