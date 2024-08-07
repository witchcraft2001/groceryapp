// Dart imports:
import 'dart:math';

extension DoubleExtensions on double {
  String toPlainString() {
    var integer = toInt();

    return integer.toDouble() != this ? toString() : integer.toString();
  }

  double roundToPlaces(int places) {
    final mod = pow(10, places);
    return ((this * mod).round().toDouble() / mod);
  }

  double ceilToPlaces(int places) {
    final mod = pow(10, places);
    return ((this * mod).ceil().toDouble() / mod);
  }
}
