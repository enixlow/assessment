import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofax_assessment/src/core/x_controller/base_controller/base_controller.dart';

import 'src/core/router/router.gr.dart';
import 'src/core/x_controller/base_controller/base_binding.dart';

void main() {
  Get.put(BaseController());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Assessment',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      initialBinding: BaseBinding(router: _appRouter),
      debugShowCheckedModeBanner: false,
    );
  }
}
