import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_login.g.dart';
part 'model_login.freezed.dart';

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult({
    required String userId,
    required String name,
    required String token,
  }) = _LoginResult;
  factory LoginResult.fromJson(json) => _$LoginResultFromJson(json);
}
