
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/business_accommodates.dart';
import 'package:hotel_booking_app/controller/api_controller/recommended_hotels.dart';
import 'package:hotel_booking_app/model/business_accommodates.dart';
import 'package:hotel_booking_app/model/recommended_hotels.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController searchController = TextEditingController();
  RxList<RecommendedHotels> recommendedHotel = <RecommendedHotels>[].obs;
  RxList<BusinessAccommodates> businessAccommodates =
      <BusinessAccommodates>[].obs;
  RangeValues currentRangeValues = const RangeValues(90, 350);
  RxList<String> value = [
    '\$0 - \$1000',
    '\$50 - \$250',
    '\$250 - \$450',
    '\$450 - \$650',
    '\$650 - \$850',
    '\$850 - \$1000',
  ].obs;
  var selectedValue = ''.obs;

  getRecommendedHotels() async {
    isLoading.value = true;
    var data = await RecommendedHotelsService.recommendedHotelsService();
    recommendedHotel.value = data?.recommendedHotels ?? [];
    isLoading.value = false;
  }

  getBusinessAccommodates() async {
    isLoading.value = true;
    var data = await BusinessAccommodatesService.businessAccommodatesService();
    businessAccommodates.value = data?.businessAccommodates ?? [];
    isLoading.value = false;
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    getRecommendedHotels();
    getBusinessAccommodates();
    super.onInit();
  }
}
