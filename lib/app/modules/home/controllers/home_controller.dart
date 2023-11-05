import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:random_image/app/modules/home/api/random_image.dart';
import 'package:random_image/app/modules/home/model/random_image_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  Rxn<RandomImageModel> randomImageModel = Rxn<RandomImageModel>();
  late Isar isar;
  @override
  void onInit() {
    openIsarDataBase();
    getRandomImage();
    super.onInit();
  }

  openIsarDataBase() async {
    var dir = await getApplicationSupportDirectory();
    isar = await Isar.open([RandomImageModelSchema], directory: dir.path);
  }

  Future<void> getRandomImage() async {
    randomImageModel.value = await RandomImageApi().getRandomImage();

    if (randomImageModel.value != null) {
      randomImageModel.value?.id =
          await saveToDataBase(randomImageModel.value!);
    }
  }

  Future<void> addTocart(bool addTocart) async {
    final randomImageModels = isar.randomImageModels;

    // change the Obx variable
    randomImageModel.value?.addedTocart = addTocart;
    randomImageModel.refresh();

    // write  tranaction in isar DB
    await isar.writeTxn(() async {
      await randomImageModels.put(randomImageModel.value!);
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

  /// Save the image model into database collection and returns it's ID
  Future<int> saveToDataBase(RandomImageModel randomImageModel) async {
    final randomImageModels = isar.randomImageModels;
    int i = -1;

    // write  tranaction in isar DB
    await isar.writeTxn(() async {
      i = await randomImageModels.put(randomImageModel);
    });

    return i;
  }
}
