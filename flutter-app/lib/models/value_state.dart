sealed class ValueState<E, A> {}

class LoadingState<E, A> extends ValueState<E, A> {
  final String message;

  LoadingState(this.message);
}

class FailedState<E, A> extends ValueState<E, A> {
  final E error;
  FailedState(this.error);
}

class SuccessState<E, A> extends ValueState<E, A> {
  final A value;
  SuccessState(this.value);
}

class Undefined<E, A> extends ValueState<E, A> {
  final String message;

  Undefined(this.message);

}
