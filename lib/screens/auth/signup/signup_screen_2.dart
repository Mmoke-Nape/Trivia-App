import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivia_app/constants/app_routes.dart';
import 'package:trivia_app/widgets/custom_button.dart';
import 'package:trivia_app/widgets/icon_custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/custom_appbar.dart';

class SignupScreen2 extends StatefulWidget {
  const SignupScreen2({Key? key}) : super(key: key);

  @override
  State<SignupScreen2> createState() => _SignupScreen2State();
}

class _SignupScreen2State extends State<SignupScreen2> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();

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
                const CustomAppbar(text: 'Signup'),
                const SizedBox(height: 20),
                const Align(
                    alignment: Alignment.centerLeft, child: Text('Username')),
                const SizedBox(height: 10),
                TextFormField(
                  controller: usernameController,
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
                          BorderSide(color: AppColors.royalBlue, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    focusColor: AppColors.royalBlue,
                    hintStyle: TextStyle(color: AppColors.grey2),
                    hintText: 'Your username',
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: AppColors.royalBlue,
                    ),
                  ),
                  // style: const TextStyle(color: AppColors.grey3),
                  keyboardType: TextInputType.name,
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (email) =>
                  //     email != null && !EmailValidator.validate(email)
                  //         ? 'Enter a valid email'
                  //         : null,
                ),
                const SizedBox(height: 15),
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
                          BorderSide(color: AppColors.royalBlue, width: 1.5),
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
                const Align(
                    alignment: Alignment.centerLeft, child: Text('Password')),
                const SizedBox(height: 10),
                TextFormField(
                  controller: passwordController,
                  cursorColor: AppColors.royalBlue,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.royalBlue, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    focusColor: AppColors.royalBlue,
                    hintStyle: TextStyle(color: AppColors.grey2),
                    hintText: 'Your password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.royalBlue,
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value != null && value.length < 6
                      ? 'Enter at least 6 characters'
                      : null,
                ),
                const SizedBox(height: 20),
                CustomButton(title: 'Signup', press: () {}),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.resetPasswordRoute),
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: AppColors.royalBlue,
                      fontWeight: FontWeight.bold,
                    ),
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
