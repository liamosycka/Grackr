import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_exceptions.freezed.dart';

@freezed
abstract class AuthException with _$AuthException implements Exception {
  const factory AuthException.notAuthenticated() = _NotAuthenticated;

  const factory AuthException.noCachedUser() = _NoCachedUser;
}
