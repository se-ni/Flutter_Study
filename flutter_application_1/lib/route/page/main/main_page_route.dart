import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/page/main/main_page_route_controller.dart';
import 'package:flutter_application_1/route/page/page1_route.dart';
import 'package:flutter_application_1/route/page/page2_route.dart';
import 'package:get/get.dart';

class MainPageRoute extends StatelessWidget {
  const MainPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MainPageRouteController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: IndexedStack(
              index: controller.selectedIndex, // 현재 선택된 페이지 인덱스
              children: [
                const Page1Route(),
                Page2Route(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.selectedIndex,
              onTap: (index) => controller.setIndex(index),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_alarm_outlined), label: '1'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.accessibility), label: '2'),
              ]),
        );
      },
    );
  }
}
