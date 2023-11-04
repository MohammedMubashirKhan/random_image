import 'dart:developer';

import 'package:get/get.dart';
import 'package:random_image/app/modules/home/api/random_image.dart';
import 'package:random_image/app/modules/home/model/randomImageModel.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  Rxn<RandomImageModel> randomImageModel = Rxn<RandomImageModel>();

  @override
  void onInit() {
    getRandomImage();
    super.onInit();
  }

  final count = 0.obs;

  void increment() => count.value++;

  Future<void> getRandomImage() async {
    randomImageModel.value = await RandomImageApi().getRandomImage();
    log("${randomImageModel.value?.toJson()}", name: "randomImageModel.value");
  }
}
