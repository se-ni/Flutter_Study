import 'package:get/get.dart';

class Index1RouteController extends GetxController {
  String text = 'loading';
  @override
  void onInit() {
    calcdelay();
    super.onInit();
  }

  Future calcdelay() {
    return Future.delayed(const Duration(seconds: 2))
        .then(
          (_) => text = '1',
        )
        .then((_) => update());
  }
}
