import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sofax_assessment/src/core/model/user.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest extends Equatable {
  const LoginRequest({
    required this.token,
    required this.data,
  });

  final String token;
  final User data;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  List<Object?> get props => [
        token,
        data,
      ];
}
