import 'package:flutter_application_1/route/basic/basic_route.dart';
import 'package:flutter_application_1/route/index/index_route.dart';
import 'package:flutter_application_1/route/index/index_route2.dart';
import 'package:get/get.dart';

class IndexRouteController extends GetxController {
  int currentIndex = 0;
  updateIndex(int index) {
    currentIndex = index;

    switch (currentIndex) {
      case 0:
        Get.offAll(
          const BasicRoute(),
        );
      case 1:
        Get.offAll(
          const IndexRoute(),
        );
      case 2:
        Get.offAll(
          const IndexRoute2(),
        );
        update();
    }
  }
}
