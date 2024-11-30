import 'package:fake_async/fake_async.dart';

T runAsync<T>(T Function() callback,
    {Duration elapsed = const Duration(seconds: 5)}) {
  return fakeAsync((fs) {
    return fs.run((_) {
      final outcome = callback();
      fs.elapse(elapsed);
      return outcome;
    });
  });
}
