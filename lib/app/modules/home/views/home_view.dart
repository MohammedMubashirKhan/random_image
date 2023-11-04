import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:random_image/app/data/urls.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Home"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
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
