import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class CreateQuizCheckbox extends StatefulWidget {
  CreateQuizCheckbox({Key? key, required this.value}) : super(key: key);
  bool value;
  @override
  State<CreateQuizCheckbox> createState() => _CreateQuizCheckboxState();
}

class _CreateQuizCheckboxState extends State<CreateQuizCheckbox> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: AppColors.grey3),
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.value = !widget.value;
          });
        },
        child: Row(
          children: [
            Checkbox(
                activeColor: AppColors.royalBlue,
                checkColor: AppColors.royalBlue,
                value: widget.value,
                onChanged: (value) {
                  setState(() {
                    widget.value = value!;
                    print(widget.value);
                  });
                }),
            Text(
              'Add Answer',
              style: TextStyle(color: AppColors.grey2),
            )
          ],
        ),
      ),
    );
  }
}
