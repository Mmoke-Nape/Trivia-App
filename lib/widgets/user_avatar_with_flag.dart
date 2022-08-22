import 'package:flutter/material.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:trivia_app/widgets/random%20avators/my_paint.dart';
import 'package:trivia_app/widgets/random%20avators/svg_wrapper.dart';

class UserAvatarWithFlag extends StatefulWidget {
  const UserAvatarWithFlag({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  @override
  State<UserAvatarWithFlag> createState() => _UserAvatarWithFlagState();
}

class _UserAvatarWithFlagState extends State<UserAvatarWithFlag> {
  String svgCode = multiavatar('X-SLAYER');
  var svgRoot;

  _generateSvg() async {
    return SvgWrapper(svgCode).generateLogo().then((value) {
      setState(() {
        svgRoot = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _generateSvg();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: widget.height,
          width: widget.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: svgRoot == null
              ? const SizedBox.shrink()
              : CustomPaint(
                  painter: MyPainter(
                      svgRoot,
                      Size(
                        widget.width,
                        widget.height,
                      )),
                  child: Container(),
                ),
        ),
        Positioned(
          bottom: -2,
          right: -5,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        )
      ],
    );
  }
}
