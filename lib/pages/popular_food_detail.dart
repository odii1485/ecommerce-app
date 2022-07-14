import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';
import 'package:ecom_app/widgets/app_icons.dart';
import 'package:ecom_app/widgets/big_text.dart';
import 'package:ecom_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';


class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            toolbarHeight: heightAndWidth.containerHeight(55),
            title: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Appicons(iconData: Icons.clear),
                Appicons(iconData: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(heightAndWidth.containerHeight(20)),
                child: Container(

                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(

                      topLeft: Radius.circular(heightAndWidth.containerHeight(20)),
                      topRight: Radius.circular(heightAndWidth.containerHeight(20)),
                    )
                  ),
                  padding: EdgeInsets.only(
                    top: heightAndWidth.containerHeight(5),
                    bottom: heightAndWidth.containerHeight(10),
                  ),

                  child: Center(
                  child: BigText(text: "Pizza Making Recipe",),
                    ),
                ),

            ),
            pinned: true,
            backgroundColor: Colors.orange,
            expandedHeight: heightAndWidth.containerHeight(280),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food0.jpeg',
              width: double.maxFinite,
                fit: BoxFit.cover,
              ),

            ),
          ),
          SliverToBoxAdapter(
           child: Column(
             children: [
               ExpandableTextWidget(text: "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot. One of the simplest and most traditional pizzas is the Margherita, which is topped with tomatoes or tomato sauce, mozzarella, and basil. Popular legend relates that it was named for Queen Margherita, wife of Umberto I, who was said to have liked its mild fresh flavour and to have also noted that its topping colours—green, white, and red—were those of the Italian flag.")
             ],
           ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: heightAndWidth.containerWidth(30),),
                Appicons(iconData: Icons.remove,iconcolor: Colors.white,backgroundcolor: Colors.lightBlueAccent,size: 25,),
                BigText(text: "\$12.88 X 0",size: 22,),
                Appicons(iconData: Icons.add,iconcolor: Colors.white,backgroundcolor: Colors.lightBlueAccent,size: 25,),
                SizedBox(width: heightAndWidth.containerWidth(30),),

              ],
            ),
            Container(
              height: heightAndWidth.containerHeight(70),
              padding: EdgeInsets.only(
                left:heightAndWidth.containerHeight(20),
                right: heightAndWidth.containerHeight(20)

              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(201, 201, 201, 0.5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(heightAndWidth.containerHeight(20)),
                  topRight: Radius.circular(heightAndWidth.containerHeight(20)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height : 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(Icons.favorite,color: Colors.lightBlueAccent,size: heightAndWidth.containerHeight(20),)
                  ),
                  Container(
                      height : 50,
                      width: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: BigText(text: "\$ 28 | Add to cart",color: Colors.white,size: 20,)
                  )
                ],
              ),
            )
          ],
      ) ,
    );
  }
}
