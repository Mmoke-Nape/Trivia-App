import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants/app_colors.dart';

class PointsWRankLocalRank extends StatelessWidget {
  const PointsWRankLocalRank({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * .14,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: AppColors.royalBlue,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: pillItems(
              icon: 'assets/icons/quiz categories/globe.svg',
              text: 'WORLD RANK',
              placement: '#1,438',
            ),
          ),
          Container(
            height: 200,
            width: 1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.white,
                  Colors.transparent,
                ],
                stops: [
                  0.1,
                  0.5,
                  0.9,
                ],
              ),
            ),
            // thickness: 1,
          ),
          Expanded(
            child: pillItems(
              icon: 'assets/icons/quiz categories/globe.svg',
              text: 'WORLD RANK',
              placement: '#1,438',
            ),
          ),
          Container(
            height: 200,
            width: 1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.white,
                  Colors.transparent,
                ],
                stops: [
                  0.1,
                  0.5,
                  0.9,
                ],
              ),
            ),
            // thickness: 1,
          ),
          Expanded(
            child: pillItems(
              icon: 'assets/icons/quiz categories/globe.svg',
              text: 'WORLD RANK',
              placement: '#1,438',
            ),
          ),
        ],
      ),
    );
  }

  Column pillItems({icon, text, placement}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WebsafeSvg.asset(
          icon,
          height: 30,
          color: Colors.white,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white38,
            fontSize: 13,
          ),
        ),
        Text(
          placement,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
