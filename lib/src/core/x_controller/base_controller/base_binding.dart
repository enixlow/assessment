import 'package:get/get.dart';
import '../../router/router.gr.dart';
import '../login/auth_controller.dart';
import '../routes/routes_controller.dart';

class BaseBinding implements Bindings {
  AppRouter router;
  BaseBinding({required this.router});
  @override
  void dependencies() {
    Get.put(
      RoutesController(router: router),
      permanent: true,
    );
    Get.put(AuthController());
  }
}
