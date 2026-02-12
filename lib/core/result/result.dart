class Result<T, E> {
  const Result();

  R when<R>({
    required R Function(T value) success,
    required R Function(E error) error,
  }) {
    final Result<T, E> self = this;
    if (self is ResultSuccess<T, E>) {
      return success(self.value);
    }
    return error((self as ResultError<T, E>).errorValue);
  }
}

class ResultSuccess<T, E> extends Result<T, E> {
  final T value;

  const ResultSuccess(this.value);
}

class ResultError<T, E> extends Result<T, E> {
  const ResultError(this.errorValue);

  final E errorValue;
}
