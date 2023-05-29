import 'package:get/get.dart';
import 'package:learning_getx/controller/bindings/counter_binding.dart';

class StartupBinding extends Bindings {
  @override
  void dependencies() {
    CounterBinding().dependencies();
  }
}
