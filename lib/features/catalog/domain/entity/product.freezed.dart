// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get priceDescription => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, String> get characteristics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String name,
      bool isFavorite,
      double price,
      String priceDescription,
      String cover,
      String description,
      Map<String, String> characteristics});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isFavorite = null,
    Object? price = null,
    Object? priceDescription = null,
    Object? cover = null,
    Object? description = null,
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceDescription: null == priceDescription
          ? _value.priceDescription
          : priceDescription // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      bool isFavorite,
      double price,
      String priceDescription,
      String cover,
      String description,
      Map<String, String> characteristics});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isFavorite = null,
    Object? price = null,
    Object? priceDescription = null,
    Object? cover = null,
    Object? description = null,
    Object? characteristics = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceDescription: null == priceDescription
          ? _value.priceDescription
          : priceDescription // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      characteristics: null == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.isFavorite,
      required this.price,
      required this.priceDescription,
      required this.cover,
      required this.description,
      final Map<String, String> characteristics = const {}})
      : _characteristics = characteristics;

  @override
  final int id;
  @override
  final String name;
  @override
  final bool isFavorite;
  @override
  final double price;
  @override
  final String priceDescription;
  @override
  final String cover;
  @override
  final String description;
  final Map<String, String> _characteristics;
  @override
  @JsonKey()
  Map<String, String> get characteristics {
    if (_characteristics is EqualUnmodifiableMapView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_characteristics);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, isFavorite: $isFavorite, price: $price, priceDescription: $priceDescription, cover: $cover, description: $description, characteristics: $characteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceDescription, priceDescription) ||
                other.priceDescription == priceDescription) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._characteristics, _characteristics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isFavorite,
      price,
      priceDescription,
      cover,
      description,
      const DeepCollectionEquality().hash(_characteristics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      required final String name,
      required final bool isFavorite,
      required final double price,
      required final String priceDescription,
      required final String cover,
      required final String description,
      final Map<String, String> characteristics}) = _$ProductImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get isFavorite;
  @override
  double get price;
  @override
  String get priceDescription;
  @override
  String get cover;
  @override
  String get description;
  @override
  Map<String, String> get characteristics;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
