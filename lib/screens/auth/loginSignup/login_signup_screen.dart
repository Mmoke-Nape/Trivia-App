import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivia_app/constants/app_colors.dart';
import 'package:trivia_app/constants/app_routes.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../widgets/custom_button.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.royalBlue,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 50, width: 50, color: Colors.green),
                Text(
                  'Queezy',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
                WebsafeSvg.asset('assets/illustrations/Mobile inbox-pana.svg',
                    // 'assets/illustrations/Friendly handshake-amico.svg',
                    height: size.height * .4),
                Container(
                  width: size.width,
                  height: size.height * .4,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Login or Sign Up',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: AppColors.black),
                      ),
                      const Text(
                        'Login or create an account to take a quiz, take part in challenges, and more',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.grey2),
                      ),
                      CustomButton(
                        title: 'Login',
                        press: () => Get.toNamed(AppRoutes.loginRoute),
                      ),
                      CustomButton(
                        title: 'Create an account',
                        press: () {
                          Get.toNamed(AppRoutes.signupRoute);
                        },
                        isBackFilled: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
