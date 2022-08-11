extension LExt<T> on List<T> {
  List<T> reverseTo(bool shouldReverse) =>
      shouldReverse ? reversed.toList() : this;
}
