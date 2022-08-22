import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class StatsCreatedAndWonBox extends StatelessWidget {
  const StatsCreatedAndWonBox({
    Key? key,
    this.isInverted = false,
    required this.icon,
    required this.text,
    required this.number,
  }) : super(key: key);

  final bool isInverted;
  final IconData icon;
  final String text;
  final String number;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: isInverted ? AppColors.royalBlue : Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number,
                style: TextStyle(
                    color: isInverted ? Colors.white : AppColors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                text,
                style: TextStyle(
                    color: isInverted ? Colors.white : AppColors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Icon(
            icon,
            color: isInverted ? Colors.white : AppColors.black,
          ),
        ],
      ),
    );
  }
}
