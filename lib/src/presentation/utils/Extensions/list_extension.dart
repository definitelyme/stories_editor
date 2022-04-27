extension NullIterableX<A> on Iterable<A> {
  A? elementAtOrNull(int? index) {
    if (index == null || index < 0 || isEmpty || index >= length) return null;

    return elementAt(index);
  }
}

extension NullDynamicListX on dynamic {
  dynamic elementAtOrNull(int? index) {
    if (this is Iterable) {
      final isEmpty = (this is Iterable && (this.isEmpty as bool));
      final length = isEmpty ? 0 : (this.length as int);

      if (index == null || index < 0 || isEmpty || index >= length) return null;

      return elementAt(index);
    }
  }
}
