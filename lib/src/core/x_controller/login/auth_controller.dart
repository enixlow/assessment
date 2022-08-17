import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofax_assessment/src/core/repository/auth_repository.dart';
import 'package:sofax_assessment/src/core/router/router.gr.dart';
import 'package:sofax_assessment/src/core/views/screens/profile/profile_screen.dart';
import 'package:sofax_assessment/src/core/x_controller/routes/routes_controller.dart';
import '../../../../src/core/model/user.dart';
import '../../../services/api/request/login_request.dart';
import '../../../constant/enum.dart';
import '../../model/last_login.dart';

class AuthController extends GetxController {
  final router = Get.find<RoutesController>().router;
  final authRepository = Get.find<AuthRepository>();

  //ui controller
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  //obs
  var user = Rxn<User>();
  User? get currentUser => user.value;

  void login() async {
    if (emailTextEditingController.text.isEmpty) {
      return;
    }
    try {
      final response = await authRepository.login(generateRequest());
      user.value = response;
      router.push(ProfileScreenRoute(
        payload: ProfileScreenPayload(
          user: response,
        ),
      ));
    } catch (e) {
      // handle error
    }
  }

  LoginRequest generateRequest() {
    final lastLogin = LastLogin(
      ip4: 'internetIP4',
      dateTime: 'dateTime|UNIX',
    );

    final user = User(
      id: 'personNickname',
      email: emailTextEditingController.text,
      gender: Gender.unknown,
      lastLogin: lastLogin,
    );

    return LoginRequest(
      token: 'NsYQS1Mmkj4wTpSr06Mguw',
      data: user,
    );
  }
}
