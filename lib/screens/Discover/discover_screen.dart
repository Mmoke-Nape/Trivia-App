import 'package:flutter/material.dart';
import 'package:trivia_app/screens/Discover/widgets/badge_icon_clipper.dart';

import '../../constants/app_colors.dart';
import '../../widgets/category_item.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.royalBlue,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.royalBlue,
        title: Text(
          'Discover',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: searchController,
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 84, 68, 199),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 84, 68, 199),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 84, 68, 199),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 84, 68, 199), width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  focusColor: Color.fromARGB(255, 84, 68, 199),
                  hintStyle: TextStyle(color: Colors.white70),
                  hintText: 'Quiz, categories, or friends',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width,
              height: size.height * .25,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.pastelPink,
              ),
              child: Stack(
                // fit: StackFit.,
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.pinkSalmon,
                      ),
                      child: const Text(
                        'TOP PICKS',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15),
                          Text(
                            'Travel Trivia Quiz',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                  color: const Color.fromARGB(255, 144, 35, 53),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.mic_none_sharp,
                                  color: Color.fromARGB(255, 144, 35, 53),
                                ),
                                Text(
                                  'Math - 5 Quizzes',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 144, 35, 53),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: 5,
                    child: Image.asset(
                        'assets/illustrations/discover_music.png',
                        height: size.height * .26),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top rank of the week',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  UserLeaderboardRankWidget(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
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
                  const CategoryItem(
                    icon: 'assets/icons/quiz categories/science.svg',
                    numberQuizzes: 12,
                    title: 'Science',
                    color: AppColors.royalBlue,
                  ),
                  const SizedBox(height: 10),
                  const CategoryItem(
                    icon: 'assets/icons/quiz categories/basketball_hoop.svg',
                    numberQuizzes: 18,
                    title: 'Sports',
                    color: Colors.teal,
                  ),
                  const SizedBox(height: 10),
                  const CategoryItem(
                    icon: 'assets/icons/quiz categories/music.svg',
                    numberQuizzes: 15,
                    title: 'Music',
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserLeaderboardRankWidget extends StatelessWidget {
  const UserLeaderboardRankWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.royalBlue,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              Container(
                // padding: const EdgeInsets.symmetric(
                //     horizontal: 15, vertical: 15),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white70),
                  color: AppColors.royalBlue,
                ),
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                // padding: const EdgeInsets.symmetric(
                //     horizontal: 15, vertical: 15),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.pinkSalmon,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -2,
                      right: -5,
                      child: Container(
                        height: 20,
                        width: 23,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brandon Matrovs',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '124 points',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            right: -30,
            top: -88,
            child: SizedBox(
              width: 150,
              height: 150,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CustomPaint(
                    size: Size(
                        150,
                        (150 * 0.5833333333333334)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: BadgeIconClipper(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Icon(Icons.precision_manufacturing_outlined,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
