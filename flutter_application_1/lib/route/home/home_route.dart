import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/home/home_route_controller.dart';
import 'package:flutter_application_1/route/index/index1_route.dart';
import 'package:flutter_application_1/route/index/index2_route.dart';
import 'package:flutter_application_1/route/index/index3_route.dart';
import 'package:get/get.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeRouteController(),
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.currentIndex,
            children: const [
              Index1Route(),
              Index2Route(),
              Index3Route(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: (index) => controller.changeIndex(index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: '1'),
              BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: '2'),
              BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: '3')
            ],
          ),
        );
      },
    );
  }
}
