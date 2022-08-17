import 'package:get/get.dart';
import 'package:sofax_assessment/src/core/x_controller/base_controller/base_controller.dart';
import '../../../services/api/client/auth_api.dart';
import '../../repository/auth_repository.dart';
import '../../router/router.gr.dart';
import '../login/auth_controller.dart';
import '../routes/routes_controller.dart';

const baseUrl = "https://app.fakejson.com";

class BaseBinding implements Bindings {
  AppRouter router;
  BaseBinding({required this.router});
  @override
  void dependencies() {
    Get.put(
      RoutesController(router: router),
      permanent: true,
    );
    Get.put(AuthRepository(
        authAPI: AuthAPI(
      BaseController().dio,
      baseUrl: baseUrl,
    )));
    Get.put(AuthController());
  }
}
