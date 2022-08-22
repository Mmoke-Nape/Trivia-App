import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trivia_app/constants/app_routes.dart';
import 'package:trivia_app/screens/create%20quiz/widgets/add_cover_image.dart';
import 'package:trivia_app/screens/home/widgets/live_quiz_item.dart';
import 'package:trivia_app/widgets/category_item.dart';
import 'package:trivia_app/widgets/custom_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants/app_colors.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({Key? key}) : super(key: key);

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  final List<Map<String, dynamic>> categories = [
    {
      'category': 'Math',
      'icon': 'assets/icons/quiz categories/math.svg',
      'numQuiz': 21
    },
    {
      'category': 'Sports',
      'icon': 'assets/icons/quiz categories/basketball_hoop.svg',
      'numQuiz': 18
    },
    {
      'category': 'Music',
      'icon': 'assets/icons/quiz categories/music.svg',
      'numQuiz': 15
    },
    {
      'category': 'Science',
      'icon': 'assets/icons/quiz categories/science.svg',
      'numQuiz': 12
    },
    {
      'category': 'Art',
      'icon': 'assets/icons/quiz categories/art.svg',
      'numQuiz': 18
    },
    {
      'category': 'Travel',
      'icon': 'assets/icons/quiz categories/globe.svg',
      'numQuiz': 14
    },
    {
      'category': 'History',
      'icon': 'assets/icons/quiz categories/history.svg',
      'numQuiz': 7
    },
    {
      'category': 'Tech',
      'icon': 'assets/icons/quiz categories/tech.svg',
      'numQuiz': 8
    },
    {'category': '', 'icon': '', 'numQuiz': 8},
    {'category': '', 'icon': '', 'numQuiz': 8},
  ];

  String? selectedItem = 'Math';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.royalBlue,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.royalBlue,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
        title: Text(
          'Choose Category',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: size.height,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.center,
          children: [
            GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  mainAxisExtent: size.height * .22),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategoryItem(
                  title: categories[index]['category'],
                  numberQuizzes: categories[index]['numQuiz'],
                  icon: categories[index]['icon'],
                  color: AppColors.lightLavender,
                  isChooseCategory: true,
                );
              },
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: size.width - 60,
                child: CustomButton(
                  title: 'Next',
                  press: () {
                    Get.toNamed(AppRoutes.addQuestionsRoute);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
