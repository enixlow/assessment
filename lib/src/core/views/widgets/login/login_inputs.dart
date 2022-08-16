import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../x_controller/login/auth_controller.dart';

class LoginInputs extends GetView<AuthController> {
  LoginInputs({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: VStack(
          [
            TextFormField(
              controller: controller.emailTextEditingController,
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'Email Address',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                hintText: 'email',
              ),
            ),
            TextFormField(
              controller: controller.passwordTextEditingController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => controller.login(),
              child: 'Login'.text.make(),
            ),
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        ).objectCenter().pSymmetric(h: 24));
  }
}
