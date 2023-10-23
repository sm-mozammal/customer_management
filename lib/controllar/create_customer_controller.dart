
import 'dart:convert';
import 'package:customer_management/model/customers_list_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CustomerController extends GetxController{
  CustomersModel customersModel = CustomersModel();

  Future<void> createCustomer() async{
    try{
      Uri url = Uri.parse('http://mudimanager.com/api/supplierCreate');
      Map data = {
        "key" : "2",
        "customer_name": "MR x",
        "customer_image": "1696759870.jpg",
        "customer_mobile_no": "01899229922",
        "customer_address": "jjj",
        "arrears_limit": "dfdf",
        "arrear_payment_time": "hhcv",
        "referred_person_name": "hjjcf",
        "referred_person_mobile_no": "ddxced",
        "referred_person_address": "wdthg",
      };
      var body = jsonEncode(data);
      final response = await http.post(url,headers: {
        "Content-Type": "application/json"
      },body: body);
      update();
      if(response.statusCode == 200){
        print('successfully create a customer');
      }else{
        print(response.body);
      }
    }catch(e){
      print(e.toString());
      rethrow;
    }
    // return null;
  }
}