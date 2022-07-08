import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.press,
    this.isBackFilled = true,
  }) : super(key: key);
  final String title;
  final Function() press;
  final bool isBackFilled;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isBackFilled ? AppColors.royalBlue : AppColors.grey3,
          // color: ,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isBackFilled ? Colors.white : AppColors.royalBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
