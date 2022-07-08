import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivia_app/constants/app_routes.dart';
import 'package:trivia_app/widgets/custom_button.dart';
import 'package:trivia_app/widgets/icon_custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/custom_appbar.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomAppbar(text: 'Reset Password'),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Enter your email and we will send you a link to reset your password',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.grey2),
                  ),
                ),
                const SizedBox(height: 40),
                const Align(
                    alignment: Alignment.centerLeft, child: Text('Email')),
                const SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  cursorColor: AppColors.royalBlue,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.royalBlue, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    focusColor: AppColors.royalBlue,
                    hintStyle: TextStyle(color: AppColors.grey2),
                    hintText: 'Your email address',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColors.royalBlue,
                    ),
                  ),
                  // style: const TextStyle(color: AppColors.grey3),
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(bottom: 20),
          child: CustomButton(
              title: 'Reset Password',
              press: () {
                Get.toNamed(AppRoutes.newPasswordRoute);
              }),
        ),
      ),
    );
  }
}
