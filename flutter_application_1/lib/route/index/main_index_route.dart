import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_index_rotue_controller.dart';
import 'package:flutter_application_1/route/basic/basic_route.dart';
import 'package:flutter_application_1/route/index/index_route.dart';
import 'package:flutter_application_1/route/index/index_route2.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class MainIndexRoute extends StatelessWidget {
  const MainIndexRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MainIndexRouteController(),
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.currentIndex,
            children: const [
              BasicRoute(),
              IndexRoute(),
              IndexRoute2(),
            ],
          ),
        );
      },
    );
  }
}
