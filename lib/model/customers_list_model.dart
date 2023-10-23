class CustomersModel {
  List<Customers>? customers;

  CustomersModel({ this.customers});

  CustomersModel.fromJson(Map<String, dynamic> json) {
    if (json['customers'] != null) {
      customers = <Customers>[];
      json['customers'].forEach((v) {
        customers!.add(new Customers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customers != null) {
      data['customers'] = this.customers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Customers {
  int? id;
  String? customerName;
  String? customerImage;
  String? customerMobileNo;
  String? customerAddress;
  String? arrearsLimit;
  String? arrearPaymentTime;
  String? referredPersonName;
  String? referredPersonMobileNo;
  String? referredPersonAddress;
  String? createdAt;
  String? updatedAt;

  Customers(
      {this.id,
        this.customerName,
        this.customerImage,
        this.customerMobileNo,
        this.customerAddress,
        this.arrearsLimit,
        this.arrearPaymentTime,
        this.referredPersonName,
        this.referredPersonMobileNo,
        this.referredPersonAddress,
        this.createdAt,
        this.updatedAt});

  Customers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerName = json['customer_name'];
    customerImage = json['customer_image'];
    customerMobileNo = json['customer_mobile_no'];
    customerAddress = json['customer_address'];
    arrearsLimit = json['arrears_limit'];
    arrearPaymentTime = json['arrear_payment_time'];
    referredPersonName = json['referred_person_name'];
    referredPersonMobileNo = json['referred_person_mobile_no'];
    referredPersonAddress = json['referred_person_address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_name'] = this.customerName;
    data['customer_image'] = this.customerImage;
    data['customer_mobile_no'] = this.customerMobileNo;
    data['customer_address'] = this.customerAddress;
    data['arrears_limit'] = this.arrearsLimit;
    data['arrear_payment_time'] = this.arrearPaymentTime;
    data['referred_person_name'] = this.referredPersonName;
    data['referred_person_mobile_no'] = this.referredPersonMobileNo;
    data['referred_person_address'] = this.referredPersonAddress;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
