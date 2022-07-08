import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivia_app/widgets/custom_button.dart';
import 'package:trivia_app/widgets/icon_custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/custom_appbar.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();

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
                    'Your new password must be different from previously used passwords',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.grey2),
                  ),
                ),
                const SizedBox(height: 40),
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
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Confrim Password')),
                const SizedBox(height: 10),
                TextFormField(
                  controller: confirmPasswordController,
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
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(bottom: 20),
          child: CustomButton(title: 'Reset Password', press: () {}),
        ),
      ),
    );
  }
}
