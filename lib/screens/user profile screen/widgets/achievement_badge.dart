import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants/app_colors.dart';
import 'badgeClipper.dart';

class AchievementBadge extends StatelessWidget {
  const AchievementBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          CustomPaint(
            size: Size(
                300,
                (300 * 0.5833333333333334)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: BadgeClipper(
              color: AppColors.royalBlue.withOpacity(.3),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.dullLavender,
                border: Border.all(color: AppColors.royalBlue, width: 4),
                shape: BoxShape.circle,
              ),
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(10),
              child: WebsafeSvg.asset('assets/icons/quiz categories/music.svg',
                  color: Colors.white),
            ),
          ),
          // const Padding(
          //   padding:
          //       EdgeInsets.only(bottom: 5),
          //   child: Icon(
          //       Icons
          //           .precision_manufacturing_outlined,
          //       color: Colors.white),
          // ),
        ],
      ),
    );
  }
}
