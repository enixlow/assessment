// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../views/screens/login/login_screen.dart' as _i1;
import '../views/screens/profile/profile_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileScreenRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProfileScreen(key: args.key, payload: args.payload));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(LoginScreenRoute.name, path: '/'),
        _i3.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen')
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i3.PageRouteInfo<void> {
  const LoginScreenRoute() : super(LoginScreenRoute.name, path: '/');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.ProfileScreen]
class ProfileScreenRoute extends _i3.PageRouteInfo<ProfileScreenRouteArgs> {
  ProfileScreenRoute({_i4.Key? key, required _i2.ProfileScreenPayload payload})
      : super(ProfileScreenRoute.name,
            path: '/profile-screen',
            args: ProfileScreenRouteArgs(key: key, payload: payload));

  static const String name = 'ProfileScreenRoute';
}

class ProfileScreenRouteArgs {
  const ProfileScreenRouteArgs({this.key, required this.payload});

  final _i4.Key? key;

  final _i2.ProfileScreenPayload payload;

  @override
  String toString() {
    return 'ProfileScreenRouteArgs{key: $key, payload: $payload}';
  }
}
