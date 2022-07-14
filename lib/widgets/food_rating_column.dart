import 'package:ecom_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';
import 'big_text.dart';
import 'icons_and_text.dart';

class FoodRatingColumn extends StatelessWidget {
  final String text;
  final double size;

  const FoodRatingColumn({Key? key,
     required this.text ,
    this.size=20,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: size,),
        SizedBox(height: heightAndWidth.containerHeight(10),),
        Row(
          children: [
            Wrap(

              children: List.generate(4, (index) { return Icon(Icons.star,color: Colors.green,size: 15,);},),

            ),
            Icon(Icons.star_half,color: Colors.green,size: 15,),
            SizedBox(width: heightAndWidth.containerHeight(10),),
            SmallText(text: "4.5"),
            SizedBox(width: heightAndWidth.containerHeight(10),),
            SmallText(text: "1287"),
            SizedBox(width: heightAndWidth.containerHeight(10),),
            SmallText(text: "comments")
          ],


        ),
        SizedBox(height: heightAndWidth.containerHeight(15),),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [

            IconsAndText(icon: Icons.circle_sharp, text: "Normal", iconcolor: Colors.orange),
            IconsAndText(icon: Icons.location_on, text: "1.7km", iconcolor: Colors.green),
            IconsAndText(icon: Icons.access_time_outlined, text: "32min", iconcolor: Colors.redAccent),




          ],
        ),







      ],
    );
  }
}
