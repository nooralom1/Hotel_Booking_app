import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCCustomerInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCShipmentInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCTransactionInfoModel.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hotel_booking_app/view/screen/home/home.dart';

class PaymentController extends GetxController {

  RxBool isLoading = false.obs;

  //  General Information
  Future<void> sslCommerzGeneralCall() async {
    Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        ipn_url: "www.ipnurl.com",
        multi_card_name: "master",
        currency: SSLCurrencyType.BDT,
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "shaki66e0157136d47",
        store_passwd: "shaki66e0157136d47@ssl",
        total_amount: 750,
        tran_id: "1234567891012",
      ),
    );

    try {
      SSLCTransactionInfoModel result = await sslcommerz.payNow();

      if (result.status!.toLowerCase() == "failed") {
        Fluttertoast.showToast(
          msg: "Transaction is Failed....",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else if (result.status!.toLowerCase() == "closed") {
        Fluttertoast.showToast(
          msg: "SDK Closed by User",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
        await Get.to(()=>Home());
        Fluttertoast.showToast(
            msg: "Transaction is ${result.status} and Amount is ${result.amount}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
        );
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // Customize Information
  Future<void> sslCommerzCustomizedCall() async {
    Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        ipn_url: "www.ipnurl.com",
        multi_card_name: "master",
        currency: SSLCurrencyType.USD,
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "shaki66e0157136d47",
        store_passwd: "shaki66e0157136d47@ssl",
        total_amount: 750,
        tran_id: "1234567891012",
      ),
    );

    sslcommerz.addShipmentInfoInitializer(
        sslcShipmentInfoInitializer: SSLCShipmentInfoInitializer(
            shipmentMethod: "yes",
            numOfItems: 5,
            shipmentDetails: ShipmentDetails(
                shipAddress1: "Ship address 1", shipCity: "Faridpur", shipCountry: "Bangladesh", shipName: "Ship name 1", shipPostCode: "7860")));

    sslcommerz.addCustomerInfoInitializer(
        customerInfoInitializer: SSLCCustomerInfoInitializer(
            customerState: "Chattogram",
            customerName: "Abu Sayed Chowdhury",
            customerEmail: "sayem227@gmail.com",
            customerAddress1: "Chattogram",
            customerCity: "Chattogram",
            customerPostCode: "200",
            customerCountry: "Bangladesh",
            customerPhone: "01761810533"));

    try {
      SSLCTransactionInfoModel result = await sslcommerz.payNow();
      debugPrint("=======================================================================");
      debugPrint("=======================================================================");
      debugPrint("=======  status}     ${result.status}    =========");
      debugPrint("=======  amount}     ${result.amount}    =========");
      debugPrint("=======  aPIConnect  ${result.aPIConnect}    =========");
      debugPrint("=======  bankTranId  ${result.bankTranId}    =========");
      debugPrint("=======  baseFair}   ${result.baseFair}    =========");
      debugPrint("=======  cardBrand}  ${result.cardBrand}    =========");
      debugPrint("=======  cardIssuer  ${result.cardIssuerCountry}    =========");
      debugPrint("=======  cardIssuer  ${result.cardIssuerCountryCode}    =========");
      debugPrint("=======  cardNo}     ${result.cardNo}    =========");
      debugPrint("=======  cardType}   ${result.cardType}    =========");
      debugPrint("=======  currencyAm  ${result.currencyAmount}    =========");
      debugPrint("=======  currencyRa  ${result.currencyRate}    =========");
      debugPrint("=======  currencyTy  ${result.currencyType}    =========");
      debugPrint("=======  gwVersion}  ${result.gwVersion}    =========");
      debugPrint("=======  riskLevel}  ${result.riskLevel}    =========");
      debugPrint("=======  riskTitle}  ${result.riskTitle}    =========");
      debugPrint("=======  sessionkey  ${result.sessionkey}    =========");
      debugPrint("=======  storeAmoun  ${result.storeAmount}    =========");
      debugPrint("=======  tranDate}   ${result.tranDate}    =========");
      debugPrint("=======  tranId}     ${result.tranId}    =========");
      debugPrint("=======  validatedO  ${result.validatedOn}    =========");
      debugPrint("=======  valueA}     ${result.valueA}    =========");
      debugPrint("=======  valueB}     ${result.valueB}    =========");
      debugPrint("=======  valueC}     ${result.valueC}    =========");
      debugPrint("=======  valueD}     ${result.valueD}    =========");
      debugPrint("=======================================================================");
      debugPrint("=======================================================================");

      if (result.status!.toLowerCase() == "failed") {
        Fluttertoast.showToast(
            msg: "Transaction is Failed....",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Fluttertoast.showToast(
          msg: "Transaction is ${result.status} and Amount is ${result.amount}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}