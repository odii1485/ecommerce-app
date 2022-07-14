import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double height;
  double size;
  SmallText({Key? key,   this.color=const Color(0xff262121),
    required this.text,
    this.size = 12,
    this.height = 1.2

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: "Roboto",
          fontSize: size

      ),
    );
  }
}
