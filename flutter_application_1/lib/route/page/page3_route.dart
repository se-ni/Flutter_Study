import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/page/controller/page3_route_controller.dart';
import 'package:get/get.dart';

class Page3Route extends StatelessWidget {
  const Page3Route({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Page3RouteController(),
        builder: (context) {
          return Scaffold(
            body: Center(
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('back'),
              ),
            ),
          );
        });
  }
}
