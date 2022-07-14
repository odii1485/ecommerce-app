

import 'package:ecom_app/home/food_page_body.dart';
import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';
import 'package:ecom_app/widgets/big_text.dart';
import 'package:ecom_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class foodPage extends StatefulWidget {
  const foodPage({Key? key}) : super(key: key);

  @override
  State<foodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<foodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(

              margin: EdgeInsets.only(top: 15,bottom: 15),
              padding: EdgeInsets.only(left: 5,right: 15),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "India",color:Colors.lightBlue),

                      Row(
                        children: [
                          SizedBox(width: 10,),
                          SmallText(text: "Porbandar"),
                          Icon(Icons.arrow_drop_down_circle_rounded)
                        ],
                      )

                    ],
                  ),
                  Container(
                    width: heightAndWidth.containerHeight(45),
                    height: heightAndWidth.containerHeight(45),
                    child:  Icon(Icons.search,color: Colors.white),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(heightAndWidth.containerHeight(15)),

                    ),

                  ),




                ],
              ),
            ),

          ),
           Expanded(

               child: SingleChildScrollView(
                 child: FoodPageBody(),
               )),
        ],
      ),
    );
  }
}
