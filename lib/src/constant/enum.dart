import 'package:json_annotation/json_annotation.dart';

enum Gender {
  male,
  female,
  @JsonValue('personGender')
  unknown
} 