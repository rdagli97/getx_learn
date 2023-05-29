import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/consts/colors.dart';
import 'package:learning_getx/controller/screen_controllers/second_page_controller.dart';
import 'package:learning_getx/routes/routes.dart';
import 'package:learning_getx/utils/add_space.dart';
import 'package:learning_getx/utils/custom_icon_button.dart';
import 'package:learning_getx/utils/custom_text.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SecondPageController secondPageController =
        Get.put(SecondPageController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // current counter
            Obx(
              () {
                return CustomText(
                  text: "${secondPageController.counter}",
                  fontSize: 80,
                  color: AllColors.orange,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // increment button
                CustomIconButton(
                  onTap: () => secondPageController.incrementCounter(),
                  icon: const Icon(
                    Icons.add,
                    color: AllColors.white,
                  ),
                ),
                AddSpace().addHorizontalSpace(10),
                // decrement button
                CustomIconButton(
                  onTap: () => secondPageController.decrementCounter(),
                  icon: const Icon(
                    Icons.remove,
                    color: AllColors.white,
                  ),
                ),
              ],
            ),
            // Go to next page
            CustomIconButton(
              onTap: () => Get.toNamed(RouteClass.homePageRoute),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AllColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
