import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:random_image/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.CART);
            },
            icon: const Icon(Icons.shopping_cart_checkout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                if (controller.randomImageModel.value?.message == null) {
                  return const CircularProgressIndicator();
                }
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: Get.height * 0.6,
                  ),
                  child: Image.network(
                    controller.randomImageModel.value!.message!,
                    errorBuilder: (context, error, stackTrace) {
                      return RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: "The Url does not exist !!!\n",
                              style: TextStyle(color: Colors.red),
                            ),
                            TextSpan(
                              text:
                                  "${controller.randomImageModel.value!.message}",
                              style: const TextStyle(color: Colors.black),
                            ),
                            const TextSpan(
                              text: "\nPlease Try Again !!!\n",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Obx(
              () => ListTile(
                leading: IconButton(
                  onPressed: () {
                    Get.showSnackbar(
                      const GetSnackBar(
                        title: "Added to cart",
                        message: "Success !!!",
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart),
                ),
                title: const Text("Price"),
                trailing:
                    Text("\$: ${controller.randomImageModel.value?.price}"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.getRandomImage,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
