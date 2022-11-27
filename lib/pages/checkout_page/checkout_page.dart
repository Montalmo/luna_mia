import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luna_mia/constants.dart';
import 'package:luna_mia/strings.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: AppTextStyle.h2Title,
          overflow: TextOverflow.ellipsis,
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
              CheckoutProductView(),
              const SizedBox(
                height: 24.0,
              ),
              AppTextField(
                title: 'Name',
              ),
              const SizedBox(
                height: 16.0,
              ),
              AppTextField(
                title: 'Contact phone',
                textInputType: TextInputType.phone,
              ),
              const SizedBox(
                height: 16.0,
              ),
              AppTextField(
                textInpitAction: TextInputAction.done,
                title: 'Description',
                maxLines: 6,
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 44.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.cBlueColor,
                    elevation: 0,
                  ),
                  child: const Text(
                    'Send',
                    style: AppTextStyle.h3TitleWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  AppTextField({
    Key? key,
    required this.title,
    this.textInpitAction = TextInputAction.next,
    this.textInputType = TextInputType.name,
    this.maxLines = 1,
  }) : super(key: key);

  final TextEditingController textEditingController = TextEditingController();
  final String title;
  final TextInputType textInputType;
  final TextInputAction textInpitAction;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.h5SubTitleText,
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextFormField(
          maxLines: maxLines,
          keyboardType: textInputType,
          textInputAction: TextInputAction.next,
          controller: textEditingController,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(
                16.0,
                12.0,
                16.0,
                12.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: const BorderSide(color: AppColors.cGrayColor),
              )),
        ),
      ],
    );
  }
}

class CheckoutProductView extends StatelessWidget {
  const CheckoutProductView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 71.0,
          height: 71.0,
          child: Image.asset(productPicPathList01.first),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                appProductList.first.productTitle,
                style: AppTextStyle.h4Body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  const Text(
                    '2 pcs',
                    style: AppTextStyle.h5SubTitleText,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    '\$ ${appProductList.first.productCoast.toStringAsFixed(2)}',
                    style: AppTextStyle.h4BodyBlue,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
