import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/custom_scaffold_controller.dart';
import 'package:get/get.dart';

class CustomScaffold extends StatelessWidget {
  Widget body;
  CustomScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomScaffoldController(),
        builder: (controller) {
          return Scaffold(
            body: body,
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
