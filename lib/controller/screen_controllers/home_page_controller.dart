import 'package:get/get.dart';
import 'package:learning_getx/controller/data_controllers/counter_controller.dart';

class HomePageController extends GetxController {
  final CounterController _counterController = Get.find();

  int get counter => _counterController.counter;

  void incrementCounter() {
    _counterController.incrementCounter();
  }

  void decrementCounter() {
    _counterController.decrementCounter();
  }
}
