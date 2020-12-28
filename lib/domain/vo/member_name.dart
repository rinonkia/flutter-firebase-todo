class MemberName {
  final String value;

  MemberName(this.value) {
    if (value == null || value.length < 2) {
      throw ArgumentError();
    }
  }
}
