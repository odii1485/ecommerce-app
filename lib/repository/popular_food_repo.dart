import 'package:ecom_app/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularFoodRepo extends GetxService
{
  final ApiClient apiClient;

  PopularFoodRepo({required this.apiClient});
  Future<Response> getPopularProductList() async{
      return await apiClient.getData("https://www.dbetech.com/api/product/list");
  }

}