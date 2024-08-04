// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isSystem) setSystemTheme,
    required TResult Function(bool isDark) setUserSpecifiedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isSystem)? setSystemTheme,
    TResult? Function(bool isDark)? setUserSpecifiedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isSystem)? setSystemTheme,
    TResult Function(bool isDark)? setUserSpecifiedTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSystemTheme value) setSystemTheme,
    required TResult Function(_SetUserSpecifiedTheme value)
        setUserSpecifiedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetSystemTheme value)? setSystemTheme,
    TResult? Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSystemTheme value)? setSystemTheme,
    TResult Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

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
    extends _$ThemeEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ThemeEvent.started()';
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
    required TResult Function(bool isSystem) setSystemTheme,
    required TResult Function(bool isDark) setUserSpecifiedTheme,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isSystem)? setSystemTheme,
    TResult? Function(bool isDark)? setUserSpecifiedTheme,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isSystem)? setSystemTheme,
    TResult Function(bool isDark)? setUserSpecifiedTheme,
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
    required TResult Function(_SetSystemTheme value) setSystemTheme,
    required TResult Function(_SetUserSpecifiedTheme value)
        setUserSpecifiedTheme,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetSystemTheme value)? setSystemTheme,
    TResult? Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSystemTheme value)? setSystemTheme,
    TResult Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ThemeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetSystemThemeImplCopyWith<$Res> {
  factory _$$SetSystemThemeImplCopyWith(_$SetSystemThemeImpl value,
          $Res Function(_$SetSystemThemeImpl) then) =
      __$$SetSystemThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSystem});
}

/// @nodoc
class __$$SetSystemThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$SetSystemThemeImpl>
    implements _$$SetSystemThemeImplCopyWith<$Res> {
  __$$SetSystemThemeImplCopyWithImpl(
      _$SetSystemThemeImpl _value, $Res Function(_$SetSystemThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSystem = null,
  }) {
    return _then(_$SetSystemThemeImpl(
      null == isSystem
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetSystemThemeImpl implements _SetSystemTheme {
  const _$SetSystemThemeImpl(this.isSystem);

  @override
  final bool isSystem;

  @override
  String toString() {
    return 'ThemeEvent.setSystemTheme(isSystem: $isSystem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSystemThemeImpl &&
            (identical(other.isSystem, isSystem) ||
                other.isSystem == isSystem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSystem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSystemThemeImplCopyWith<_$SetSystemThemeImpl> get copyWith =>
      __$$SetSystemThemeImplCopyWithImpl<_$SetSystemThemeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isSystem) setSystemTheme,
    required TResult Function(bool isDark) setUserSpecifiedTheme,
  }) {
    return setSystemTheme(isSystem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isSystem)? setSystemTheme,
    TResult? Function(bool isDark)? setUserSpecifiedTheme,
  }) {
    return setSystemTheme?.call(isSystem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isSystem)? setSystemTheme,
    TResult Function(bool isDark)? setUserSpecifiedTheme,
    required TResult orElse(),
  }) {
    if (setSystemTheme != null) {
      return setSystemTheme(isSystem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSystemTheme value) setSystemTheme,
    required TResult Function(_SetUserSpecifiedTheme value)
        setUserSpecifiedTheme,
  }) {
    return setSystemTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetSystemTheme value)? setSystemTheme,
    TResult? Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
  }) {
    return setSystemTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSystemTheme value)? setSystemTheme,
    TResult Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
    required TResult orElse(),
  }) {
    if (setSystemTheme != null) {
      return setSystemTheme(this);
    }
    return orElse();
  }
}

abstract class _SetSystemTheme implements ThemeEvent {
  const factory _SetSystemTheme(final bool isSystem) = _$SetSystemThemeImpl;

  bool get isSystem;
  @JsonKey(ignore: true)
  _$$SetSystemThemeImplCopyWith<_$SetSystemThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetUserSpecifiedThemeImplCopyWith<$Res> {
  factory _$$SetUserSpecifiedThemeImplCopyWith(
          _$SetUserSpecifiedThemeImpl value,
          $Res Function(_$SetUserSpecifiedThemeImpl) then) =
      __$$SetUserSpecifiedThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$SetUserSpecifiedThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$SetUserSpecifiedThemeImpl>
    implements _$$SetUserSpecifiedThemeImplCopyWith<$Res> {
  __$$SetUserSpecifiedThemeImplCopyWithImpl(_$SetUserSpecifiedThemeImpl _value,
      $Res Function(_$SetUserSpecifiedThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$SetUserSpecifiedThemeImpl(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetUserSpecifiedThemeImpl implements _SetUserSpecifiedTheme {
  const _$SetUserSpecifiedThemeImpl(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'ThemeEvent.setUserSpecifiedTheme(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserSpecifiedThemeImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserSpecifiedThemeImplCopyWith<_$SetUserSpecifiedThemeImpl>
      get copyWith => __$$SetUserSpecifiedThemeImplCopyWithImpl<
          _$SetUserSpecifiedThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isSystem) setSystemTheme,
    required TResult Function(bool isDark) setUserSpecifiedTheme,
  }) {
    return setUserSpecifiedTheme(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isSystem)? setSystemTheme,
    TResult? Function(bool isDark)? setUserSpecifiedTheme,
  }) {
    return setUserSpecifiedTheme?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isSystem)? setSystemTheme,
    TResult Function(bool isDark)? setUserSpecifiedTheme,
    required TResult orElse(),
  }) {
    if (setUserSpecifiedTheme != null) {
      return setUserSpecifiedTheme(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetSystemTheme value) setSystemTheme,
    required TResult Function(_SetUserSpecifiedTheme value)
        setUserSpecifiedTheme,
  }) {
    return setUserSpecifiedTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetSystemTheme value)? setSystemTheme,
    TResult? Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
  }) {
    return setUserSpecifiedTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetSystemTheme value)? setSystemTheme,
    TResult Function(_SetUserSpecifiedTheme value)? setUserSpecifiedTheme,
    required TResult orElse(),
  }) {
    if (setUserSpecifiedTheme != null) {
      return setUserSpecifiedTheme(this);
    }
    return orElse();
  }
}

abstract class _SetUserSpecifiedTheme implements ThemeEvent {
  const factory _SetUserSpecifiedTheme(final bool isDark) =
      _$SetUserSpecifiedThemeImpl;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$SetUserSpecifiedThemeImplCopyWith<_$SetUserSpecifiedThemeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ThemeViewState data) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ThemeViewState data)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ThemeViewState data)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ThemeState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ThemeViewState data) ready,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ThemeViewState data)? ready,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ThemeViewState data)? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Ready value) ready,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Ready value)? ready,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ThemeState {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeViewState data});

  $ThemeViewStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ReadyImpl>
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
              as ThemeViewState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ThemeViewStateCopyWith<$Res> get data {
    return $ThemeViewStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements Ready {
  const _$ReadyImpl(this.data);

  @override
  final ThemeViewState data;

  @override
  String toString() {
    return 'ThemeState.ready(data: $data)';
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
    required TResult Function() init,
    required TResult Function(ThemeViewState data) ready,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ThemeViewState data)? ready,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ThemeViewState data)? ready,
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
    required TResult Function(Init value) init,
    required TResult Function(Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements ThemeState {
  const factory Ready(final ThemeViewState data) = _$ReadyImpl;

  ThemeViewState get data;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
