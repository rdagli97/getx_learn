import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/controller/bindings/startup_bindings.dart';
import 'package:learning_getx/routes/routes.dart';

void main() {
  runApp(const MyApp());
  StartupBinding().dependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: RouteClass.homePageRoute,
      getPages: RouteClass.routes,
    );
  }
}
