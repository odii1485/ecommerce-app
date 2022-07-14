import 'package:get/get.dart';
 class heightAndWidth
{
 static  double screenHeight = Get.context!.height;
 static  double screenWidth = Get.context!.width;

 static double containerHeight(double OrignalHeight)
  {
     double fsend = screenHeight/(683.428/OrignalHeight);

    return fsend;
  }

 static double containerWidth(double OrignalHeight)
 {
   double fsend = screenWidth/(411.42/OrignalHeight);
   return fsend;
 }


}