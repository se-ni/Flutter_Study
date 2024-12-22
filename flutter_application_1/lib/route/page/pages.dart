import 'package:flutter_application_1/route/page/main/main_page_route.dart';
import 'package:flutter_application_1/route/page/page1_route.dart';
import 'package:flutter_application_1/route/page/page2_route.dart';
import 'package:flutter_application_1/route/page/page3_route.dart';
import 'package:flutter_application_1/route/page/page4_route.dart';
import 'package:get/get.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(name: '/', page: () => const MainPageRoute()),
    GetPage(name: '/page1', page: () => const Page1Route()),
    GetPage(name: '/page2', page: () => const Page2Route()),
    GetPage(name: '/page3', page: () => const Page3Route()),
    GetPage(name: '/page4', page: () => const Page4Route()),
  ];
}
