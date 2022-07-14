import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconsAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconcolor;

  const IconsAndText({Key? key,
    required this.icon,
    required this.text,
    required this.iconcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconcolor,size: heightAndWidth.containerHeight(18),),
        SizedBox(width: 5,),
        Text(text,style: TextStyle(
          fontSize: 13
        ),)


      ],
    );
  }
}
