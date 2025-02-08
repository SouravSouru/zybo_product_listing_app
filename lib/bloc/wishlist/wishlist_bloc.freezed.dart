// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWishLists,
    required TResult Function(String productId) updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWishLists,
    TResult? Function(String productId)? updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWishLists,
    TResult Function(String productId)? updateWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWishList value) fetchWishLists,
    required TResult Function(UpdateWishlist value) updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWishList value)? fetchWishLists,
    TResult? Function(UpdateWishlist value)? updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWishList value)? fetchWishLists,
    TResult Function(UpdateWishlist value)? updateWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchWishListImplCopyWith<$Res> {
  factory _$$FetchWishListImplCopyWith(
          _$FetchWishListImpl value, $Res Function(_$FetchWishListImpl) then) =
      __$$FetchWishListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchWishListImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$FetchWishListImpl>
    implements _$$FetchWishListImplCopyWith<$Res> {
  __$$FetchWishListImplCopyWithImpl(
      _$FetchWishListImpl _value, $Res Function(_$FetchWishListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchWishListImpl implements FetchWishList {
  const _$FetchWishListImpl();

  @override
  String toString() {
    return 'WishlistEvent.fetchWishLists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchWishListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWishLists,
    required TResult Function(String productId) updateWishlist,
  }) {
    return fetchWishLists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWishLists,
    TResult? Function(String productId)? updateWishlist,
  }) {
    return fetchWishLists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWishLists,
    TResult Function(String productId)? updateWishlist,
    required TResult orElse(),
  }) {
    if (fetchWishLists != null) {
      return fetchWishLists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWishList value) fetchWishLists,
    required TResult Function(UpdateWishlist value) updateWishlist,
  }) {
    return fetchWishLists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWishList value)? fetchWishLists,
    TResult? Function(UpdateWishlist value)? updateWishlist,
  }) {
    return fetchWishLists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWishList value)? fetchWishLists,
    TResult Function(UpdateWishlist value)? updateWishlist,
    required TResult orElse(),
  }) {
    if (fetchWishLists != null) {
      return fetchWishLists(this);
    }
    return orElse();
  }
}

abstract class FetchWishList implements WishlistEvent {
  const factory FetchWishList() = _$FetchWishListImpl;
}

/// @nodoc
abstract class _$$UpdateWishlistImplCopyWith<$Res> {
  factory _$$UpdateWishlistImplCopyWith(_$UpdateWishlistImpl value,
          $Res Function(_$UpdateWishlistImpl) then) =
      __$$UpdateWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$UpdateWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$UpdateWishlistImpl>
    implements _$$UpdateWishlistImplCopyWith<$Res> {
  __$$UpdateWishlistImplCopyWithImpl(
      _$UpdateWishlistImpl _value, $Res Function(_$UpdateWishlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$UpdateWishlistImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateWishlistImpl implements UpdateWishlist {
  const _$UpdateWishlistImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'WishlistEvent.updateWishlist(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWishlistImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of WishlistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWishlistImplCopyWith<_$UpdateWishlistImpl> get copyWith =>
      __$$UpdateWishlistImplCopyWithImpl<_$UpdateWishlistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWishLists,
    required TResult Function(String productId) updateWishlist,
  }) {
    return updateWishlist(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWishLists,
    TResult? Function(String productId)? updateWishlist,
  }) {
    return updateWishlist?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWishLists,
    TResult Function(String productId)? updateWishlist,
    required TResult orElse(),
  }) {
    if (updateWishlist != null) {
      return updateWishlist(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWishList value) fetchWishLists,
    required TResult Function(UpdateWishlist value) updateWishlist,
  }) {
    return updateWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWishList value)? fetchWishLists,
    TResult? Function(UpdateWishlist value)? updateWishlist,
  }) {
    return updateWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWishList value)? fetchWishLists,
    TResult Function(UpdateWishlist value)? updateWishlist,
    required TResult orElse(),
  }) {
    if (updateWishlist != null) {
      return updateWishlist(this);
    }
    return orElse();
  }
}

abstract class UpdateWishlist implements WishlistEvent {
  const factory UpdateWishlist({required final String productId}) =
      _$UpdateWishlistImpl;

  String get productId;

  /// Create a copy of WishlistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWishlistImplCopyWith<_$UpdateWishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  List<ProductModel> get wishlists => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call({List<ProductModel> wishlists, bool isLoading});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlists = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      wishlists: null == wishlists
          ? _value.wishlists
          : wishlists // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistStateImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$WishlistStateImplCopyWith(
          _$WishlistStateImpl value, $Res Function(_$WishlistStateImpl) then) =
      __$$WishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> wishlists, bool isLoading});
}

/// @nodoc
class __$$WishlistStateImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$WishlistStateImpl>
    implements _$$WishlistStateImplCopyWith<$Res> {
  __$$WishlistStateImplCopyWithImpl(
      _$WishlistStateImpl _value, $Res Function(_$WishlistStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlists = null,
    Object? isLoading = null,
  }) {
    return _then(_$WishlistStateImpl(
      wishlists: null == wishlists
          ? _value._wishlists
          : wishlists // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WishlistStateImpl implements _WishlistState {
  const _$WishlistStateImpl(
      {required final List<ProductModel> wishlists, required this.isLoading})
      : _wishlists = wishlists;

  final List<ProductModel> _wishlists;
  @override
  List<ProductModel> get wishlists {
    if (_wishlists is EqualUnmodifiableListView) return _wishlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlists);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'WishlistState(wishlists: $wishlists, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistStateImpl &&
            const DeepCollectionEquality()
                .equals(other._wishlists, _wishlists) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_wishlists), isLoading);

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      __$$WishlistStateImplCopyWithImpl<_$WishlistStateImpl>(this, _$identity);
}

abstract class _WishlistState implements WishlistState {
  const factory _WishlistState(
      {required final List<ProductModel> wishlists,
      required final bool isLoading}) = _$WishlistStateImpl;

  @override
  List<ProductModel> get wishlists;
  @override
  bool get isLoading;

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
