// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Product product) onToggleFavoriteProduct,
    required TResult Function(Product product) onUpdateFavoriteProduct,
    required TResult Function(Map<int, int> cart) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Product product)? onToggleFavoriteProduct,
    TResult? Function(Product product)? onUpdateFavoriteProduct,
    TResult? Function(Map<int, int> cart)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Product product)? onToggleFavoriteProduct,
    TResult Function(Product product)? onUpdateFavoriteProduct,
    TResult Function(Map<int, int> cart)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_onToggleFavoriteProduct value)
        onToggleFavoriteProduct,
    required TResult Function(_onUpdateFavoriteProduct value)
        onUpdateFavoriteProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult? Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CartEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Product product) onToggleFavoriteProduct,
    required TResult Function(Product product) onUpdateFavoriteProduct,
    required TResult Function(Map<int, int> cart) cartUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Product product)? onToggleFavoriteProduct,
    TResult? Function(Product product)? onUpdateFavoriteProduct,
    TResult? Function(Map<int, int> cart)? cartUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Product product)? onToggleFavoriteProduct,
    TResult Function(Product product)? onUpdateFavoriteProduct,
    TResult Function(Map<int, int> cart)? cartUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_onToggleFavoriteProduct value)
        onToggleFavoriteProduct,
    required TResult Function(_onUpdateFavoriteProduct value)
        onUpdateFavoriteProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult? Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$IncreaseProductImplCopyWith<$Res> {
  factory _$$IncreaseProductImplCopyWith(_$IncreaseProductImpl value,
          $Res Function(_$IncreaseProductImpl) then) =
      __$$IncreaseProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$IncreaseProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$IncreaseProductImpl>
    implements _$$IncreaseProductImplCopyWith<$Res> {
  __$$IncreaseProductImplCopyWithImpl(
      _$IncreaseProductImpl _value, $Res Function(_$IncreaseProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$IncreaseProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$IncreaseProductImpl implements _IncreaseProduct {
  const _$IncreaseProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.onIncreaseProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncreaseProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncreaseProductImplCopyWith<_$IncreaseProductImpl> get copyWith =>
      __$$IncreaseProductImplCopyWithImpl<_$IncreaseProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Product product) onToggleFavoriteProduct,
    required TResult Function(Product product) onUpdateFavoriteProduct,
    required TResult Function(Map<int, int> cart) cartUpdated,
  }) {
    return onIncreaseProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Product product)? onToggleFavoriteProduct,
    TResult? Function(Product product)? onUpdateFavoriteProduct,
    TResult? Function(Map<int, int> cart)? cartUpdated,
  }) {
    return onIncreaseProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Product product)? onToggleFavoriteProduct,
    TResult Function(Product product)? onUpdateFavoriteProduct,
    TResult Function(Map<int, int> cart)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onIncreaseProduct != null) {
      return onIncreaseProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_onToggleFavoriteProduct value)
        onToggleFavoriteProduct,
    required TResult Function(_onUpdateFavoriteProduct value)
        onUpdateFavoriteProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return onIncreaseProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult? Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return onIncreaseProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onIncreaseProduct != null) {
      return onIncreaseProduct(this);
    }
    return orElse();
  }
}

abstract class _IncreaseProduct implements CartEvent {
  const factory _IncreaseProduct(final Product product) = _$IncreaseProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$IncreaseProductImplCopyWith<_$IncreaseProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecreaseProductImplCopyWith<$Res> {
  factory _$$DecreaseProductImplCopyWith(_$DecreaseProductImpl value,
          $Res Function(_$DecreaseProductImpl) then) =
      __$$DecreaseProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$DecreaseProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DecreaseProductImpl>
    implements _$$DecreaseProductImplCopyWith<$Res> {
  __$$DecreaseProductImplCopyWithImpl(
      _$DecreaseProductImpl _value, $Res Function(_$DecreaseProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$DecreaseProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$DecreaseProductImpl implements _DecreaseProduct {
  const _$DecreaseProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.onDecreaseProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecreaseProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecreaseProductImplCopyWith<_$DecreaseProductImpl> get copyWith =>
      __$$DecreaseProductImplCopyWithImpl<_$DecreaseProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Product product) onToggleFavoriteProduct,
    required TResult Function(Product product) onUpdateFavoriteProduct,
    required TResult Function(Map<int, int> cart) cartUpdated,
  }) {
    return onDecreaseProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Product product)? onToggleFavoriteProduct,
    TResult? Function(Product product)? onUpdateFavoriteProduct,
    TResult? Function(Map<int, int> cart)? cartUpdated,
  }) {
    return onDecreaseProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Product product)? onToggleFavoriteProduct,
    TResult Function(Product product)? onUpdateFavoriteProduct,
    TResult Function(Map<int, int> cart)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onDecreaseProduct != null) {
      return onDecreaseProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_onToggleFavoriteProduct value)
        onToggleFavoriteProduct,
    required TResult Function(_onUpdateFavoriteProduct value)
        onUpdateFavoriteProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return onDecreaseProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult? Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return onDecreaseProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onDecreaseProduct != null) {
      return onDecreaseProduct(this);
    }
    return orElse();
  }
}

abstract class _DecreaseProduct implements CartEvent {
  const factory _DecreaseProduct(final Product product) = _$DecreaseProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$DecreaseProductImplCopyWith<_$DecreaseProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onToggleFavoriteProductImplCopyWith<$Res> {
  factory _$$onToggleFavoriteProductImplCopyWith(
          _$onToggleFavoriteProductImpl value,
          $Res Function(_$onToggleFavoriteProductImpl) then) =
      __$$onToggleFavoriteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$onToggleFavoriteProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$onToggleFavoriteProductImpl>
    implements _$$onToggleFavoriteProductImplCopyWith<$Res> {
  __$$onToggleFavoriteProductImplCopyWithImpl(
      _$onToggleFavoriteProductImpl _value,
      $Res Function(_$onToggleFavoriteProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$onToggleFavoriteProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$onToggleFavoriteProductImpl implements _onToggleFavoriteProduct {
  const _$onToggleFavoriteProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.onToggleFavoriteProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onToggleFavoriteProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onToggleFavoriteProductImplCopyWith<_$onToggleFavoriteProductImpl>
      get copyWith => __$$onToggleFavoriteProductImplCopyWithImpl<
          _$onToggleFavoriteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Product product) onToggleFavoriteProduct,
    required TResult Function(Product product) onUpdateFavoriteProduct,
    required TResult Function(Map<int, int> cart) cartUpdated,
  }) {
    return onToggleFavoriteProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Product product)? onToggleFavoriteProduct,
    TResult? Function(Product product)? onUpdateFavoriteProduct,
    TResult? Function(Map<int, int> cart)? cartUpdated,
  }) {
    return onToggleFavoriteProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Product product)? onToggleFavoriteProduct,
    TResult Function(Product product)? onUpdateFavoriteProduct,
    TResult Function(Map<int, int> cart)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onToggleFavoriteProduct != null) {
      return onToggleFavoriteProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_onToggleFavoriteProduct value)
        onToggleFavoriteProduct,
    required TResult Function(_onUpdateFavoriteProduct value)
        onUpdateFavoriteProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return onToggleFavoriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult? Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return onToggleFavoriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onToggleFavoriteProduct != null) {
      return onToggleFavoriteProduct(this);
    }
    return orElse();
  }
}

abstract class _onToggleFavoriteProduct implements CartEvent {
  const factory _onToggleFavoriteProduct(final Product product) =
      _$onToggleFavoriteProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$onToggleFavoriteProductImplCopyWith<_$onToggleFavoriteProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onUpdateFavoriteProductImplCopyWith<$Res> {
  factory _$$onUpdateFavoriteProductImplCopyWith(
          _$onUpdateFavoriteProductImpl value,
          $Res Function(_$onUpdateFavoriteProductImpl) then) =
      __$$onUpdateFavoriteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$onUpdateFavoriteProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$onUpdateFavoriteProductImpl>
    implements _$$onUpdateFavoriteProductImplCopyWith<$Res> {
  __$$onUpdateFavoriteProductImplCopyWithImpl(
      _$onUpdateFavoriteProductImpl _value,
      $Res Function(_$onUpdateFavoriteProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$onUpdateFavoriteProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$onUpdateFavoriteProductImpl implements _onUpdateFavoriteProduct {
  const _$onUpdateFavoriteProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.onUpdateFavoriteProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onUpdateFavoriteProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onUpdateFavoriteProductImplCopyWith<_$onUpdateFavoriteProductImpl>
      get copyWith => __$$onUpdateFavoriteProductImplCopyWithImpl<
          _$onUpdateFavoriteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Product product) onToggleFavoriteProduct,
    required TResult Function(Product product) onUpdateFavoriteProduct,
    required TResult Function(Map<int, int> cart) cartUpdated,
  }) {
    return onUpdateFavoriteProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Product product)? onToggleFavoriteProduct,
    TResult? Function(Product product)? onUpdateFavoriteProduct,
    TResult? Function(Map<int, int> cart)? cartUpdated,
  }) {
    return onUpdateFavoriteProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Product product)? onToggleFavoriteProduct,
    TResult Function(Product product)? onUpdateFavoriteProduct,
    TResult Function(Map<int, int> cart)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onUpdateFavoriteProduct != null) {
      return onUpdateFavoriteProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_onToggleFavoriteProduct value)
        onToggleFavoriteProduct,
    required TResult Function(_onUpdateFavoriteProduct value)
        onUpdateFavoriteProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return onUpdateFavoriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult? Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return onUpdateFavoriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onUpdateFavoriteProduct != null) {
      return onUpdateFavoriteProduct(this);
    }
    return orElse();
  }
}

abstract class _onUpdateFavoriteProduct implements CartEvent {
  const factory _onUpdateFavoriteProduct(final Product product) =
      _$onUpdateFavoriteProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$onUpdateFavoriteProductImplCopyWith<_$onUpdateFavoriteProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartUpdatedImplCopyWith<$Res> {
  factory _$$CartUpdatedImplCopyWith(
          _$CartUpdatedImpl value, $Res Function(_$CartUpdatedImpl) then) =
      __$$CartUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<int, int> cart});
}

/// @nodoc
class __$$CartUpdatedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartUpdatedImpl>
    implements _$$CartUpdatedImplCopyWith<$Res> {
  __$$CartUpdatedImplCopyWithImpl(
      _$CartUpdatedImpl _value, $Res Function(_$CartUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartUpdatedImpl(
      null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
    ));
  }
}

/// @nodoc

class _$CartUpdatedImpl implements _CartUpdated {
  const _$CartUpdatedImpl(final Map<int, int> cart) : _cart = cart;

  final Map<int, int> _cart;
  @override
  Map<int, int> get cart {
    if (_cart is EqualUnmodifiableMapView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cart);
  }

  @override
  String toString() {
    return 'CartEvent.cartUpdated(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUpdatedImpl &&
            const DeepCollectionEquality().equals(other._cart, _cart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cart));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUpdatedImplCopyWith<_$CartUpdatedImpl> get copyWith =>
      __$$CartUpdatedImplCopyWithImpl<_$CartUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Product product) onToggleFavoriteProduct,
    required TResult Function(Product product) onUpdateFavoriteProduct,
    required TResult Function(Map<int, int> cart) cartUpdated,
  }) {
    return cartUpdated(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Product product)? onToggleFavoriteProduct,
    TResult? Function(Product product)? onUpdateFavoriteProduct,
    TResult? Function(Map<int, int> cart)? cartUpdated,
  }) {
    return cartUpdated?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Product product)? onToggleFavoriteProduct,
    TResult Function(Product product)? onUpdateFavoriteProduct,
    TResult Function(Map<int, int> cart)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_onToggleFavoriteProduct value)
        onToggleFavoriteProduct,
    required TResult Function(_onUpdateFavoriteProduct value)
        onUpdateFavoriteProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult? Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_onToggleFavoriteProduct value)? onToggleFavoriteProduct,
    TResult Function(_onUpdateFavoriteProduct value)? onUpdateFavoriteProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class _CartUpdated implements CartEvent {
  const factory _CartUpdated(final Map<int, int> cart) = _$CartUpdatedImpl;

  Map<int, int> get cart;
  @JsonKey(ignore: true)
  _$$CartUpdatedImplCopyWith<_$CartUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CartViewState data) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CartViewState data)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CartViewState data)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CartViewState data) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CartViewState data)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CartViewState data)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Ready value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Ready value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartViewState data});

  $CartViewStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ReadyImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartViewState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartViewStateCopyWith<$Res> get data {
    return $CartViewStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements Ready {
  const _$ReadyImpl(this.data);

  @override
  final CartViewState data;

  @override
  String toString() {
    return 'CartState.ready(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CartViewState data) ready,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CartViewState data)? ready,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CartViewState data)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements CartState {
  const factory Ready(final CartViewState data) = _$ReadyImpl;

  CartViewState get data;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
