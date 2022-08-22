import 'package:flutter/material.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:trivia_app/screens/user%20profile%20screen/stats_tabview/widgets/stats_created_and_won.dart';
import 'package:trivia_app/screens/user%20profile%20screen/widgets/badgeClipper.dart';
import 'package:trivia_app/screens/user%20profile%20screen/widgets/points_worldrank_localRank.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../widgets/random avators/my_paint.dart';
import '../../widgets/random avators/svg_wrapper.dart';

import '../../constants/app_colors.dart';
import '../../widgets/user_avatar_with_flag.dart';
import '../Discover/widgets/badge_icon_clipper.dart';
import 'badgeTabView/badge_tabview.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.royalBlue,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: AppColors.royalBlue,
            toolbarHeight: 50,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: size.width,
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 50),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Madekyn Dias',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 30),
                            const PointsWRankLocalRank(),
                            const SizedBox(height: 20),
                            TabBar(
                              indicatorColor: AppColors.royalBlue,
                              indicatorSize: TabBarIndicatorSize.label,
                              unselectedLabelColor: Colors.grey,
                              labelStyle: const TextStyle(
                                  color: AppColors.royalBlue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              unselectedLabelStyle: const TextStyle(
                                  // fontSize: 18,
                                  ),
                              // fontWeight: FontWeight.bold),
                              indicator: CircleTabIndicator(
                                  color: AppColors.royalBlue, radius: 4),
                              labelColor: AppColors.royalBlue,
                              tabs: const [
                                Tab(text: 'Badge'),
                                Tab(text: 'Stats'),
                                Tab(text: 'Details'),
                              ],
                            ),
                            SizedBox(
                              width: size.width,
                              height: size.height * .5,
                              child: TabBarView(
                                children: [
                                  const BadgeTabView(),
                                  const StatsTabView(),
                                  Container(
                                    width: size.width,
                                    // height: size.height * .6,
                                    padding: const EdgeInsets.all(20),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: AppColors.lightLavender,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Recent matches',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18),
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                          // width: double.infinity,
                                          // height: 110,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  const UserAvatarWithFlag(
                                                      height: 50, width: 50),
                                                  // Positioned(
                                                  //   top: -50,
                                                  //   left: -30,
                                                  //   child: CustomPaint(
                                                  //     size: Size(
                                                  //         90,
                                                  //         (90 * 0.5833333333333334)
                                                  //             .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                                  //     painter:
                                                  //         BadgeIconClipper(),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(height: 100),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -50,
                        left: size.width * .4,
                        child: const UserAvatarWithFlag(height: 90, width: 90),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StatsTabView extends StatelessWidget {
  const StatsTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          width: size.width,
          // height: size.height * .6,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: AppColors.lightLavender,
          ),
          child: Column(
            children: [
              SizedBox(
                width: size.width * .65,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                    children: <TextSpan>[
                      TextSpan(
                        text: "You have played a total of ",
                        style: TextStyle(color: AppColors.black),
                      ),
                      TextSpan(
                        text: '37 quizzes ',
                        style: TextStyle(
                            // fontWeight: FontWeight.w400,
                            color: AppColors.dullLavender),
                      ),
                      TextSpan(
                        text: "this month!",
                        style: TextStyle(color: AppColors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CircularPercentIndicator(
                radius: 80.0,
                lineWidth: 12.0,
                percent: 0.8,
                circularStrokeCap: CircularStrokeCap.round,
                center: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "37",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                        text: '/50\n',
                        style: TextStyle(
                            // fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                        text: "quiz played",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
                progressColor: AppColors.royalBlue,
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: size.height * .13,
                child: Row(
                  children: const [
                    Expanded(
                      child: StatsCreatedAndWonBox(
                          icon: Icons.edit_outlined,
                          text: 'Quiz Created',
                          number: '5'),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: StatsCreatedAndWonBox(
                          isInverted: true,
                          icon: Icons.star_border,
                          text: 'Quiz Won',
                          number: '21'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  // CircleTabIndicator(this.color)
  //override createBoxPainter

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.radius, required this.color});

//override paint

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
