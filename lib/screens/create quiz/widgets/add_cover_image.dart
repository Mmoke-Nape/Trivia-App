import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants/app_colors.dart';

class AddCoverImageWidget extends StatelessWidget {
  const AddCoverImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: AppColors.lightLavender,
        ),
        width: size.width,
        height: size.height * .27,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WebsafeSvg.asset(
                'assets/icons/quiz categories/gallery.svg',
                color: AppColors.royalBlue,
                height: 40,
              ),
              const SizedBox(height: 20),
              const Text(
                'Add Cover Image',
                style: TextStyle(
                  color: AppColors.royalBlue,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
