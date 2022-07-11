import 'package:flutter/material.dart';
import 'package:trivia_app/screens/home/widgets/live_quiz_item.dart';

import '../../constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.royalBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              // height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.wb_sunny_outlined,
                            color: AppColors.pastelPink,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'GOOD MORNING',
                            style: TextStyle(
                                color: AppColors.pastelPink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Mmoke Nape',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage('assets/images/joji.jpg'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: size.width,
              height: size.height * .1,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.pastelPink,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'RECENT QUIZ',
                        style: TextStyle(
                            color: AppColors.black.withOpacity(.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.headphones_rounded,
                            color: AppColors.black.withOpacity(.7),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'A Basic Music Quiz',
                            style: TextStyle(
                                color: AppColors.black.withOpacity(.7),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage('assets/images/joji.jpg'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width,
              height: size.height * .3,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.dullLavender,
              ),
              child: Stack(
                // fit: StackFit.,
                alignment: AlignmentDirectional.center,
                children: [
                  const Positioned(
                    top: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 25,
                      foregroundImage: AssetImage('assets/images/joji.jpg'),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    right: 0,
                    child: CircleAvatar(
                      radius: 25,
                      foregroundImage: AssetImage('assets/images/joji.jpg'),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          const Text(
                            'FEATURED',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Take part in challenges with friends or other players',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    color: const Color.fromARGB(
                                        255, 237, 236, 236),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: 140,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.fitbit_rounded,
                                  color: AppColors.royalBlue,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Find Friends',
                                  style: TextStyle(
                                      color: AppColors.royalBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Live Quizzes',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'See all',
                          style: TextStyle(
                              color: AppColors.dullLavender,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const LiveQuizItem(
                        heading: 'Statistics Math Quiz', number: 12),
                    const SizedBox(height: 10),
                    const LiveQuizItem(heading: 'Matrices Quiz', number: 6),
                    const SizedBox(height: 10),
                    const LiveQuizItem(
                        heading: 'Integers Math Quiz', number: 10),
                    const SizedBox(height: 50),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
