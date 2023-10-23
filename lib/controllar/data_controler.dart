import 'dart:convert';

import 'package:get/get.dart';

import '../model/customers_list_model.dart';
import 'package:http/http.dart' as http;

class DataController extends GetxController{
  CustomersModel customersModel = CustomersModel();
  var isLoading = false.obs;

  // @override
  // Future<void> onInit() async {
  //   super.onInit();
  //   getData();
  // }

  Future <CustomersModel?> getData() async{
    try{
      isLoading(true);
      Uri url = Uri.parse('http://mudimanager.com/api/customersList');
      final response = await http.get(url,headers: {
        "Content-Type": "application/json"
      });
      if(response.statusCode == 200){
        final data = json.decode(response.body);
        update();
        print(data);
        print("data si : ${response.body}");
        return customersModel = CustomersModel.fromJson(data);
      }else{
        print('error');
        print(response.statusCode);
      }
    }catch(e){
      print(e.toString());
      rethrow;
    }finally{
      isLoading(false);
    }
    return null;
  }
}