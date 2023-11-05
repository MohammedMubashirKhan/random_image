import 'dart:math';

import 'package:isar/isar.dart';

part 'random_image_model.g.dart';

@collection
class RandomImageModel {
  Id id = Isar.autoIncrement;
  @Index(unique: true)
  String? message;
  String? status;
  int? price;
  @Index()
  bool? addedTocart;

  RandomImageModel({this.message, this.status, this.addedTocart = false});

  RandomImageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    price = Random().nextInt(8000) + 2000;
    addedTocart = false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['message'] = message;
    data['status'] = status;
    data['price'] = price;
    data['addedTocart'] = addedTocart;
    return data;
  }
}
