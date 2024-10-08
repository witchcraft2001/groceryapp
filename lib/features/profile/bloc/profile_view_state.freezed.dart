// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileViewState {
  String? get avatar => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileViewStateCopyWith<ProfileViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileViewStateCopyWith<$Res> {
  factory $ProfileViewStateCopyWith(
          ProfileViewState value, $Res Function(ProfileViewState) then) =
      _$ProfileViewStateCopyWithImpl<$Res, ProfileViewState>;
  @useResult
  $Res call({String? avatar, String firstName});
}

/// @nodoc
class _$ProfileViewStateCopyWithImpl<$Res, $Val extends ProfileViewState>
    implements $ProfileViewStateCopyWith<$Res> {
  _$ProfileViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? firstName = null,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileViewStateImplCopyWith<$Res>
    implements $ProfileViewStateCopyWith<$Res> {
  factory _$$ProfileViewStateImplCopyWith(_$ProfileViewStateImpl value,
          $Res Function(_$ProfileViewStateImpl) then) =
      __$$ProfileViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? avatar, String firstName});
}

/// @nodoc
class __$$ProfileViewStateImplCopyWithImpl<$Res>
    extends _$ProfileViewStateCopyWithImpl<$Res, _$ProfileViewStateImpl>
    implements _$$ProfileViewStateImplCopyWith<$Res> {
  __$$ProfileViewStateImplCopyWithImpl(_$ProfileViewStateImpl _value,
      $Res Function(_$ProfileViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? firstName = null,
  }) {
    return _then(_$ProfileViewStateImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileViewStateImpl implements _ProfileViewState {
  const _$ProfileViewStateImpl({this.avatar = null, required this.firstName});

  @override
  @JsonKey()
  final String? avatar;
  @override
  final String firstName;

  @override
  String toString() {
    return 'ProfileViewState(avatar: $avatar, firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileViewStateImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileViewStateImplCopyWith<_$ProfileViewStateImpl> get copyWith =>
      __$$ProfileViewStateImplCopyWithImpl<_$ProfileViewStateImpl>(
          this, _$identity);
}

abstract class _ProfileViewState implements ProfileViewState {
  const factory _ProfileViewState(
      {final String? avatar,
      required final String firstName}) = _$ProfileViewStateImpl;

  @override
  String? get avatar;
  @override
  String get firstName;
  @override
  @JsonKey(ignore: true)
  _$$ProfileViewStateImplCopyWith<_$ProfileViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
