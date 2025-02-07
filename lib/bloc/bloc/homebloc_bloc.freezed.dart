// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homebloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProductsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProductsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProductsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsData value) fetchProductsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductsData value)? fetchProductsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsData value)? fetchProductsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeblocEventCopyWith<$Res> {
  factory $HomeblocEventCopyWith(
          HomeblocEvent value, $Res Function(HomeblocEvent) then) =
      _$HomeblocEventCopyWithImpl<$Res, HomeblocEvent>;
}

/// @nodoc
class _$HomeblocEventCopyWithImpl<$Res, $Val extends HomeblocEvent>
    implements $HomeblocEventCopyWith<$Res> {
  _$HomeblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeblocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchProductsDataImplCopyWith<$Res> {
  factory _$$FetchProductsDataImplCopyWith(_$FetchProductsDataImpl value,
          $Res Function(_$FetchProductsDataImpl) then) =
      __$$FetchProductsDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProductsDataImplCopyWithImpl<$Res>
    extends _$HomeblocEventCopyWithImpl<$Res, _$FetchProductsDataImpl>
    implements _$$FetchProductsDataImplCopyWith<$Res> {
  __$$FetchProductsDataImplCopyWithImpl(_$FetchProductsDataImpl _value,
      $Res Function(_$FetchProductsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeblocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchProductsDataImpl implements _FetchProductsData {
  const _$FetchProductsDataImpl();

  @override
  String toString() {
    return 'HomeblocEvent.fetchProductsData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProductsDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProductsData,
  }) {
    return fetchProductsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProductsData,
  }) {
    return fetchProductsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProductsData,
    required TResult orElse(),
  }) {
    if (fetchProductsData != null) {
      return fetchProductsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsData value) fetchProductsData,
  }) {
    return fetchProductsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductsData value)? fetchProductsData,
  }) {
    return fetchProductsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsData value)? fetchProductsData,
    required TResult orElse(),
  }) {
    if (fetchProductsData != null) {
      return fetchProductsData(this);
    }
    return orElse();
  }
}

abstract class _FetchProductsData implements HomeblocEvent {
  const factory _FetchProductsData() = _$FetchProductsDataImpl;
}

/// @nodoc
mixin _$HomeblocState {
  List<ProductModel>? get productsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  /// Create a copy of HomeblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeblocStateCopyWith<HomeblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeblocStateCopyWith<$Res> {
  factory $HomeblocStateCopyWith(
          HomeblocState value, $Res Function(HomeblocState) then) =
      _$HomeblocStateCopyWithImpl<$Res, HomeblocState>;
  @useResult
  $Res call({List<ProductModel>? productsList, bool isLoading, bool isError});
}

/// @nodoc
class _$HomeblocStateCopyWithImpl<$Res, $Val extends HomeblocState>
    implements $HomeblocStateCopyWith<$Res> {
  _$HomeblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsList = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      productsList: freezed == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeblocStateImplCopyWith<$Res>
    implements $HomeblocStateCopyWith<$Res> {
  factory _$$HomeblocStateImplCopyWith(
          _$HomeblocStateImpl value, $Res Function(_$HomeblocStateImpl) then) =
      __$$HomeblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel>? productsList, bool isLoading, bool isError});
}

/// @nodoc
class __$$HomeblocStateImplCopyWithImpl<$Res>
    extends _$HomeblocStateCopyWithImpl<$Res, _$HomeblocStateImpl>
    implements _$$HomeblocStateImplCopyWith<$Res> {
  __$$HomeblocStateImplCopyWithImpl(
      _$HomeblocStateImpl _value, $Res Function(_$HomeblocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsList = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$HomeblocStateImpl(
      productsList: freezed == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeblocStateImpl implements _HomeblocState {
  const _$HomeblocStateImpl(
      {final List<ProductModel>? productsList,
      required this.isLoading,
      required this.isError})
      : _productsList = productsList;

  final List<ProductModel>? _productsList;
  @override
  List<ProductModel>? get productsList {
    final value = _productsList;
    if (value == null) return null;
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeblocState(productsList: $productsList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeblocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_productsList), isLoading, isError);

  /// Create a copy of HomeblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeblocStateImplCopyWith<_$HomeblocStateImpl> get copyWith =>
      __$$HomeblocStateImplCopyWithImpl<_$HomeblocStateImpl>(this, _$identity);
}

abstract class _HomeblocState implements HomeblocState {
  const factory _HomeblocState(
      {final List<ProductModel>? productsList,
      required final bool isLoading,
      required final bool isError}) = _$HomeblocStateImpl;

  @override
  List<ProductModel>? get productsList;
  @override
  bool get isLoading;
  @override
  bool get isError;

  /// Create a copy of HomeblocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeblocStateImplCopyWith<_$HomeblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
