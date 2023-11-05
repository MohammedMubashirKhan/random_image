import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("History"),
        actions: [
          IconButton(
              onPressed: controller.clearDatabasee,
              icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("History View"),
            Obx(() => Text("${controller.historyImages.length}")),
            Obx(
              () {
                if (controller.historyImages.isEmpty) {
                  return const CircularProgressIndicator();
                }

                return Expanded(
                  child: ListView.separated(
                    itemCount: controller.historyImages.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                            controller.historyImages[index].message!),
                        title: Text(
                            "Price \$: ${controller.historyImages[index].price}"),
                        trailing: Obx(
                          () => IconButton(
                            onPressed: () {
                              controller.addTocart(
                                  index,
                                  !controller
                                      .historyImages[index].addedTocart!);
                            },
                            icon: controller.historyImages[index].addedTocart!
                                ? const Icon(Icons.shopping_cart)
                                : const Icon(Icons.shopping_cart_outlined),
                          ),
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
