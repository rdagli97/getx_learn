import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/consts/colors.dart';
import 'package:learning_getx/controller/screen_controllers/home_page_controller.dart';
import 'package:learning_getx/routes/routes.dart';
import 'package:learning_getx/utils/add_space.dart';
import 'package:learning_getx/utils/custom_icon_button.dart';
import 'package:learning_getx/utils/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController = Get.put(HomePageController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Counter text
            Obx(
              () => CustomText(
                text: "${homePageController.counter}",
                fontSize: 100,
                color: AllColors.orange,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // increment button
                CustomIconButton(
                  onTap: () => homePageController.incrementCounter(),
                  icon: const Icon(
                    Icons.add,
                    color: AllColors.white,
                  ),
                ),
                AddSpace().addHorizontalSpace(10),
                // decrement button
                CustomIconButton(
                  onTap: () => homePageController.decrementCounter(),
                  icon: const Icon(
                    Icons.remove,
                    color: AllColors.white,
                  ),
                ),
              ],
            ),

            // Go to next page
            CustomIconButton(
              onTap: () => Get.toNamed(RouteClass.secondPageRoute),
              icon: const Icon(
                Icons.arrow_forward_ios_sharp,
                color: AllColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
