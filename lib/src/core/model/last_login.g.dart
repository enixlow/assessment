// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastLogin _$LastLoginFromJson(Map<String, dynamic> json) => LastLogin(
      dateTime: json['date_time'] as String?,
      ip4: json['ip4'] as String,
    );

Map<String, dynamic> _$LastLoginToJson(LastLogin instance) => <String, dynamic>{
      'date_time': instance.dateTime,
      'ip4': instance.ip4,
    };
