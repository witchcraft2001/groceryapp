// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Map<int, int> get cartQuantities => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesViewStateCopyWith<FavoritesViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesViewStateCopyWith<$Res> {
  factory $FavoritesViewStateCopyWith(
          FavoritesViewState value, $Res Function(FavoritesViewState) then) =
      _$FavoritesViewStateCopyWithImpl<$Res, FavoritesViewState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Product> products,
      Map<int, int> cartQuantities,
      bool isError});
}

/// @nodoc
class _$FavoritesViewStateCopyWithImpl<$Res, $Val extends FavoritesViewState>
    implements $FavoritesViewStateCopyWith<$Res> {
  _$FavoritesViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? cartQuantities = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      cartQuantities: null == cartQuantities
          ? _value.cartQuantities
          : cartQuantities // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesViewStateImplCopyWith<$Res>
    implements $FavoritesViewStateCopyWith<$Res> {
  factory _$$FavoritesViewStateImplCopyWith(_$FavoritesViewStateImpl value,
          $Res Function(_$FavoritesViewStateImpl) then) =
      __$$FavoritesViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Product> products,
      Map<int, int> cartQuantities,
      bool isError});
}

/// @nodoc
class __$$FavoritesViewStateImplCopyWithImpl<$Res>
    extends _$FavoritesViewStateCopyWithImpl<$Res, _$FavoritesViewStateImpl>
    implements _$$FavoritesViewStateImplCopyWith<$Res> {
  __$$FavoritesViewStateImplCopyWithImpl(_$FavoritesViewStateImpl _value,
      $Res Function(_$FavoritesViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? cartQuantities = null,
    Object? isError = null,
  }) {
    return _then(_$FavoritesViewStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      cartQuantities: null == cartQuantities
          ? _value._cartQuantities
          : cartQuantities // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoritesViewStateImpl implements _FavoritesViewState {
  const _$FavoritesViewStateImpl(
      {this.isLoading = false,
      final List<Product> products = const [],
      final Map<int, int> cartQuantities = const {},
      this.isError = false})
      : _products = products,
        _cartQuantities = cartQuantities;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final Map<int, int> _cartQuantities;
  @override
  @JsonKey()
  Map<int, int> get cartQuantities {
    if (_cartQuantities is EqualUnmodifiableMapView) return _cartQuantities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartQuantities);
  }

  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'FavoritesViewState(isLoading: $isLoading, products: $products, cartQuantities: $cartQuantities, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesViewStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._cartQuantities, _cartQuantities) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_cartQuantities),
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesViewStateImplCopyWith<_$FavoritesViewStateImpl> get copyWith =>
      __$$FavoritesViewStateImplCopyWithImpl<_$FavoritesViewStateImpl>(
          this, _$identity);
}

abstract class _FavoritesViewState implements FavoritesViewState {
  const factory _FavoritesViewState(
      {final bool isLoading,
      final List<Product> products,
      final Map<int, int> cartQuantities,
      final bool isError}) = _$FavoritesViewStateImpl;

  @override
  bool get isLoading;
  @override
  List<Product> get products;
  @override
  Map<int, int> get cartQuantities;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesViewStateImplCopyWith<_$FavoritesViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
