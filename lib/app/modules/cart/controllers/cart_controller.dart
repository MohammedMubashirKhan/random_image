import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:random_image/app/modules/home/controllers/home_controller.dart';
import 'package:random_image/app/modules/home/model/random_image_model.dart';

class CartController extends GetxController {
  //TODO: Implement HomeController

  RxList<RandomImageModel> cartImages = <RandomImageModel>[].obs;
  @override
  void onInit() {
    readRandomImageFromIsar();
    super.onInit();
  }

  Future<void> readRandomImageFromIsar() async {
    HomeController homeController = Get.find<HomeController>();
    var isar = homeController.isar;

    var randomImageModels = isar.randomImageModels;
    cartImages.value =
        await randomImageModels.where().addedTocartEqualTo(true).findAll();
  }

  Future<void> addTocart(int index, bool addTocart) async {
    HomeController homeController = Get.find<HomeController>();
    var isar = homeController.isar;
    final randomImageModels = isar.randomImageModels;

    cartImages[index].addedTocart = addTocart;

    // write  tranaction in isar DB
    await isar.writeTxn(() async {
      await randomImageModels.put(cartImages[index]);
      cartImages.value =
          await randomImageModels.where().addedTocartEqualTo(true).findAll();
    });

    Get.showSnackbar(
      const GetSnackBar(
        title: "Removed from cart",
        message: "Success !!!",
        duration: Duration(seconds: 1),
      ),
    );
  }
}
