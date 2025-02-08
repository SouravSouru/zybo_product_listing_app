// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifyPhonenumber,
    required TResult Function() verifyOtp,
    required TResult Function() registerAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? verifyPhonenumber,
    TResult? Function()? verifyOtp,
    TResult? Function()? registerAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifyPhonenumber,
    TResult Function()? verifyOtp,
    TResult Function()? registerAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhonenumber value) verifyPhonenumber,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(RegisterAccount value) registerAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(RegisterAccount value)? registerAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(RegisterAccount value)? registerAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VerifyPhonenumberImplCopyWith<$Res> {
  factory _$$VerifyPhonenumberImplCopyWith(_$VerifyPhonenumberImpl value,
          $Res Function(_$VerifyPhonenumberImpl) then) =
      __$$VerifyPhonenumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPhonenumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyPhonenumberImpl>
    implements _$$VerifyPhonenumberImplCopyWith<$Res> {
  __$$VerifyPhonenumberImplCopyWithImpl(_$VerifyPhonenumberImpl _value,
      $Res Function(_$VerifyPhonenumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyPhonenumberImpl implements VerifyPhonenumber {
  const _$VerifyPhonenumberImpl();

  @override
  String toString() {
    return 'AuthEvent.verifyPhonenumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyPhonenumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifyPhonenumber,
    required TResult Function() verifyOtp,
    required TResult Function() registerAccount,
  }) {
    return verifyPhonenumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? verifyPhonenumber,
    TResult? Function()? verifyOtp,
    TResult? Function()? registerAccount,
  }) {
    return verifyPhonenumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifyPhonenumber,
    TResult Function()? verifyOtp,
    TResult Function()? registerAccount,
    required TResult orElse(),
  }) {
    if (verifyPhonenumber != null) {
      return verifyPhonenumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhonenumber value) verifyPhonenumber,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(RegisterAccount value) registerAccount,
  }) {
    return verifyPhonenumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(RegisterAccount value)? registerAccount,
  }) {
    return verifyPhonenumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(RegisterAccount value)? registerAccount,
    required TResult orElse(),
  }) {
    if (verifyPhonenumber != null) {
      return verifyPhonenumber(this);
    }
    return orElse();
  }
}

abstract class VerifyPhonenumber implements AuthEvent {
  const factory VerifyPhonenumber() = _$VerifyPhonenumberImpl;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyOtpImpl implements VerifyOtp {
  const _$VerifyOtpImpl();

  @override
  String toString() {
    return 'AuthEvent.verifyOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifyPhonenumber,
    required TResult Function() verifyOtp,
    required TResult Function() registerAccount,
  }) {
    return verifyOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? verifyPhonenumber,
    TResult? Function()? verifyOtp,
    TResult? Function()? registerAccount,
  }) {
    return verifyOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifyPhonenumber,
    TResult Function()? verifyOtp,
    TResult Function()? registerAccount,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhonenumber value) verifyPhonenumber,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(RegisterAccount value) registerAccount,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(RegisterAccount value)? registerAccount,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(RegisterAccount value)? registerAccount,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements AuthEvent {
  const factory VerifyOtp() = _$VerifyOtpImpl;
}

/// @nodoc
abstract class _$$RegisterAccountImplCopyWith<$Res> {
  factory _$$RegisterAccountImplCopyWith(_$RegisterAccountImpl value,
          $Res Function(_$RegisterAccountImpl) then) =
      __$$RegisterAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterAccountImpl>
    implements _$$RegisterAccountImplCopyWith<$Res> {
  __$$RegisterAccountImplCopyWithImpl(
      _$RegisterAccountImpl _value, $Res Function(_$RegisterAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterAccountImpl implements RegisterAccount {
  const _$RegisterAccountImpl();

  @override
  String toString() {
    return 'AuthEvent.registerAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifyPhonenumber,
    required TResult Function() verifyOtp,
    required TResult Function() registerAccount,
  }) {
    return registerAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? verifyPhonenumber,
    TResult? Function()? verifyOtp,
    TResult? Function()? registerAccount,
  }) {
    return registerAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifyPhonenumber,
    TResult Function()? verifyOtp,
    TResult Function()? registerAccount,
    required TResult orElse(),
  }) {
    if (registerAccount != null) {
      return registerAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhonenumber value) verifyPhonenumber,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(RegisterAccount value) registerAccount,
  }) {
    return registerAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(RegisterAccount value)? registerAccount,
  }) {
    return registerAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhonenumber value)? verifyPhonenumber,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(RegisterAccount value)? registerAccount,
    required TResult orElse(),
  }) {
    if (registerAccount != null) {
      return registerAccount(this);
    }
    return orElse();
  }
}

abstract class RegisterAccount implements AuthEvent {
  const factory RegisterAccount() = _$RegisterAccountImpl;
}

/// @nodoc
mixin _$AuthState {
  LoginModel? get loginResponse => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Register? get registerResponse => throw _privateConstructorUsedError;
  bool get isOtpVerified => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  LoadingButtons get loadingButtons => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {LoginModel? loginResponse,
      String? errorMessage,
      Register? registerResponse,
      bool isOtpVerified,
      bool isLoading,
      LoadingButtons loadingButtons});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = freezed,
    Object? errorMessage = freezed,
    Object? registerResponse = freezed,
    Object? isOtpVerified = null,
    Object? isLoading = null,
    Object? loadingButtons = null,
  }) {
    return _then(_value.copyWith(
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      registerResponse: freezed == registerResponse
          ? _value.registerResponse
          : registerResponse // ignore: cast_nullable_to_non_nullable
              as Register?,
      isOtpVerified: null == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingButtons: null == loadingButtons
          ? _value.loadingButtons
          : loadingButtons // ignore: cast_nullable_to_non_nullable
              as LoadingButtons,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginModel? loginResponse,
      String? errorMessage,
      Register? registerResponse,
      bool isOtpVerified,
      bool isLoading,
      LoadingButtons loadingButtons});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = freezed,
    Object? errorMessage = freezed,
    Object? registerResponse = freezed,
    Object? isOtpVerified = null,
    Object? isLoading = null,
    Object? loadingButtons = null,
  }) {
    return _then(_$AuthStateImpl(
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      registerResponse: freezed == registerResponse
          ? _value.registerResponse
          : registerResponse // ignore: cast_nullable_to_non_nullable
              as Register?,
      isOtpVerified: null == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingButtons: null == loadingButtons
          ? _value.loadingButtons
          : loadingButtons // ignore: cast_nullable_to_non_nullable
              as LoadingButtons,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.loginResponse,
      this.errorMessage,
      this.registerResponse,
      required this.isOtpVerified,
      required this.isLoading,
      required this.loadingButtons});

  @override
  final LoginModel? loginResponse;
  @override
  final String? errorMessage;
  @override
  final Register? registerResponse;
  @override
  final bool isOtpVerified;
  @override
  final bool isLoading;
  @override
  final LoadingButtons loadingButtons;

  @override
  String toString() {
    return 'AuthState(loginResponse: $loginResponse, errorMessage: $errorMessage, registerResponse: $registerResponse, isOtpVerified: $isOtpVerified, isLoading: $isLoading, loadingButtons: $loadingButtons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.registerResponse, registerResponse) ||
                other.registerResponse == registerResponse) &&
            (identical(other.isOtpVerified, isOtpVerified) ||
                other.isOtpVerified == isOtpVerified) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadingButtons, loadingButtons) ||
                other.loadingButtons == loadingButtons));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse, errorMessage,
      registerResponse, isOtpVerified, isLoading, loadingButtons);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final LoginModel? loginResponse,
      final String? errorMessage,
      final Register? registerResponse,
      required final bool isOtpVerified,
      required final bool isLoading,
      required final LoadingButtons loadingButtons}) = _$AuthStateImpl;

  @override
  LoginModel? get loginResponse;
  @override
  String? get errorMessage;
  @override
  Register? get registerResponse;
  @override
  bool get isOtpVerified;
  @override
  bool get isLoading;
  @override
  LoadingButtons get loadingButtons;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
