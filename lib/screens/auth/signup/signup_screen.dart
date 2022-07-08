import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivia_app/constants/app_routes.dart';
import 'package:trivia_app/widgets/custom_button.dart';
import 'package:trivia_app/widgets/icon_custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/custom_appbar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomAppbar(text: 'Signup'),
                const SizedBox(height: 20),
                IconCustomButton(
                  title: 'Signup with Email',
                  press: () => Get.toNamed(AppRoutes.signup2Route),
                  svgIcon: 'assets/icons/socials/email.svg',
                  color: AppColors.royalBlue,
                  isDark: true,
                ),
                const SizedBox(height: 20),
                IconCustomButton(
                  title: 'Login with Google',
                  press: () {},
                  svgIcon: 'assets/icons/socials/google.svg',
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                IconCustomButton(
                  title: 'Login with Facebook',
                  press: () {},
                  svgIcon: 'assets/icons/socials/facebook.svg',
                  color: Colors.blue.shade900,
                  isDark: true,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.offNamed(AppRoutes.loginRoute),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: AppColors.grey2),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              // fontWeight: FontWeight.w400,
                              color: AppColors.royalBlue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
