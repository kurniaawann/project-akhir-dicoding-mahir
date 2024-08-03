import 'package:freezed_annotation/freezed_annotation.dart';
import './model_login.dart';
part 'asset_response_login.g.dart';
part 'asset_response_login.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({
    required bool error,
    required String message,
    required LoginResult loginResult,
  }) = _Login;

  factory Login.fromJson(json) => _$LoginFromJson(json);
}
