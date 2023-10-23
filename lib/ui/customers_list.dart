import 'package:customer_management/controllar/create_customer_controller.dart';
import 'package:customer_management/controllar/data_controler.dart';
import 'package:customer_management/model/customers_list_model.dart';
import 'package:customer_management/ui/details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomersList extends StatefulWidget {
  const CustomersList({super.key});

  @override
  State<CustomersList> createState() => _CustomersListState();
}

class _CustomersListState extends State<CustomersList> {
  final DataController dataController = Get.put(DataController());
  final CustomerController customerController = Get.put(CustomerController());


  @override
  void initState() {
    print('initstate');
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   dataController.getData();
    // });
    dataController.getData();
    super.initState();
    // print(dataController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer List'),
      ),
      body:
      SingleChildScrollView(
        child:
        Obx(() => dataController.isLoading.value ? Center(child: CircularProgressIndicator(),) : SizedBox(
          height: 600,
          child: ListView.builder(
            // scrollDirection: Axis.vertical,
            itemCount: dataController.customersModel.customers?.length,
            itemBuilder: ( context,  index) {
              final data = dataController.customersModel.customers![index];
              print('pasing data : ${data}');
              print(dataController.customersModel.customers?.length);
              return  InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage())),
                child: Card(
                  child: ListTile(
                    leading: Text("${dataController.customersModel.customers![index].id ?? ''}"),
                    title: Text(dataController.customersModel.customers![index].customerName ?? ''),
                    trailing: Text(dataController.customersModel.customers![index].customerMobileNo ?? ''),
                    subtitle: Row(
                      children: [
                        Text(dataController.customersModel.customers![index].customerAddress ?? ''),
                        SizedBox(width: 5,),
                        Text(dataController.customersModel.customers![index].referredPersonAddress ?? ''),
                      ],
                    ),

                  ),
                ),
              );
            },
          ),
        ))
      ),
      floatingActionButton: GetBuilder<CustomerController>(
        init: customerController,
        builder: (customerController) {
          return FloatingActionButton(
            onPressed: () => customerController.createCustomer(),
            child: Icon(Icons.add),
          );
        }
      ),
    );
  }
}
