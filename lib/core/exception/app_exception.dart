// Package imports:
import 'package:equatable/equatable.dart';

abstract class AppException extends Equatable implements Exception {
  @override
  bool get stringify => true;
}
