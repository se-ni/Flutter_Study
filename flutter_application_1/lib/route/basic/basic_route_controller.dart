import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/basic/basic_route.dart';
import 'package:flutter_application_1/route/index/index_route.dart';
import 'package:flutter_application_1/route/index/index_route2.dart';
import 'package:get/get.dart';

class BasicRouteController extends GetxController {
  int currentIndex = 0;

  int click = 0;

  bool isLoading = true;

  @override
  void onInit() {
    delay();
    super.onInit();
  }

  updateIndex(int index) {
    currentIndex = index;

    switch (currentIndex) {
      case 0:
        Get.to(const BasicRoute());
      case 1:
        Get.to(const IndexRoute());
      case 2:
        Get.to(const IndexRoute2());
    }
    update();
  }

  addNum() {
    click++;
    update();
  }

  delay() {
    int total = 5;
    isLoading = true;
    update();

    // 5초 대기 후, 실행
    List<Future> tasks = [];
    for (int i = 0; i < total; i++) {
      tasks.add(Future.delayed(Duration(seconds: i), () {
        debugPrint('${(i + 1).toString()}초');
      }));
    }

    // 모든 작업이 완료되면 로딩 종료
    Future.wait(tasks).then((_) {
      isLoading = false; // 로딩 종료
      update();
    });
  }
}
