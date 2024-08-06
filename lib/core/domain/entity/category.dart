// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    required String iconInactive,
    required String iconActive,
  }) = _Category;
}
