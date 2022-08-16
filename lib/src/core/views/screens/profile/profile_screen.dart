import 'package:flutter/material.dart';
import 'package:sofax_assessment/src/core/model/user.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/profile/profile.dart';

class ProfileScreenPayload {
  final User user;

  ProfileScreenPayload({required this.user});
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, required this.payload}) : super(key: key);

  final ProfileScreenPayload payload;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: 'Profile'.text.make()),
        body: Profile(payload: widget.payload));
  }
}
