import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/favorite_list.dart';
import 'package:hotel_booking_app/model/favorite_list.dart';

class FavoriteListController extends GetxController{

  RxBool isLoading = false.obs;
  RxList<Favorites> favoriteList = <Favorites>[].obs;
  RxInt counter = 1.obs;

  getFavorite()async{
    isLoading.value=true;
    var data = await FavoriteListService.recommendedHotelsService();
    favoriteList.value=data?.favorites??[];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getFavorite();
    super.onInit();
  }
}