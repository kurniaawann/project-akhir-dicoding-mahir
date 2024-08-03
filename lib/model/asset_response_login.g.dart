// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_response_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginImpl _$$LoginImplFromJson(Map<String, dynamic> json) => _$LoginImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      loginResult: LoginResult.fromJson(json['loginResult']),
    );

Map<String, dynamic> _$$LoginImplToJson(_$LoginImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'loginResult': instance.loginResult,
    };
