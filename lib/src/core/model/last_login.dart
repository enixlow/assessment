import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'last_login.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@CopyWith()
class LastLogin {
  LastLogin({
    this.dateTime,
    required this.ip4,
  });

  final String? dateTime;
  final String ip4;

  factory LastLogin.fromJson(Map<String, dynamic> json) =>
      _$LastLoginFromJson(json);
  Map<String, dynamic> toJson() => _$LastLoginToJson(this);
}
