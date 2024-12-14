import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/indexed/index_route_controller2.dart';
import 'package:get/get.dart';

class IndexRoute2 extends StatelessWidget {
  const IndexRoute2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: IndexRoute2Controller(),
          builder: (controller) {
            return const Center(
              child: Text('1'),
            );
          }),
    );
  }
}
