import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:random_image/app/modules/home/controllers/home_controller.dart';
import 'package:random_image/app/modules/home/model/random_image_model.dart';

class HistoryController extends GetxController {
  //TODO: Implement HomeController

  RxList<RandomImageModel> historyImages = <RandomImageModel>[].obs;
  @override
  void onInit() {
    readRandomImageFromIsar();
    super.onInit();
  }

  Future<void> readRandomImageFromIsar() async {
    HomeController homeController = Get.find<HomeController>();
    var isar = homeController.isar;

    var randomImageModels = isar.randomImageModels;
    historyImages.value = await randomImageModels.where().findAll();
  }

  Future<void> addTocart(int index, bool addTocart) async {
    HomeController homeController = Get.find<HomeController>();
    var isar = homeController.isar;
    final randomImageModels = isar.randomImageModels;

    historyImages[index].addedTocart = addTocart;
    historyImages.refresh();

    // write  tranaction in isar DB
    await isar.writeTxn(() async {
      await randomImageModels.put(historyImages[index]);
      // historyImages.value = await randomImageModels.where().findAll();
    });

    if (addTocart) {
      Get.showSnackbar(
        const GetSnackBar(
          title: "Added to cart",
          message: "Success !!!",
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      Get.showSnackbar(
        const GetSnackBar(
          title: "Removed from cart",
          message: "Success !!!",
          duration: Duration(seconds: 1),
        ),
      );
    }
  }
}
