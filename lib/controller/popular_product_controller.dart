import 'package:get/get.dart';

import '../repository/popular_food_repo.dart';

class PopularProductController extends GetxController
{
  final PopularFoodRepo popularFoodRepo;

  PopularProductController({required this.popularFoodRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  Future<void> getPopularProductList() async {
    Response response= await popularFoodRepo.getPopularProductList();
    if(response.statusCode==200)
      {
        _popularProductList = [];

      }
  }


}