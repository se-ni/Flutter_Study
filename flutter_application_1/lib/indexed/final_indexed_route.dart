import 'package:flutter/material.dart';
import 'package:flutter_application_1/indexed/final_indexed_route_controller.dart';
import 'package:get/get.dart';

class FinalIndexedRoute extends StatelessWidget {
  const FinalIndexedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: FinalIndexedeRouteController(),
        builder: (controller) {
          return Scaffold(
            body: IndexedStack(
              index: controller.currentIndex,
              children: const [
                Center(
                  child: Text('1'),
                ),
                Center(
                  child: Text('2'),
                ),
                Center(
                  child: Text('3'),
                ),
              ],
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
