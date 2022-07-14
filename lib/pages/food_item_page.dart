import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';
import 'package:ecom_app/widgets/app_icons.dart';
import 'package:ecom_app/widgets/expandable_text_widget.dart';
import 'package:ecom_app/widgets/food_rating_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/big_text.dart';
import '../widgets/icons_and_text.dart';
import '../widgets/small_text.dart';

class FoodItemPage extends StatelessWidget {
  const FoodItemPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //imageoffood
          Positioned(
            left: 0,
              right: 0,
              child: Container(
            width: double.maxFinite,
            height: heightAndWidth.containerHeight(300),
                decoration: const BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/food3.jpeg'
                      ),
                    )
                ),

          )),


          //icons of back and shopping cart
          Positioned(
            left: heightAndWidth.containerWidth(20),
              right: heightAndWidth.containerWidth(20),
              top:heightAndWidth.containerHeight(20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Appicons(iconData: Icons.arrow_back_ios),
                  Appicons(iconData: Icons.shopping_cart_outlined)
                ],
              )
          ),
          //full food information
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top:heightAndWidth.containerHeight(300-15) ,
              child: Container(
                padding: EdgeInsets.only(
                    left: heightAndWidth.containerWidth(20),
                    top: heightAndWidth.containerWidth(20),
                    right: heightAndWidth.containerWidth(10)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(heightAndWidth.containerHeight(15)),
                      topRight: Radius.circular(heightAndWidth.containerHeight(15)),
                  ),
                ),



                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      FoodRatingColumn(text: 'Quesadillas',),
                      SizedBox(height: heightAndWidth.containerHeight(10),),


                      BigText(text: "Introduce"),
                      SizedBox(height: heightAndWidth.containerHeight(10),),
                      Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "A quesadilla is a Mexican dish consisting of a tortilla that is filled primarily with cheese, and sometimes meats, spices, and other fillings, and then cooked on a griddle or stove. Traditionally, a corn tortilla is used, but it can also be made with a flour tortilla.")))
                    ],
                )
                
                

              ))


        ],
      ),
      bottomNavigationBar: Container(
        height: heightAndWidth.containerHeight(90),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(201, 201, 201, 0.5),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              width: heightAndWidth.containerHeight(90),
              height: heightAndWidth.containerHeight(45),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.only(left: heightAndWidth.containerWidth(10),right: heightAndWidth.containerWidth(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Icon(Icons.remove,color: Color.fromRGBO(201, 201, 201, 1),),
                  BigText(text: "0",size: heightAndWidth.containerHeight(18) ,),
                  Icon(Icons.add,color: Color.fromRGBO(201, 201, 201, 1),),
                ],
              ),

            ),
            Container(
              height: heightAndWidth.containerHeight(45),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(heightAndWidth.containerHeight(10))
              ),
              padding: EdgeInsets.only(left: heightAndWidth.containerWidth(10),right: heightAndWidth.containerWidth(10)),
              child: Row(
                children: [
                  BigText(text: "\$0.08 ",color: Colors.white,size: heightAndWidth.containerHeight(18),),
                  BigText(text: "Add to cart",color: Colors.white,size: heightAndWidth.containerHeight(18),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
