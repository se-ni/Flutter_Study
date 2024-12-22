import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/index/index1_route_controller.dart';
import 'package:get/get.dart';

class Index1Route extends StatelessWidget {
  const Index1Route({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Index1RouteController(),
        builder: (controller) {
          return Center(
            child: Text(controller.text),
          );
        });
  }
}
