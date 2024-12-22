import 'package:get/get.dart';

class MainPageRouteController extends GetxController {
  int selectedIndex = 0; // 현재 선택된 페이지 인덱스

  void setIndex(int index) {
    selectedIndex = index;
    update();
  }
}
