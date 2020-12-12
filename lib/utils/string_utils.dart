extension StringUtils on String {
  String toInitial() {
    if (this == null || this.isEmpty) {
      return "";
    }
    return this[0];
  }
}
