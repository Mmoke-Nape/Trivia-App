import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:trivia_app/constants/app_routes.dart';
import 'package:trivia_app/screens/create%20quiz/widgets/add_cover_image.dart';
import 'package:trivia_app/screens/home/widgets/live_quiz_item.dart';
import 'package:trivia_app/widgets/category_item.dart';
import 'package:trivia_app/widgets/custom_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants/app_colors.dart';
import '../widgets/checkbox.dart';

class AddQuestionsScreen extends StatefulWidget {
  const AddQuestionsScreen({Key? key}) : super(key: key);

  @override
  State<AddQuestionsScreen> createState() => _AddQuestionsScreenState();
}

class _AddQuestionsScreenState extends State<AddQuestionsScreen> {
  final questionController = TextEditingController();
  final answerController = TextEditingController();

  @override
  void dispose() {
    questionController.dispose();
    answerController.dispose();
    super.dispose();
  }

  List<String> categories = [
    'Multiple Answer',
    'Type Answer',
    'Voice Note',
    'Checkbox',
    'Puzzle',
  ];

  //Timer values

  int timer = 10;

  //Checkboxes values
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  String? selectedItem;

  //controll stepper
  int activeStep = 0;
  Color activeColor = Colors.black;
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
            child: GestureDetector(
              onTap: () {},
              child: WebsafeSvg.asset(
                'assets/icons/quiz categories/horizontal_dots.svg',
                color: Colors.white,
                width: 30,
              ),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: size.height,
        width: size.width,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Stepper(steps: [])
                  NumberStepper(
                    numbers: const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
                    activeStep: activeStep,
                    stepRadius: 17,
                    numberStyle: TextStyle(color: activeColor),
                    stepColor: Colors.transparent,
                    lineColor: Colors.transparent,
                    activeStepColor: Colors.black,

                    enableNextPreviousButtons: false,
                    onStepReached: (index) {
                      setState(() {
                        // activeStep = index;
                        activeColor = Colors.white;
                      });
                    },
                    // numberStyle: TextStyle(color: ) ,
                    alignment: Alignment.centerLeft,
                    lineLength: 10,
                  ),
                  // Column(
                  //   children: [
                  //     const AddCoverImageWidget(),
                  //     const SizedBox(height: 20),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         GestureDetector(
                  //           onTap: () {
                  //             setState(() {
                  //               if (timer == 10) {
                  //                 timer = 20;
                  //               } else if (timer == 20) {
                  //                 timer = 10;
                  //               }
                  //             });
                  //           },
                  //           child: Container(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 10, vertical: 20),
                  //             decoration: BoxDecoration(
                  //               borderRadius:
                  //                   const BorderRadius.all(Radius.circular(15)),
                  //               border: Border.all(color: AppColors.grey3),
                  //             ),
                  //             child: Row(
                  //               children: [
                  //                 WebsafeSvg.asset(
                  //                   'assets/icons/clock.svg',
                  //                   height: 20,
                  //                   color: AppColors.royalBlue,
                  //                 ),
                  //                 const SizedBox(width: 10),
                  //                 Text('$timer sec')
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 180,
                  //           height: 58,
                  //           child: DropdownButtonFormField<String>(
                  //             isExpanded: true,
                  //             decoration: const InputDecoration(
                  //               enabledBorder: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                     color: AppColors.grey3, width: 1.0),
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(15)),
                  //               ),
                  //               border: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                     color: AppColors.grey3, width: 1.0),
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(15)),
                  //               ),
                  //               filled: true,
                  //               fillColor: Colors.white,
                  //               focusedBorder: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                     color: AppColors.royalBlue, width: 1.5),
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(15)),
                  //               ),
                  //               focusColor: AppColors.royalBlue,
                  //               hintStyle: TextStyle(color: AppColors.grey2),
                  //               hintText: 'Quiz Options',
                  //             ),
                  //             value: selectedItem,
                  //             items: categories
                  //                 .map(
                  //                   (category) => DropdownMenuItem<String>(
                  //                     value: category,
                  //                     child: Text(
                  //                       category,
                  //                       // style: TextStyle(fontSize: 14),
                  //                     ),
                  //                   ),
                  //                 )
                  //                 .toList(),
                  //             onChanged: (value) =>
                  //                 setState(() => selectedItem = value),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     const SizedBox(height: 20),
                  //     const Align(
                  //       alignment: Alignment.centerLeft,
                  //       child: Text(
                  //         'Add Question',
                  //         style: TextStyle(fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //     const SizedBox(height: 10),
                  //     TextFormField(
                  //       controller: questionController,
                  //       cursorColor: AppColors.royalBlue,
                  //       decoration: const InputDecoration(
                  //         enabledBorder: OutlineInputBorder(
                  //           borderSide:
                  //               BorderSide(color: AppColors.grey3, width: 1.0),
                  //           borderRadius: BorderRadius.all(Radius.circular(15)),
                  //         ),
                  //         border: OutlineInputBorder(
                  //           borderSide:
                  //               BorderSide(color: AppColors.grey3, width: 1.0),
                  //           borderRadius: BorderRadius.all(Radius.circular(15)),
                  //         ),
                  //         filled: true,
                  //         fillColor: Colors.white,
                  //         focusedBorder: OutlineInputBorder(
                  //           borderSide: BorderSide(
                  //               color: AppColors.royalBlue, width: 1.5),
                  //           borderRadius: BorderRadius.all(Radius.circular(15)),
                  //         ),
                  //         focusColor: AppColors.royalBlue,
                  //         hintStyle: TextStyle(color: AppColors.grey2),
                  //         hintText: 'Enter your question',
                  //       ),
                  //       keyboardType: TextInputType.name,
                  //     ),
                  //     const SizedBox(height: 20),
                  //     if (selectedItem == 'Multiple Answer')
                  //       Column(
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: const [
                  //               AddAnswer(),
                  //               AddAnswer(),
                  //             ],
                  //           ),
                  //           const SizedBox(height: 20),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: const [
                  //               AddAnswer(),
                  //               AddAnswer(),
                  //             ],
                  //           ),
                  //           const SizedBox(height: 70),
                  //         ],
                  //       ),
                  //     if (selectedItem == 'Type Answer')
                  //       Column(
                  //         children: [
                  //           TextFormField(
                  //             maxLines: 4,
                  //             controller: answerController,
                  //             cursorColor: AppColors.royalBlue,
                  //             decoration: const InputDecoration(
                  //               enabledBorder: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                     color: AppColors.grey3, width: 1.0),
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(15)),
                  //               ),
                  //               border: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                     color: AppColors.grey3, width: 1.0),
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(15)),
                  //               ),
                  //               filled: true,
                  //               fillColor: Colors.white,
                  //               focusedBorder: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                     color: AppColors.royalBlue, width: 1.5),
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(15)),
                  //               ),
                  //               focusColor: AppColors.royalBlue,
                  //               hintStyle: TextStyle(color: AppColors.grey2),
                  //               hintText: 'Add Answer',
                  //             ),
                  //             keyboardType: TextInputType.multiline,
                  //           ),
                  //           const SizedBox(height: 70),
                  //         ],
                  //       ),
                  //     if (selectedItem == 'Voice Note')
                  //       Row(
                  //         // mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Container(
                  //             height: 60,
                  //             width: 60,
                  //             // padding: const EdgeInsets.symmetric(
                  //             //     horizontal: 10, vertical: 20),
                  //             decoration: const BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               color: AppColors.royalBlue,
                  //             ),
                  //             child: const Icon(
                  //               Icons.keyboard_voice_outlined,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           const SizedBox(width: 10),
                  //           const Text(
                  //             'Add Voice Note Answer',
                  //             style: TextStyle(
                  //               color: AppColors.royalBlue,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     if (selectedItem == 'Checkbox')
                  //       Column(
                  //         children: [
                  //           CreateQuizCheckbox(value: value1),
                  //           const SizedBox(height: 10),
                  //           CreateQuizCheckbox(value: value2),
                  //           const SizedBox(height: 10),
                  //           CreateQuizCheckbox(value: value3),
                  //           const SizedBox(height: 10),
                  //           CreateQuizCheckbox(value: value4),
                  //         ],
                  //       ),
                  //   ],
                  // ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: size.width - 60,
                child: CustomButton(
                  title: 'Next Question',
                  press: () {
                    //Get.toNamed(AppRoutes.addQuestionsRoute);
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

class AddAnswer extends StatelessWidget {
  const AddAnswer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.height * .15,
        width: size.width * .4,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: const BoxDecoration(
          color: AppColors.lightLavender,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          // border: Border.all(color: AppColors.grey3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.add,
              color: AppColors.royalBlue,
            ),
            Text(
              'Add Answer',
              style: TextStyle(
                color: AppColors.royalBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
