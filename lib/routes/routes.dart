import 'package:get/get.dart';
import 'package:learning_getx/pages/home_page.dart';
import 'package:learning_getx/pages/second_page.dart';

class RouteClass {
  RouteClass._();
  static String homePageRoute = "/home_page";
  static String secondPageRoute = "/second_page";

  static List<GetPage> routes = [
    GetPage(
      name: homePageRoute,
      page: () => const HomePage(),
    ),
    GetPage(
      name: secondPageRoute,
      page: () => const SecondPage(),
    ),
  ];
}
