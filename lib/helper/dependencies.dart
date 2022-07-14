import 'package:ecom_app/data/api/api_client.dart';
import 'package:ecom_app/repository/popular_food_repo.dart';
import 'package:get/get.dart';
import '../controller/popular_product_controller.dart';

Future<void> init()
async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));
  
  Get.lazyPut(() => PopularFoodRepo(apiClient: Get.find()));
  
  Get.lazyPut(() => PopularProductController(popularFoodRepo: Get.find()));

}