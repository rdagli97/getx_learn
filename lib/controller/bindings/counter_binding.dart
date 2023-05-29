import 'package:get/get.dart';
import 'package:learning_getx/controller/data_controllers/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CounterController>(CounterController(), permanent: true);
  }
}
