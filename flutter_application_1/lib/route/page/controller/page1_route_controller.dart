import 'package:flutter_application_1/route/page/page4_route.dart';
import 'package:get/get.dart';

class Page1RouteController extends GetxController {
  int selectedIndex = 0;

  void changeIndex(String menuitem) {
    switch (menuitem) {
      case '1':
        Get.toNamed('/page3'); // 이름으로 이동
        return;
      case '2':
        Get.to(const Page4Route());
        return;
      default:
        return;
    }
  }
}
