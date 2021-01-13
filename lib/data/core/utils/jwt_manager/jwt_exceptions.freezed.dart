// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'jwt_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$JWTExceptionTearOff {
  const _$JWTExceptionTearOff();

// ignore: unused_element
  _Internal internal(String responseBody) {
    return _Internal(
      responseBody,
    );
  }

// ignore: unused_element
  _HttpService httpService(String responseBody) {
    return _HttpService(
      responseBody,
    );
  }

// ignore: unused_element
  _UnexpectedStatus unexpectedStatus(String responseBody) {
    return _UnexpectedStatus(
      responseBody,
    );
  }

// ignore: unused_element
  _NotFound notFound(String responseBody) {
    return _NotFound(
      responseBody,
    );
  }

// ignore: unused_element
  _NotAuthenticated notAuthenticated(String responseBody) {
    return _NotAuthenticated(
      responseBody,
    );
  }

// ignore: unused_element
  _Forbiddden forbidden(String responseBody) {
    return _Forbiddden(
      responseBody,
    );
  }

// ignore: unused_element
  _InvalidFormat invalidFormat(String responseBody) {
    return _InvalidFormat(
      responseBody,
    );
  }
}

// ignore: unused_element
const $JWTException = _$JWTExceptionTearOff();

mixin _$JWTException {
  String get responseBody;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  });

  $JWTExceptionCopyWith<JWTException> get copyWith;
}

abstract class $JWTExceptionCopyWith<$Res> {
  factory $JWTExceptionCopyWith(
          JWTException value, $Res Function(JWTException) then) =
      _$JWTExceptionCopyWithImpl<$Res>;
  $Res call({String responseBody});
}

class _$JWTExceptionCopyWithImpl<$Res> implements $JWTExceptionCopyWith<$Res> {
  _$JWTExceptionCopyWithImpl(this._value, this._then);

  final JWTException _value;
  // ignore: unused_field
  final $Res Function(JWTException) _then;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_value.copyWith(
      responseBody: responseBody == freezed
          ? _value.responseBody
          : responseBody as String,
    ));
  }
}

abstract class _$InternalCopyWith<$Res> implements $JWTExceptionCopyWith<$Res> {
  factory _$InternalCopyWith(_Internal value, $Res Function(_Internal) then) =
      __$InternalCopyWithImpl<$Res>;
  @override
  $Res call({String responseBody});
}

class __$InternalCopyWithImpl<$Res> extends _$JWTExceptionCopyWithImpl<$Res>
    implements _$InternalCopyWith<$Res> {
  __$InternalCopyWithImpl(_Internal _value, $Res Function(_Internal) _then)
      : super(_value, (v) => _then(v as _Internal));

  @override
  _Internal get _value => super._value as _Internal;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_Internal(
      responseBody == freezed ? _value.responseBody : responseBody as String,
    ));
  }
}

class _$_Internal implements _Internal {
  const _$_Internal(this.responseBody) : assert(responseBody != null);

  @override
  final String responseBody;

  @override
  String toString() {
    return 'JWTException.internal(responseBody: $responseBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Internal &&
            (identical(other.responseBody, responseBody) ||
                const DeepCollectionEquality()
                    .equals(other.responseBody, responseBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseBody);

  @override
  _$InternalCopyWith<_Internal> get copyWith =>
      __$InternalCopyWithImpl<_Internal>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return internal(responseBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internal != null) {
      return internal(responseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return internal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internal != null) {
      return internal(this);
    }
    return orElse();
  }
}

abstract class _Internal implements JWTException {
  const factory _Internal(String responseBody) = _$_Internal;

  @override
  String get responseBody;
  @override
  _$InternalCopyWith<_Internal> get copyWith;
}

abstract class _$HttpServiceCopyWith<$Res>
    implements $JWTExceptionCopyWith<$Res> {
  factory _$HttpServiceCopyWith(
          _HttpService value, $Res Function(_HttpService) then) =
      __$HttpServiceCopyWithImpl<$Res>;
  @override
  $Res call({String responseBody});
}

class __$HttpServiceCopyWithImpl<$Res> extends _$JWTExceptionCopyWithImpl<$Res>
    implements _$HttpServiceCopyWith<$Res> {
  __$HttpServiceCopyWithImpl(
      _HttpService _value, $Res Function(_HttpService) _then)
      : super(_value, (v) => _then(v as _HttpService));

  @override
  _HttpService get _value => super._value as _HttpService;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_HttpService(
      responseBody == freezed ? _value.responseBody : responseBody as String,
    ));
  }
}

class _$_HttpService implements _HttpService {
  const _$_HttpService(this.responseBody) : assert(responseBody != null);

  @override
  final String responseBody;

  @override
  String toString() {
    return 'JWTException.httpService(responseBody: $responseBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HttpService &&
            (identical(other.responseBody, responseBody) ||
                const DeepCollectionEquality()
                    .equals(other.responseBody, responseBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseBody);

  @override
  _$HttpServiceCopyWith<_HttpService> get copyWith =>
      __$HttpServiceCopyWithImpl<_HttpService>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return httpService(responseBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (httpService != null) {
      return httpService(responseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return httpService(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (httpService != null) {
      return httpService(this);
    }
    return orElse();
  }
}

abstract class _HttpService implements JWTException {
  const factory _HttpService(String responseBody) = _$_HttpService;

  @override
  String get responseBody;
  @override
  _$HttpServiceCopyWith<_HttpService> get copyWith;
}

abstract class _$UnexpectedStatusCopyWith<$Res>
    implements $JWTExceptionCopyWith<$Res> {
  factory _$UnexpectedStatusCopyWith(
          _UnexpectedStatus value, $Res Function(_UnexpectedStatus) then) =
      __$UnexpectedStatusCopyWithImpl<$Res>;
  @override
  $Res call({String responseBody});
}

class __$UnexpectedStatusCopyWithImpl<$Res>
    extends _$JWTExceptionCopyWithImpl<$Res>
    implements _$UnexpectedStatusCopyWith<$Res> {
  __$UnexpectedStatusCopyWithImpl(
      _UnexpectedStatus _value, $Res Function(_UnexpectedStatus) _then)
      : super(_value, (v) => _then(v as _UnexpectedStatus));

  @override
  _UnexpectedStatus get _value => super._value as _UnexpectedStatus;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_UnexpectedStatus(
      responseBody == freezed ? _value.responseBody : responseBody as String,
    ));
  }
}

class _$_UnexpectedStatus implements _UnexpectedStatus {
  const _$_UnexpectedStatus(this.responseBody) : assert(responseBody != null);

  @override
  final String responseBody;

  @override
  String toString() {
    return 'JWTException.unexpectedStatus(responseBody: $responseBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnexpectedStatus &&
            (identical(other.responseBody, responseBody) ||
                const DeepCollectionEquality()
                    .equals(other.responseBody, responseBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseBody);

  @override
  _$UnexpectedStatusCopyWith<_UnexpectedStatus> get copyWith =>
      __$UnexpectedStatusCopyWithImpl<_UnexpectedStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return unexpectedStatus(responseBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedStatus != null) {
      return unexpectedStatus(responseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return unexpectedStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedStatus != null) {
      return unexpectedStatus(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedStatus implements JWTException {
  const factory _UnexpectedStatus(String responseBody) = _$_UnexpectedStatus;

  @override
  String get responseBody;
  @override
  _$UnexpectedStatusCopyWith<_UnexpectedStatus> get copyWith;
}

abstract class _$NotFoundCopyWith<$Res> implements $JWTExceptionCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String responseBody});
}

class __$NotFoundCopyWithImpl<$Res> extends _$JWTExceptionCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_NotFound(
      responseBody == freezed ? _value.responseBody : responseBody as String,
    ));
  }
}

class _$_NotFound implements _NotFound {
  const _$_NotFound(this.responseBody) : assert(responseBody != null);

  @override
  final String responseBody;

  @override
  String toString() {
    return 'JWTException.notFound(responseBody: $responseBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotFound &&
            (identical(other.responseBody, responseBody) ||
                const DeepCollectionEquality()
                    .equals(other.responseBody, responseBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseBody);

  @override
  _$NotFoundCopyWith<_NotFound> get copyWith =>
      __$NotFoundCopyWithImpl<_NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return notFound(responseBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(responseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements JWTException {
  const factory _NotFound(String responseBody) = _$_NotFound;

  @override
  String get responseBody;
  @override
  _$NotFoundCopyWith<_NotFound> get copyWith;
}

abstract class _$NotAuthenticatedCopyWith<$Res>
    implements $JWTExceptionCopyWith<$Res> {
  factory _$NotAuthenticatedCopyWith(
          _NotAuthenticated value, $Res Function(_NotAuthenticated) then) =
      __$NotAuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({String responseBody});
}

class __$NotAuthenticatedCopyWithImpl<$Res>
    extends _$JWTExceptionCopyWithImpl<$Res>
    implements _$NotAuthenticatedCopyWith<$Res> {
  __$NotAuthenticatedCopyWithImpl(
      _NotAuthenticated _value, $Res Function(_NotAuthenticated) _then)
      : super(_value, (v) => _then(v as _NotAuthenticated));

  @override
  _NotAuthenticated get _value => super._value as _NotAuthenticated;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_NotAuthenticated(
      responseBody == freezed ? _value.responseBody : responseBody as String,
    ));
  }
}

class _$_NotAuthenticated implements _NotAuthenticated {
  const _$_NotAuthenticated(this.responseBody) : assert(responseBody != null);

  @override
  final String responseBody;

  @override
  String toString() {
    return 'JWTException.notAuthenticated(responseBody: $responseBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotAuthenticated &&
            (identical(other.responseBody, responseBody) ||
                const DeepCollectionEquality()
                    .equals(other.responseBody, responseBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseBody);

  @override
  _$NotAuthenticatedCopyWith<_NotAuthenticated> get copyWith =>
      __$NotAuthenticatedCopyWithImpl<_NotAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return notAuthenticated(responseBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated(responseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements JWTException {
  const factory _NotAuthenticated(String responseBody) = _$_NotAuthenticated;

  @override
  String get responseBody;
  @override
  _$NotAuthenticatedCopyWith<_NotAuthenticated> get copyWith;
}

abstract class _$ForbidddenCopyWith<$Res>
    implements $JWTExceptionCopyWith<$Res> {
  factory _$ForbidddenCopyWith(
          _Forbiddden value, $Res Function(_Forbiddden) then) =
      __$ForbidddenCopyWithImpl<$Res>;
  @override
  $Res call({String responseBody});
}

class __$ForbidddenCopyWithImpl<$Res> extends _$JWTExceptionCopyWithImpl<$Res>
    implements _$ForbidddenCopyWith<$Res> {
  __$ForbidddenCopyWithImpl(
      _Forbiddden _value, $Res Function(_Forbiddden) _then)
      : super(_value, (v) => _then(v as _Forbiddden));

  @override
  _Forbiddden get _value => super._value as _Forbiddden;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_Forbiddden(
      responseBody == freezed ? _value.responseBody : responseBody as String,
    ));
  }
}

class _$_Forbiddden implements _Forbiddden {
  const _$_Forbiddden(this.responseBody) : assert(responseBody != null);

  @override
  final String responseBody;

  @override
  String toString() {
    return 'JWTException.forbidden(responseBody: $responseBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Forbiddden &&
            (identical(other.responseBody, responseBody) ||
                const DeepCollectionEquality()
                    .equals(other.responseBody, responseBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseBody);

  @override
  _$ForbidddenCopyWith<_Forbiddden> get copyWith =>
      __$ForbidddenCopyWithImpl<_Forbiddden>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return forbidden(responseBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forbidden != null) {
      return forbidden(responseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class _Forbiddden implements JWTException {
  const factory _Forbiddden(String responseBody) = _$_Forbiddden;

  @override
  String get responseBody;
  @override
  _$ForbidddenCopyWith<_Forbiddden> get copyWith;
}

abstract class _$InvalidFormatCopyWith<$Res>
    implements $JWTExceptionCopyWith<$Res> {
  factory _$InvalidFormatCopyWith(
          _InvalidFormat value, $Res Function(_InvalidFormat) then) =
      __$InvalidFormatCopyWithImpl<$Res>;
  @override
  $Res call({String responseBody});
}

class __$InvalidFormatCopyWithImpl<$Res>
    extends _$JWTExceptionCopyWithImpl<$Res>
    implements _$InvalidFormatCopyWith<$Res> {
  __$InvalidFormatCopyWithImpl(
      _InvalidFormat _value, $Res Function(_InvalidFormat) _then)
      : super(_value, (v) => _then(v as _InvalidFormat));

  @override
  _InvalidFormat get _value => super._value as _InvalidFormat;

  @override
  $Res call({
    Object responseBody = freezed,
  }) {
    return _then(_InvalidFormat(
      responseBody == freezed ? _value.responseBody : responseBody as String,
    ));
  }
}

class _$_InvalidFormat implements _InvalidFormat {
  const _$_InvalidFormat(this.responseBody) : assert(responseBody != null);

  @override
  final String responseBody;

  @override
  String toString() {
    return 'JWTException.invalidFormat(responseBody: $responseBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidFormat &&
            (identical(other.responseBody, responseBody) ||
                const DeepCollectionEquality()
                    .equals(other.responseBody, responseBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseBody);

  @override
  _$InvalidFormatCopyWith<_InvalidFormat> get copyWith =>
      __$InvalidFormatCopyWithImpl<_InvalidFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result internal(String responseBody),
    @required Result httpService(String responseBody),
    @required Result unexpectedStatus(String responseBody),
    @required Result notFound(String responseBody),
    @required Result notAuthenticated(String responseBody),
    @required Result forbidden(String responseBody),
    @required Result invalidFormat(String responseBody),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return invalidFormat(responseBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result internal(String responseBody),
    Result httpService(String responseBody),
    Result unexpectedStatus(String responseBody),
    Result notFound(String responseBody),
    Result notAuthenticated(String responseBody),
    Result forbidden(String responseBody),
    Result invalidFormat(String responseBody),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidFormat != null) {
      return invalidFormat(responseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result internal(_Internal value),
    @required Result httpService(_HttpService value),
    @required Result unexpectedStatus(_UnexpectedStatus value),
    @required Result notFound(_NotFound value),
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result forbidden(_Forbiddden value),
    @required Result invalidFormat(_InvalidFormat value),
  }) {
    assert(internal != null);
    assert(httpService != null);
    assert(unexpectedStatus != null);
    assert(notFound != null);
    assert(notAuthenticated != null);
    assert(forbidden != null);
    assert(invalidFormat != null);
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result internal(_Internal value),
    Result httpService(_HttpService value),
    Result unexpectedStatus(_UnexpectedStatus value),
    Result notFound(_NotFound value),
    Result notAuthenticated(_NotAuthenticated value),
    Result forbidden(_Forbiddden value),
    Result invalidFormat(_InvalidFormat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat implements JWTException {
  const factory _InvalidFormat(String responseBody) = _$_InvalidFormat;

  @override
  String get responseBody;
  @override
  _$InvalidFormatCopyWith<_InvalidFormat> get copyWith;
}
