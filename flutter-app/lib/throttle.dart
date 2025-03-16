import 'dart:async';

class Throttle<A> {
  final Duration _duration;
  final void Function(A) action;
  Timer? _timer;

  Throttle(this._duration, {required this.action});

  void call(A a) {
    _timer?.cancel();
    _timer = Timer(_duration, () => action(a));
  }
}
