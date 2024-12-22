import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/page/main/main_page_route_controller.dart';
import 'package:get/get.dart';

class Page2Route extends StatelessWidget {
  const Page2Route({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text('2'),
        ),
        ElevatedButton(
          onPressed: () {
            final controller = Get.find<MainPageRouteController>();
            controller.setIndex(0); // 인덱스를 0으로 설정하여, custom으로 페이지 전환시키기
          },
          child: const Text('back'),
        )
      ],
    );
  }
}
