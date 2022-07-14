
import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';
import 'package:flutter/cupertino.dart';

class Appicons extends StatelessWidget {
  final IconData iconData;
  final Color iconcolor;
  final double size;
  final Color backgroundcolor;
  const Appicons(
      {Key? key,
      required this.iconData,
       this.iconcolor= const Color(0xFF756d54) ,
       this.backgroundcolor=const Color(0xFFfcf4e4),
         this.size = 30
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: heightAndWidth.containerHeight(size+2),
      height: heightAndWidth.containerHeight(size+2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(heightAndWidth.containerHeight(size+4)/2),
        color: backgroundcolor
      ),
      child: Icon(
        iconData,
        size: heightAndWidth.containerHeight(size),
        color: iconcolor,
      ),
    );
  }
}
