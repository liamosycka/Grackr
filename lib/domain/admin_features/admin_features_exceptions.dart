import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_features_exceptions.freezed.dart';

@freezed
abstract class AdminFeaturesException
    with _$AdminFeaturesException
    implements Exception {
  const factory AdminFeaturesException.notAuthenticated() = _NotAuthenticated;

  const factory AdminFeaturesException.notEnoughPermissions() =
      _NotEnoughPermissions;

  const factory AdminFeaturesException.operationFailed(
      {@required String failedValue}) = _OperationFailed;
}
