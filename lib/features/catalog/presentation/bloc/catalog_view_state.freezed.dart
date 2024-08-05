// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogViewState {
  bool get isCategoriesLoading => throw _privateConstructorUsedError;
  bool get isProductsLoading => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Category? get selectedCategory => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogViewStateCopyWith<CatalogViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogViewStateCopyWith<$Res> {
  factory $CatalogViewStateCopyWith(
          CatalogViewState value, $Res Function(CatalogViewState) then) =
      _$CatalogViewStateCopyWithImpl<$Res, CatalogViewState>;
  @useResult
  $Res call(
      {bool isCategoriesLoading,
      bool isProductsLoading,
      List<Category> categories,
      List<Product> products,
      Category? selectedCategory,
      bool isError});

  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class _$CatalogViewStateCopyWithImpl<$Res, $Val extends CatalogViewState>
    implements $CatalogViewStateCopyWith<$Res> {
  _$CatalogViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCategoriesLoading = null,
    Object? isProductsLoading = null,
    Object? categories = null,
    Object? products = null,
    Object? selectedCategory = freezed,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isCategoriesLoading: null == isCategoriesLoading
          ? _value.isCategoriesLoading
          : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductsLoading: null == isProductsLoading
          ? _value.isProductsLoading
          : isProductsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogViewStateImplCopyWith<$Res>
    implements $CatalogViewStateCopyWith<$Res> {
  factory _$$CatalogViewStateImplCopyWith(_$CatalogViewStateImpl value,
          $Res Function(_$CatalogViewStateImpl) then) =
      __$$CatalogViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCategoriesLoading,
      bool isProductsLoading,
      List<Category> categories,
      List<Product> products,
      Category? selectedCategory,
      bool isError});

  @override
  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$CatalogViewStateImplCopyWithImpl<$Res>
    extends _$CatalogViewStateCopyWithImpl<$Res, _$CatalogViewStateImpl>
    implements _$$CatalogViewStateImplCopyWith<$Res> {
  __$$CatalogViewStateImplCopyWithImpl(_$CatalogViewStateImpl _value,
      $Res Function(_$CatalogViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCategoriesLoading = null,
    Object? isProductsLoading = null,
    Object? categories = null,
    Object? products = null,
    Object? selectedCategory = freezed,
    Object? isError = null,
  }) {
    return _then(_$CatalogViewStateImpl(
      isCategoriesLoading: null == isCategoriesLoading
          ? _value.isCategoriesLoading
          : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductsLoading: null == isProductsLoading
          ? _value.isProductsLoading
          : isProductsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CatalogViewStateImpl implements _CatalogViewState {
  const _$CatalogViewStateImpl(
      {this.isCategoriesLoading = false,
      this.isProductsLoading = false,
      final List<Category> categories = const [],
      final List<Product> products = const [],
      this.selectedCategory = null,
      this.isError = false})
      : _categories = categories,
        _products = products;

  @override
  @JsonKey()
  final bool isCategoriesLoading;
  @override
  @JsonKey()
  final bool isProductsLoading;
  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final Category? selectedCategory;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'CatalogViewState(isCategoriesLoading: $isCategoriesLoading, isProductsLoading: $isProductsLoading, categories: $categories, products: $products, selectedCategory: $selectedCategory, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogViewStateImpl &&
            (identical(other.isCategoriesLoading, isCategoriesLoading) ||
                other.isCategoriesLoading == isCategoriesLoading) &&
            (identical(other.isProductsLoading, isProductsLoading) ||
                other.isProductsLoading == isProductsLoading) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCategoriesLoading,
      isProductsLoading,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products),
      selectedCategory,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogViewStateImplCopyWith<_$CatalogViewStateImpl> get copyWith =>
      __$$CatalogViewStateImplCopyWithImpl<_$CatalogViewStateImpl>(
          this, _$identity);
}

abstract class _CatalogViewState implements CatalogViewState {
  const factory _CatalogViewState(
      {final bool isCategoriesLoading,
      final bool isProductsLoading,
      final List<Category> categories,
      final List<Product> products,
      final Category? selectedCategory,
      final bool isError}) = _$CatalogViewStateImpl;

  @override
  bool get isCategoriesLoading;
  @override
  bool get isProductsLoading;
  @override
  List<Category> get categories;
  @override
  List<Product> get products;
  @override
  Category? get selectedCategory;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$CatalogViewStateImplCopyWith<_$CatalogViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
