import 'dart:math';

class RandomImageModel {
  String? message;
  String? status;
  int? price;

  RandomImageModel({this.message, this.status});

  RandomImageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    price = Random().nextInt(2000) + 8000;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    data['price'] = price;
    return data;
  }
}
