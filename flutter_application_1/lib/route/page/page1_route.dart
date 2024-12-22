import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/page/controller/page1_route_controller.dart';
import 'package:get/get.dart';

class Page1Route extends StatelessWidget {
  const Page1Route({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Page1RouteController(),
        builder: (controller) {
          return Scaffold(
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('1'),
                ),
                PopupMenuButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // 모서리 반경 설정
                    // CircleBorder() : 원형
                    // StadiumBorder() : 타원형
                    // Border( : 직선 모서리 설정
                    //      top: BorderSide(width: 1, color: Colors.black),
                    //      bottom: BorderSide(width: 1, color: Colors.black),
                    //      left: BorderSide(width: 1, color: Colors.black),
                    //      right: BorderSide(width: 1, color: Colors.black),
                    // )
                  ),
                  itemBuilder: (BuildContext context) {
                    return const [
                      PopupMenuItem(
                        value: '1',
                        child: Center(child: Text('button 1')),
                      ),
                      PopupMenuItem(
                        value: '2',
                        child: Center(child: Text('button 2')),
                      ),
                    ];
                  },
                  onSelected: (value) {
                    controller.changeIndex(value);
                    if (value == '1') {
                      debugPrint('btn1 click!');
                    }
                  },
                  onCanceled: () => debugPrint('cancel'),
                  onOpened: () => debugPrint('open'),
                )
              ],
            ),
          );
        });
  }
}
