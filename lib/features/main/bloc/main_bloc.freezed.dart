// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) onPageChanged,
    required TResult Function(int count) onFavoritesCountChanged,
    required TResult Function(int count) onCartPositionsCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? onPageChanged,
    TResult? Function(int count)? onFavoritesCountChanged,
    TResult? Function(int count)? onCartPositionsCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? onPageChanged,
    TResult Function(int count)? onFavoritesCountChanged,
    TResult Function(int count)? onCartPositionsCountChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnPageChanged value) onPageChanged,
    required TResult Function(_OnFavoritesCountChanged value)
        onFavoritesCountChanged,
    required TResult Function(_OnCartPositionsCountChanged value)
        onCartPositionsCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPageChanged value)? onPageChanged,
    TResult? Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult? Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPageChanged value)? onPageChanged,
    TResult Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

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
    extends _$MainEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'MainEvent.started()';
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
    required TResult Function(int index) onPageChanged,
    required TResult Function(int count) onFavoritesCountChanged,
    required TResult Function(int count) onCartPositionsCountChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? onPageChanged,
    TResult? Function(int count)? onFavoritesCountChanged,
    TResult? Function(int count)? onCartPositionsCountChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? onPageChanged,
    TResult Function(int count)? onFavoritesCountChanged,
    TResult Function(int count)? onCartPositionsCountChanged,
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
    required TResult Function(_OnPageChanged value) onPageChanged,
    required TResult Function(_OnFavoritesCountChanged value)
        onFavoritesCountChanged,
    required TResult Function(_OnCartPositionsCountChanged value)
        onCartPositionsCountChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPageChanged value)? onPageChanged,
    TResult? Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult? Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPageChanged value)? onPageChanged,
    TResult Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnPageChangedImplCopyWith<$Res> {
  factory _$$OnPageChangedImplCopyWith(
          _$OnPageChangedImpl value, $Res Function(_$OnPageChangedImpl) then) =
      __$$OnPageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnPageChangedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$OnPageChangedImpl>
    implements _$$OnPageChangedImplCopyWith<$Res> {
  __$$OnPageChangedImplCopyWithImpl(
      _$OnPageChangedImpl _value, $Res Function(_$OnPageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$OnPageChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnPageChangedImpl implements _OnPageChanged {
  const _$OnPageChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MainEvent.onPageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPageChangedImplCopyWith<_$OnPageChangedImpl> get copyWith =>
      __$$OnPageChangedImplCopyWithImpl<_$OnPageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) onPageChanged,
    required TResult Function(int count) onFavoritesCountChanged,
    required TResult Function(int count) onCartPositionsCountChanged,
  }) {
    return onPageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? onPageChanged,
    TResult? Function(int count)? onFavoritesCountChanged,
    TResult? Function(int count)? onCartPositionsCountChanged,
  }) {
    return onPageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? onPageChanged,
    TResult Function(int count)? onFavoritesCountChanged,
    TResult Function(int count)? onCartPositionsCountChanged,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnPageChanged value) onPageChanged,
    required TResult Function(_OnFavoritesCountChanged value)
        onFavoritesCountChanged,
    required TResult Function(_OnCartPositionsCountChanged value)
        onCartPositionsCountChanged,
  }) {
    return onPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPageChanged value)? onPageChanged,
    TResult? Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult? Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
  }) {
    return onPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPageChanged value)? onPageChanged,
    TResult Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(this);
    }
    return orElse();
  }
}

abstract class _OnPageChanged implements MainEvent {
  const factory _OnPageChanged(final int index) = _$OnPageChangedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$OnPageChangedImplCopyWith<_$OnPageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFavoritesCountChangedImplCopyWith<$Res> {
  factory _$$OnFavoritesCountChangedImplCopyWith(
          _$OnFavoritesCountChangedImpl value,
          $Res Function(_$OnFavoritesCountChangedImpl) then) =
      __$$OnFavoritesCountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$OnFavoritesCountChangedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$OnFavoritesCountChangedImpl>
    implements _$$OnFavoritesCountChangedImplCopyWith<$Res> {
  __$$OnFavoritesCountChangedImplCopyWithImpl(
      _$OnFavoritesCountChangedImpl _value,
      $Res Function(_$OnFavoritesCountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$OnFavoritesCountChangedImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnFavoritesCountChangedImpl implements _OnFavoritesCountChanged {
  const _$OnFavoritesCountChangedImpl(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'MainEvent.onFavoritesCountChanged(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFavoritesCountChangedImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFavoritesCountChangedImplCopyWith<_$OnFavoritesCountChangedImpl>
      get copyWith => __$$OnFavoritesCountChangedImplCopyWithImpl<
          _$OnFavoritesCountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) onPageChanged,
    required TResult Function(int count) onFavoritesCountChanged,
    required TResult Function(int count) onCartPositionsCountChanged,
  }) {
    return onFavoritesCountChanged(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? onPageChanged,
    TResult? Function(int count)? onFavoritesCountChanged,
    TResult? Function(int count)? onCartPositionsCountChanged,
  }) {
    return onFavoritesCountChanged?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? onPageChanged,
    TResult Function(int count)? onFavoritesCountChanged,
    TResult Function(int count)? onCartPositionsCountChanged,
    required TResult orElse(),
  }) {
    if (onFavoritesCountChanged != null) {
      return onFavoritesCountChanged(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnPageChanged value) onPageChanged,
    required TResult Function(_OnFavoritesCountChanged value)
        onFavoritesCountChanged,
    required TResult Function(_OnCartPositionsCountChanged value)
        onCartPositionsCountChanged,
  }) {
    return onFavoritesCountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPageChanged value)? onPageChanged,
    TResult? Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult? Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
  }) {
    return onFavoritesCountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPageChanged value)? onPageChanged,
    TResult Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
    required TResult orElse(),
  }) {
    if (onFavoritesCountChanged != null) {
      return onFavoritesCountChanged(this);
    }
    return orElse();
  }
}

abstract class _OnFavoritesCountChanged implements MainEvent {
  const factory _OnFavoritesCountChanged(final int count) =
      _$OnFavoritesCountChangedImpl;

  int get count;
  @JsonKey(ignore: true)
  _$$OnFavoritesCountChangedImplCopyWith<_$OnFavoritesCountChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCartPositionsCountChangedImplCopyWith<$Res> {
  factory _$$OnCartPositionsCountChangedImplCopyWith(
          _$OnCartPositionsCountChangedImpl value,
          $Res Function(_$OnCartPositionsCountChangedImpl) then) =
      __$$OnCartPositionsCountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$OnCartPositionsCountChangedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$OnCartPositionsCountChangedImpl>
    implements _$$OnCartPositionsCountChangedImplCopyWith<$Res> {
  __$$OnCartPositionsCountChangedImplCopyWithImpl(
      _$OnCartPositionsCountChangedImpl _value,
      $Res Function(_$OnCartPositionsCountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$OnCartPositionsCountChangedImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnCartPositionsCountChangedImpl
    implements _OnCartPositionsCountChanged {
  const _$OnCartPositionsCountChangedImpl(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'MainEvent.onCartPositionsCountChanged(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCartPositionsCountChangedImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCartPositionsCountChangedImplCopyWith<_$OnCartPositionsCountChangedImpl>
      get copyWith => __$$OnCartPositionsCountChangedImplCopyWithImpl<
          _$OnCartPositionsCountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) onPageChanged,
    required TResult Function(int count) onFavoritesCountChanged,
    required TResult Function(int count) onCartPositionsCountChanged,
  }) {
    return onCartPositionsCountChanged(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? onPageChanged,
    TResult? Function(int count)? onFavoritesCountChanged,
    TResult? Function(int count)? onCartPositionsCountChanged,
  }) {
    return onCartPositionsCountChanged?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? onPageChanged,
    TResult Function(int count)? onFavoritesCountChanged,
    TResult Function(int count)? onCartPositionsCountChanged,
    required TResult orElse(),
  }) {
    if (onCartPositionsCountChanged != null) {
      return onCartPositionsCountChanged(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnPageChanged value) onPageChanged,
    required TResult Function(_OnFavoritesCountChanged value)
        onFavoritesCountChanged,
    required TResult Function(_OnCartPositionsCountChanged value)
        onCartPositionsCountChanged,
  }) {
    return onCartPositionsCountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPageChanged value)? onPageChanged,
    TResult? Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult? Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
  }) {
    return onCartPositionsCountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPageChanged value)? onPageChanged,
    TResult Function(_OnFavoritesCountChanged value)? onFavoritesCountChanged,
    TResult Function(_OnCartPositionsCountChanged value)?
        onCartPositionsCountChanged,
    required TResult orElse(),
  }) {
    if (onCartPositionsCountChanged != null) {
      return onCartPositionsCountChanged(this);
    }
    return orElse();
  }
}

abstract class _OnCartPositionsCountChanged implements MainEvent {
  const factory _OnCartPositionsCountChanged(final int count) =
      _$OnCartPositionsCountChangedImpl;

  int get count;
  @JsonKey(ignore: true)
  _$$OnCartPositionsCountChangedImplCopyWith<_$OnCartPositionsCountChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  int get currentPage => throw _privateConstructorUsedError;
  int get cartPositionCount => throw _privateConstructorUsedError;
  int get favoritesCount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int currentPage, int cartPositionCount, int favoritesCount)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int currentPage, int cartPositionCount, int favoritesCount)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int currentPage, int cartPositionCount, int favoritesCount)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({int currentPage, int cartPositionCount, int favoritesCount});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? cartPositionCount = null,
    Object? favoritesCount = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      cartPositionCount: null == cartPositionCount
          ? _value.cartPositionCount
          : cartPositionCount // ignore: cast_nullable_to_non_nullable
              as int,
      favoritesCount: null == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, int cartPositionCount, int favoritesCount});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? cartPositionCount = null,
    Object? favoritesCount = null,
  }) {
    return _then(_$ReadyImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      null == cartPositionCount
          ? _value.cartPositionCount
          : cartPositionCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements Ready {
  const _$ReadyImpl(
      this.currentPage, this.cartPositionCount, this.favoritesCount);

  @override
  final int currentPage;
  @override
  final int cartPositionCount;
  @override
  final int favoritesCount;

  @override
  String toString() {
    return 'MainState.ready(currentPage: $currentPage, cartPositionCount: $cartPositionCount, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.cartPositionCount, cartPositionCount) ||
                other.cartPositionCount == cartPositionCount) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, cartPositionCount, favoritesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int currentPage, int cartPositionCount, int favoritesCount)
        ready,
  }) {
    return ready(currentPage, cartPositionCount, favoritesCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int currentPage, int cartPositionCount, int favoritesCount)?
        ready,
  }) {
    return ready?.call(currentPage, cartPositionCount, favoritesCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int currentPage, int cartPositionCount, int favoritesCount)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(currentPage, cartPositionCount, favoritesCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements MainState {
  const factory Ready(final int currentPage, final int cartPositionCount,
      final int favoritesCount) = _$ReadyImpl;

  @override
  int get currentPage;
  @override
  int get cartPositionCount;
  @override
  int get favoritesCount;
  @override
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
