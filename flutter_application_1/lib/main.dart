import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/index/home/home_route.dart';
// import 'package:flutter_application_1/route/page/main/main_page_route.dart';
import 'package:flutter_application_1/route/sample/sample.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:
          //HomeRoute(),
          // MainPageRoute(),
          BottomNavigationBarExample(),
    );
  }
}
