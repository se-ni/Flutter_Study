import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/page/controller/page4_route_controller.dart';
import 'package:get/get.dart';

class Page4Route extends StatelessWidget {
  const Page4Route({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Page4RouteController(),
        builder: (context) {
          return Scaffold(
            body: Center(
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('back'),
              ),
            ),
          );
        });
  }
}
