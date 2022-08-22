import 'package:flutter/material.dart';
import 'package:trivia_app/constants/app_colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.numberQuizzes,
    required this.icon,
    required this.color,
    this.isChooseCategory = false,
  }) : super(key: key);

  final String title;
  final int numberQuizzes;
  final String icon;
  final Color color;
  final bool isChooseCategory;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .2,
      width: size.width * .4,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: isChooseCategory
                  ? Colors.white
                  : const Color.fromARGB(77, 255, 255, 255),
            ),
            child: WebsafeSvg.asset(
              icon,
              color: isChooseCategory ? AppColors.royalBlue : Colors.white,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: isChooseCategory ? AppColors.royalBlue : Colors.white,
            ),
          ),
          Text(
            '$numberQuizzes Quizzes',
            style: TextStyle(
              fontSize: 13,
              color: isChooseCategory ? AppColors.royalBlue : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
