import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/indexed/index_route_controller.dart';
import 'package:get/get.dart';

class IndexRoute extends StatelessWidget {
  const IndexRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: IndexRouteController(),
          builder: (controller) {
            return const Center(
              child: Text('1'),
            );
          }),
    );
  }
}
