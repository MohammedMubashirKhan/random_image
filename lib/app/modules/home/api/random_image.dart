import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:random_image/app/data/urls.dart';
import 'package:random_image/app/modules/home/model/random_image_model.dart';

class RandomImageApi {
  Future<RandomImageModel?> getRandomImage() async {
    RandomImageModel? randomImageModel;
    Uri url = Uri.parse(random_image);

    try {
      var responce = await http.get(url);
      randomImageModel = RandomImageModel.fromJson(jsonDecode(responce.body));
      log("${randomImageModel.toJson()}", name: random_image);
    } on Exception catch (e) {
      log("$e", name: random_image);
    }

    return randomImageModel;
  }
}
