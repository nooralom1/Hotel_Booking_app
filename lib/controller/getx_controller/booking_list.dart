import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/booking_list.dart';
import 'package:hotel_booking_app/model/booking_list.dart';

class BookingListController extends GetxController{

  RxBool isLoading = false.obs;
  RxList<Bookings> bookingList = <Bookings>[].obs;

  getBookings()async{
    isLoading.value=true;
    var data = await BookingListService.bookingListService();
    bookingList.value=data?.bookings??[];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getBookings();
    super.onInit();
  }
}