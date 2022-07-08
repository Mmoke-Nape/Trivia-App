import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants/app_colors.dart';

class IconCustomButton extends StatelessWidget {
  const IconCustomButton({
    Key? key,
    required this.title,
    required this.press,
    required this.color,
    required this.svgIcon,
    this.isDark = false,
  }) : super(key: key);
  final String title;
  final Function() press;
  final Color color;
  final String svgIcon;
  final bool isDark;
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
          color: color,
          // color: ,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WebsafeSvg.asset(svgIcon,
                  height: 30, color: isDark ? Colors.white : null),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  color: isDark ? Colors.white : AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
