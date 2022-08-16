import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/profile/profile_screen.dart';
import '/src/core/x_controller/profile/profile_controller.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends GetView<ProfileController> {
  const Profile({
    Key? key,
    required this.payload,
  }) : super(key: key);
  final ProfileScreenPayload payload;

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        payload.user.email.text.bodyText1(context).make(),
        EnumToString.convertToString(payload.user.gender).text.make(),
        payload.user.id.text.make(),
        if (payload.user.lastLogin.dateTime != null)
          payload.user.lastLogin.dateTime!.text.make(),
        payload.user.lastLogin.ip4.text.make()
      ],
      alignment: MainAxisAlignment.center,
      crossAlignment: CrossAxisAlignment.center,
    ).objectCenter();
  }
}
