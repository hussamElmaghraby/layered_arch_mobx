class StateNotFound<T> implements Exception {
  late final T data;

  StateNotFound(this.data);

  @override
  String toString() {
    return 'Current state is not found $T';
  }
}
