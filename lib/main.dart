import 'package:ecom_app/home/main_food_page.dart';
import 'package:ecom_app/pages/food_item_page.dart';
import 'package:ecom_app/pages/popular_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void   main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom app',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     // home:  FoodItemPage(),
      //home:  foodPage(),
      home: PopularFoodDetail(),
    );
  }
}

