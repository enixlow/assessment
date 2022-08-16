import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sofax_assessment/src/core/model/last_login.dart';

import '../../constant/enum.dart';

part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@CopyWith()
class User extends Equatable {
  final String id;
  final String email;
  final Gender gender;
  final LastLogin lastLogin;

  const User({
    required this.id,
    required this.email,
    required this.gender,
    required this.lastLogin
  });

  @override
  List<Object?> get props => [
        id,
        email,
        gender,
      ];


  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}