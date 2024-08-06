extension DoubleExtensions on double {
  String toPlainString() {
    var integer = toInt();

    return integer.toDouble() != this ? toString() : integer.toString();
  }
}
