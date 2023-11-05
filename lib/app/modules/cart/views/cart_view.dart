import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("cart View"),
            Obx(() => Text("${controller.cartImages.length}")),
            Obx(
              () {
                if (controller.cartImages.isEmpty) {
                  return const CircularProgressIndicator();
                }

                return Expanded(
                  child: ListView.separated(
                    itemCount: controller.cartImages.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                            controller.cartImages[index].message!),
                        title: Text(
                            "Price \$: ${controller.cartImages[index].price}"),
                        trailing: IconButton(
                          onPressed: () {
                            controller.addTocart(index,
                                !controller.cartImages[index].addedTocart!);
                          },
                          icon: const Icon(Icons.shopping_cart),
                        ),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
