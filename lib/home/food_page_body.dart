import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecom_app/home/main_food_page.dart';
import 'package:ecom_app/pages/food_item_page.dart';
import 'package:ecom_app/widgets/big_text.dart';
import 'package:ecom_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';


import '../widgets/icons_and_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.88);
  var _currPageValue = 0.0;
  var cheight = heightAndWidth.containerHeight(200);
  var scaleFactor=0.8;



  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });

    });
  }




  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {


    //Upper Main container
    return Column(
      children: [
        Container(
          height: heightAndWidth.containerHeight(265),



           child: PageView.builder(
            itemCount: 5,
              controller: pageController,
              itemBuilder: (context,position){
              return _buildPageItem(position) ;

          }),
        ),

    //Dotsindicator
    DotsIndicator(
    dotsCount: 5,
    decorator: DotsDecorator(
      size: Size.fromRadius(heightAndWidth.containerWidth(2))
    ) ,
    position: _currPageValue,
    ),
        SizedBox(height: 15,),



        Container(
          margin: EdgeInsets.only(left:heightAndWidth.containerHeight(15) ),
          alignment: Alignment.topLeft,
          child:
            BigText(text: "Popular",),
        ),
        //list of food items
        Container(
          height: heightAndWidth.containerHeight(700),
          child: ListView.builder(
            physics:NeverScrollableScrollPhysics(),
            itemCount: 10,
              itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(top: heightAndWidth.containerHeight(20),right: heightAndWidth.containerHeight(20)),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodItemPage(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(heightAndWidth.containerHeight(20)),

                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/food2.webp'
                              ),
                            )

                        ),

                      ),
                      Expanded(
                        child: Container(
                          height: heightAndWidth.containerHeight(100),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(heightAndWidth.containerWidth(10)),
                              bottomRight: Radius.circular(heightAndWidth.containerWidth(10))
                            ),
                            color: Colors.white38,
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: heightAndWidth.containerWidth(10),
                            top: heightAndWidth.containerHeight(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Nutritous food in india"),
                                SizedBox(height: heightAndWidth.containerHeight(10),),
                                SmallText(text: "with indian characteristics"),
                                SizedBox(height: heightAndWidth.containerHeight(10),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                  children: [

                                    IconsAndText(icon: Icons.circle_sharp, text: "Normal", iconcolor: Colors.orange),
                                    IconsAndText(icon: Icons.location_on, text: "1.7km", iconcolor: Colors.green),
                                    IconsAndText(icon: Icons.access_time_outlined, text: "32min", iconcolor: Colors.redAccent),




                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


              );
              })




        )


      ],
    );
  }

Widget _buildPageItem(int position) {
    //Animation
  Matrix4 matrix = Matrix4.identity();
  if(position == _currPageValue.floor() )
    {
      var currScale = 1 - (_currPageValue - position)*(1 - scaleFactor);
      var currTrans = cheight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
  else if(position == _currPageValue.floor() + 1)
    {
      var currScale = scaleFactor + (_currPageValue - position + 1)*(1 - scaleFactor);
      var currTrans = cheight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
  else if(position == _currPageValue.floor() - 1)
  {
    var currScale = 1 - (_currPageValue - position)*(1 - scaleFactor);
    var currTrans = cheight*(1-currScale)/2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1);
    matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
  }
  else
    {
      var currScale = 0.8;
      var currTrans = cheight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 1);
    }


  return Transform(
    transform: matrix,

      child: Stack(
      children: [
        //top food image
        Container(
          height: cheight,
          margin:  EdgeInsets.only(left: heightAndWidth.containerWidth(10),right: 10,top: heightAndWidth.containerWidth(10)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xff1fc7f1),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/images/food0.jpeg'
                ),
              )
          ),

        ),
        //top food info
        Align(
          alignment: Alignment.bottomCenter,


            child:Container(
              padding:  EdgeInsets.only(left: heightAndWidth.containerWidth(10),right: heightAndWidth.containerWidth(10),top: heightAndWidth.containerHeight(10)),


              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinesh side"),
                  SizedBox(height: heightAndWidth.containerHeight(10),),
                  Row(
                    children: [
                      Wrap(

                        children: List.generate(5, (index) { return Icon(Icons.star,color: Colors.green,size: 15,);}),
                      ),
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
              ),
              height: heightAndWidth.containerHeight(100),
              margin: EdgeInsets.only(left:heightAndWidth.containerHeight(30) ,right: heightAndWidth.containerHeight(30),bottom: heightAndWidth.containerHeight(5)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFFFFF),
                
                


              ),
              

            ),
        )

      ],
    ),
  );
  

}
}

