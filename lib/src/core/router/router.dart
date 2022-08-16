import 'package:auto_route/auto_route.dart';
import '../../../src/core/views/screens/login/login_screen.dart';
import '../../../src/core/views/screens/profile/profile_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
    AutoRoute(page: ProfileScreen),
  ],
)
class $AppRouter {}