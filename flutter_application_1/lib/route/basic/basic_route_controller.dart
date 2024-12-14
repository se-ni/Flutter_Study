import 'package:flutter_application_1/route/basic/basic_route.dart';
import 'package:flutter_application_1/route/indexed/index_route.dart';
import 'package:flutter_application_1/route/indexed/index_route2.dart';
import 'package:get/get.dart';

class BasicRouteController extends GetxController {
  int currentIndex = 0;

  updateIndex(int index) {
    currentIndex = index;

    switch (currentIndex) {
      case 0:
        Get.to(BasicRoute());
      case 1:
        Get.to(IndexRoute());
      case 2:
        Get.to(IndexRoute2());
    }
    update();
  }
}
