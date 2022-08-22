import 'package:flutter/material.dart';
import 'package:trivia_app/screens/user%20profile%20screen/widgets/achievement_badge.dart';

class BadgeTabView extends StatelessWidget {
  const BadgeTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Stack(
        // mainAxisAlignment:
        // MainAxisAlignment.spaceBetween,
        children: [
          //First upper row
          Positioned(
            top: 0,
            left: -size.width * .22,
            child: const AchievementBadge(),
          ),
          Positioned(
            left: size.width * .06,
            child: const AchievementBadge(),
          ),
          Positioned(
            right: -size.width * .22,
            child: const AchievementBadge(),
          ),

          //Second bottom row

          Positioned(
            top: 100,
            left: -size.width * .22,
            child: const AchievementBadge(),
          ),
          Positioned(
            top: 100,
            left: size.width * .06,
            child: const AchievementBadge(),
          ),
          Positioned(
            top: 100,
            right: -size.width * .22,
            child: const AchievementBadge(),
          ),
        ],
      ),
    );
  }
}
