import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivia_app/constants/app_routes.dart';
import 'package:trivia_app/screens/create%20quiz/widgets/add_cover_image.dart';
import 'package:trivia_app/widgets/custom_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants/app_colors.dart';

class CreateQuizScreen extends StatefulWidget {
  const CreateQuizScreen({Key? key}) : super(key: key);

  @override
  State<CreateQuizScreen> createState() => _CreateQuizScreenState();
}

class _CreateQuizScreenState extends State<CreateQuizScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final quizCategoryController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    quizCategoryController.dispose();

    super.dispose();
  }

  List<String> categories = [
    'Math',
    'Sports',
    'Music',
    'Science',
    'Art',
    'Travel',
    'History',
    'Tech'
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
            child: WebsafeSvg.asset(
              'assets/icons/quiz categories/horizontal_dots.svg',
              color: Colors.white,
              width: 30,
            ),
          ),
        ],
        title: Text(
          'Create Quiz',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // height: size.height,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const AddCoverImageWidget(),
            const SizedBox(height: 20),
            const Align(alignment: Alignment.centerLeft, child: Text('Title')),
            const SizedBox(height: 10),
            TextFormField(
              controller: titleController,
              cursorColor: AppColors.royalBlue,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey3, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey3, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.royalBlue, width: 1.5),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusColor: AppColors.royalBlue,
                hintStyle: TextStyle(color: AppColors.grey2),
                hintText: 'Enter quiz title',
              ),
              keyboardType: TextInputType.name,
            ),
            // const SizedBox(height: 20),
            // const Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text('Quiz Category')),
            // const SizedBox(height: 10),
            // DropdownButtonFormField(
            //   decoration: const InputDecoration(
            //     enabledBorder: OutlineInputBorder(
            //       borderSide:
            //           BorderSide(color: AppColors.grey3, width: 1.0),
            //       borderRadius: BorderRadius.all(Radius.circular(15)),
            //     ),
            //     border: OutlineInputBorder(
            //       borderSide:
            //           BorderSide(color: AppColors.grey3, width: 1.0),
            //       borderRadius: BorderRadius.all(Radius.circular(15)),
            //     ),
            //     filled: true,
            //     fillColor: Colors.white,
            //     focusedBorder: OutlineInputBorder(
            //       borderSide:
            //           BorderSide(color: AppColors.royalBlue, width: 1.5),
            //       borderRadius: BorderRadius.all(Radius.circular(15)),
            //     ),
            //     focusColor: AppColors.royalBlue,
            //     hintStyle: TextStyle(color: AppColors.grey2),
            //     hintText: 'Enter quiz title',
            //   ),
            //   value: selectedItem,
            //   items: categories
            //       .map(
            //         (category) => DropdownMenuItem<String>(
            //           value: category,
            //           child: Text(category),
            //         ),
            //       )
            //       .toList(),
            //   onChanged: (d) {},
            // ),
            const SizedBox(height: 20),
            const Align(
                alignment: Alignment.centerLeft, child: Text('Description')),
            const SizedBox(height: 10),
            TextFormField(
              controller: descriptionController,
              cursorColor: AppColors.royalBlue,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey3, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey3, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.royalBlue, width: 1.5),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusColor: AppColors.royalBlue,
                hintStyle: TextStyle(color: AppColors.grey2),
                hintText: 'Enter quiz description',
              ),
              keyboardType: TextInputType.name,
            ),

            const SizedBox(height: 20),
            Spacer(),
            CustomButton(
              title: 'Add Questions',
              press: () {
                Get.toNamed(AppRoutes.chooseCategoryRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
