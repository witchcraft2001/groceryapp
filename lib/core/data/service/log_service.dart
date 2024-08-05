// Package imports:
import 'package:injectable/injectable.dart';

@lazySingleton
class LogService {
  Future<void> recordError(
      dynamic exception,
      StackTrace? stack, {
        dynamic reason,
        Iterable<Object> information = const [],
        bool? printDetails,
        bool fatal = false,
      }) async {
    // it can be:
    // await FirebaseCrashlytics.instance.recordError(
    //   exception,
    //   stack,
    //   reason: reason,
    //   information: information,
    //   printDetails: printDetails,
    //   fatal: fatal,
    // );
  }

  Future<void> log(String message) async {
    // it can be:
    // await FirebaseCrashlytics.instance.log(message);
  }
}
