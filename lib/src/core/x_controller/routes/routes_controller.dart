import 'package:get/get.dart';

import '../../router/router.gr.dart';

class RoutesController extends GetxController {
  AppRouter router;
  RoutesController({required this.router});

  void toNamed(String route) {
    router.pushNamed(route);
  }
}
