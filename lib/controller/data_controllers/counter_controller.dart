import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/consts/colors.dart';

class CounterController extends GetxController {
  final RxInt _counter = RxInt(0);
  int get counter => _counter.value;

  void incrementCounter() {
    _counter.value++;
    update();
  }

  void decrementCounter() {
    if (_counter.value <= 0) {
      Get.showSnackbar(
        const GetSnackBar(
          message: "Counter can't be less than zero",
          icon: Icon(
            Icons.alarm,
            color: AllColors.red,
          ),
          barBlur: 2.0,
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      _counter.value--;
    }
    update();
  }
}
