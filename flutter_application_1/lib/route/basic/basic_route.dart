import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/basic/basic_route_controller.dart';
import 'package:get/get.dart';

class BasicRoute extends StatelessWidget {
  const BasicRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: BasicRouteController(),
        builder: (controller) {
          return Scaffold(
            body: const Center(
              child: Text('basic'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              onTap: (index) {
                controller.updateIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.circle),
                  label: '0',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.upcoming),
                  label: '1',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm),
                  label: '2',
                ),
              ],
            ),
          );
        });
  }
}
