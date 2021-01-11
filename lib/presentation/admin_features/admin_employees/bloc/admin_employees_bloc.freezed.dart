// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'admin_employees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AdminEmployeesStateTearOff {
  const _$AdminEmployeesStateTearOff();

// ignore: unused_element
  _AdminEmployeesState call(
      {@required
          bool isLoadingPreviews,
      @required
          Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
              failureOrPreviews}) {
    return _AdminEmployeesState(
      isLoadingPreviews: isLoadingPreviews,
      failureOrPreviews: failureOrPreviews,
    );
  }
}

// ignore: unused_element
const $AdminEmployeesState = _$AdminEmployeesStateTearOff();

mixin _$AdminEmployeesState {
  bool get isLoadingPreviews;
  Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
      get failureOrPreviews;

  $AdminEmployeesStateCopyWith<AdminEmployeesState> get copyWith;
}

abstract class $AdminEmployeesStateCopyWith<$Res> {
  factory $AdminEmployeesStateCopyWith(
          AdminEmployeesState value, $Res Function(AdminEmployeesState) then) =
      _$AdminEmployeesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoadingPreviews,
      Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
          failureOrPreviews});
}

class _$AdminEmployeesStateCopyWithImpl<$Res>
    implements $AdminEmployeesStateCopyWith<$Res> {
  _$AdminEmployeesStateCopyWithImpl(this._value, this._then);

  final AdminEmployeesState _value;
  // ignore: unused_field
  final $Res Function(AdminEmployeesState) _then;

  @override
  $Res call({
    Object isLoadingPreviews = freezed,
    Object failureOrPreviews = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingPreviews: isLoadingPreviews == freezed
          ? _value.isLoadingPreviews
          : isLoadingPreviews as bool,
      failureOrPreviews: failureOrPreviews == freezed
          ? _value.failureOrPreviews
          : failureOrPreviews
              as Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>,
    ));
  }
}

abstract class _$AdminEmployeesStateCopyWith<$Res>
    implements $AdminEmployeesStateCopyWith<$Res> {
  factory _$AdminEmployeesStateCopyWith(_AdminEmployeesState value,
          $Res Function(_AdminEmployeesState) then) =
      __$AdminEmployeesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoadingPreviews,
      Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
          failureOrPreviews});
}

class __$AdminEmployeesStateCopyWithImpl<$Res>
    extends _$AdminEmployeesStateCopyWithImpl<$Res>
    implements _$AdminEmployeesStateCopyWith<$Res> {
  __$AdminEmployeesStateCopyWithImpl(
      _AdminEmployeesState _value, $Res Function(_AdminEmployeesState) _then)
      : super(_value, (v) => _then(v as _AdminEmployeesState));

  @override
  _AdminEmployeesState get _value => super._value as _AdminEmployeesState;

  @override
  $Res call({
    Object isLoadingPreviews = freezed,
    Object failureOrPreviews = freezed,
  }) {
    return _then(_AdminEmployeesState(
      isLoadingPreviews: isLoadingPreviews == freezed
          ? _value.isLoadingPreviews
          : isLoadingPreviews as bool,
      failureOrPreviews: failureOrPreviews == freezed
          ? _value.failureOrPreviews
          : failureOrPreviews
              as Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>,
    ));
  }
}

class _$_AdminEmployeesState implements _AdminEmployeesState {
  const _$_AdminEmployeesState(
      {@required this.isLoadingPreviews, @required this.failureOrPreviews})
      : assert(isLoadingPreviews != null),
        assert(failureOrPreviews != null);

  @override
  final bool isLoadingPreviews;
  @override
  final Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
      failureOrPreviews;

  @override
  String toString() {
    return 'AdminEmployeesState(isLoadingPreviews: $isLoadingPreviews, failureOrPreviews: $failureOrPreviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminEmployeesState &&
            (identical(other.isLoadingPreviews, isLoadingPreviews) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingPreviews, isLoadingPreviews)) &&
            (identical(other.failureOrPreviews, failureOrPreviews) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPreviews, failureOrPreviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoadingPreviews) ^
      const DeepCollectionEquality().hash(failureOrPreviews);

  @override
  _$AdminEmployeesStateCopyWith<_AdminEmployeesState> get copyWith =>
      __$AdminEmployeesStateCopyWithImpl<_AdminEmployeesState>(
          this, _$identity);
}

abstract class _AdminEmployeesState implements AdminEmployeesState {
  const factory _AdminEmployeesState(
      {@required
          bool isLoadingPreviews,
      @required
          Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
              failureOrPreviews}) = _$_AdminEmployeesState;

  @override
  bool get isLoadingPreviews;
  @override
  Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
      get failureOrPreviews;
  @override
  _$AdminEmployeesStateCopyWith<_AdminEmployeesState> get copyWith;
}

class _$AdminEmployeesEventTearOff {
  const _$AdminEmployeesEventTearOff();

// ignore: unused_element
  GetPreviews getPreviews() {
    return const GetPreviews();
  }
}

// ignore: unused_element
const $AdminEmployeesEvent = _$AdminEmployeesEventTearOff();

mixin _$AdminEmployeesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPreviews(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPreviews(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPreviews(GetPreviews value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPreviews(GetPreviews value),
    @required Result orElse(),
  });
}

abstract class $AdminEmployeesEventCopyWith<$Res> {
  factory $AdminEmployeesEventCopyWith(
          AdminEmployeesEvent value, $Res Function(AdminEmployeesEvent) then) =
      _$AdminEmployeesEventCopyWithImpl<$Res>;
}

class _$AdminEmployeesEventCopyWithImpl<$Res>
    implements $AdminEmployeesEventCopyWith<$Res> {
  _$AdminEmployeesEventCopyWithImpl(this._value, this._then);

  final AdminEmployeesEvent _value;
  // ignore: unused_field
  final $Res Function(AdminEmployeesEvent) _then;
}

abstract class $GetPreviewsCopyWith<$Res> {
  factory $GetPreviewsCopyWith(
          GetPreviews value, $Res Function(GetPreviews) then) =
      _$GetPreviewsCopyWithImpl<$Res>;
}

class _$GetPreviewsCopyWithImpl<$Res>
    extends _$AdminEmployeesEventCopyWithImpl<$Res>
    implements $GetPreviewsCopyWith<$Res> {
  _$GetPreviewsCopyWithImpl(
      GetPreviews _value, $Res Function(GetPreviews) _then)
      : super(_value, (v) => _then(v as GetPreviews));

  @override
  GetPreviews get _value => super._value as GetPreviews;
}

class _$GetPreviews implements GetPreviews {
  const _$GetPreviews();

  @override
  String toString() {
    return 'AdminEmployeesEvent.getPreviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPreviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPreviews(),
  }) {
    assert(getPreviews != null);
    return getPreviews();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPreviews(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPreviews != null) {
      return getPreviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPreviews(GetPreviews value),
  }) {
    assert(getPreviews != null);
    return getPreviews(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPreviews(GetPreviews value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPreviews != null) {
      return getPreviews(this);
    }
    return orElse();
  }
}

abstract class GetPreviews implements AdminEmployeesEvent {
  const factory GetPreviews() = _$GetPreviews;
}
