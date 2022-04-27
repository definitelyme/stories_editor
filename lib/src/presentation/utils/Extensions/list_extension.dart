extension NullIterableX<A> on Iterable<A> {
  A? elementAtOrNull(int? index) {
    if (index == null || index < 0 || isEmpty || index >= length) return null;

    return elementAt(index);
  }
}

extension NullListX<A> on List<A> {
  A? elementAtOrNull(int? index) {
    if (index == null || index < 0 || isEmpty || index >= length) return null;

    return elementAt(index);
  }
}

