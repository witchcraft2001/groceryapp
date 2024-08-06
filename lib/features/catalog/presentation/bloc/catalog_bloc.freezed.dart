// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Map<Product, int> cart) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Map<Product, int> cart)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Map<Product, int> cart)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res, CatalogEvent>;
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res, $Val extends CatalogEvent>
    implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

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
    extends _$CatalogEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CatalogEvent.started()';
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
    required TResult Function(Category category) categorySelected,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Map<Product, int> cart) cartUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Map<Product, int> cart)? cartUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Map<Product, int> cart)? cartUpdated,
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
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CatalogEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CategorySelectedImplCopyWith<$Res> {
  factory _$$CategorySelectedImplCopyWith(_$CategorySelectedImpl value,
          $Res Function(_$CategorySelectedImpl) then) =
      __$$CategorySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategorySelectedImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$CategorySelectedImpl>
    implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(_$CategorySelectedImpl _value,
      $Res Function(_$CategorySelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategorySelectedImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategorySelectedImpl implements _CategorySelected {
  const _$CategorySelectedImpl(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'CatalogEvent.categorySelected(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySelectedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Map<Product, int> cart) cartUpdated,
  }) {
    return categorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Map<Product, int> cart)? cartUpdated,
  }) {
    return categorySelected?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Map<Product, int> cart)? cartUpdated,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements CatalogEvent {
  const factory _CategorySelected(final Category category) =
      _$CategorySelectedImpl;

  Category get category;
  @JsonKey(ignore: true)
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CatalogEventCopyWithImpl<$Res, _$IncreaseProductImpl>
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
    return 'CatalogEvent.onIncreaseProduct(product: $product)';
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
    required TResult Function(Category category) categorySelected,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Map<Product, int> cart) cartUpdated,
  }) {
    return onIncreaseProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Map<Product, int> cart)? cartUpdated,
  }) {
    return onIncreaseProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Map<Product, int> cart)? cartUpdated,
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
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return onIncreaseProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return onIncreaseProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onIncreaseProduct != null) {
      return onIncreaseProduct(this);
    }
    return orElse();
  }
}

abstract class _IncreaseProduct implements CatalogEvent {
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
    extends _$CatalogEventCopyWithImpl<$Res, _$DecreaseProductImpl>
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
    return 'CatalogEvent.onDecreaseProduct(product: $product)';
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
    required TResult Function(Category category) categorySelected,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Map<Product, int> cart) cartUpdated,
  }) {
    return onDecreaseProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Map<Product, int> cart)? cartUpdated,
  }) {
    return onDecreaseProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Map<Product, int> cart)? cartUpdated,
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
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return onDecreaseProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return onDecreaseProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (onDecreaseProduct != null) {
      return onDecreaseProduct(this);
    }
    return orElse();
  }
}

abstract class _DecreaseProduct implements CatalogEvent {
  const factory _DecreaseProduct(final Product product) = _$DecreaseProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$DecreaseProductImplCopyWith<_$DecreaseProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartUpdatedImplCopyWith<$Res> {
  factory _$$CartUpdatedImplCopyWith(
          _$CartUpdatedImpl value, $Res Function(_$CartUpdatedImpl) then) =
      __$$CartUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<Product, int> cart});
}

/// @nodoc
class __$$CartUpdatedImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$CartUpdatedImpl>
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
              as Map<Product, int>,
    ));
  }
}

/// @nodoc

class _$CartUpdatedImpl implements _CartUpdated {
  const _$CartUpdatedImpl(final Map<Product, int> cart) : _cart = cart;

  final Map<Product, int> _cart;
  @override
  Map<Product, int> get cart {
    if (_cart is EqualUnmodifiableMapView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cart);
  }

  @override
  String toString() {
    return 'CatalogEvent.cartUpdated(cart: $cart)';
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
    required TResult Function(Category category) categorySelected,
    required TResult Function(Product product) onIncreaseProduct,
    required TResult Function(Product product) onDecreaseProduct,
    required TResult Function(Map<Product, int> cart) cartUpdated,
  }) {
    return cartUpdated(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Product product)? onIncreaseProduct,
    TResult? Function(Product product)? onDecreaseProduct,
    TResult? Function(Map<Product, int> cart)? cartUpdated,
  }) {
    return cartUpdated?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(Product product)? onIncreaseProduct,
    TResult Function(Product product)? onDecreaseProduct,
    TResult Function(Map<Product, int> cart)? cartUpdated,
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
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_IncreaseProduct value) onIncreaseProduct,
    required TResult Function(_DecreaseProduct value) onDecreaseProduct,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult? Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult? Function(_CartUpdated value)? cartUpdated,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_IncreaseProduct value)? onIncreaseProduct,
    TResult Function(_DecreaseProduct value)? onDecreaseProduct,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class _CartUpdated implements CatalogEvent {
  const factory _CartUpdated(final Map<Product, int> cart) = _$CartUpdatedImpl;

  Map<Product, int> get cart;
  @JsonKey(ignore: true)
  _$$CartUpdatedImplCopyWith<_$CartUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CatalogViewState data) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CatalogViewState data)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CatalogViewState data)? ready,
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
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

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
    extends _$CatalogStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CatalogState.initial()';
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
    required TResult Function(CatalogViewState data) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CatalogViewState data)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CatalogViewState data)? ready,
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

abstract class _Initial implements CatalogState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CatalogViewState data});

  $CatalogViewStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$ReadyImpl>
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
              as CatalogViewState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CatalogViewStateCopyWith<$Res> get data {
    return $CatalogViewStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements Ready {
  const _$ReadyImpl(this.data);

  @override
  final CatalogViewState data;

  @override
  String toString() {
    return 'CatalogState.ready(data: $data)';
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
    required TResult Function(CatalogViewState data) ready,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CatalogViewState data)? ready,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CatalogViewState data)? ready,
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

abstract class Ready implements CatalogState {
  const factory Ready(final CatalogViewState data) = _$ReadyImpl;

  CatalogViewState get data;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
