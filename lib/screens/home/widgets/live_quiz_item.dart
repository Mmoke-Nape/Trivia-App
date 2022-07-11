import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class LiveQuizItem extends StatelessWidget {
  const LiveQuizItem({
    Key? key,
    required this.heading,
    required this.number,
  }) : super(key: key);

  final String heading;
  final int number;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      // margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.grey2),
        color: Colors.white,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.grey2),
              color: Colors.green,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Math - $number Quizzes',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: AppColors.royalBlue),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
