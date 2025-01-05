import 'package:logger/logger.dart';

final logger = Logger();

Logger namedLogger(
  String name, {
  String? debug,
  String? trace,
  String? fatal,
  String? info,
  String? warning,
  String? error,
}) =>
    Logger(
      printer: PrefixPrinter(
        PrettyPrinter(),
        debug: debug ?? name,
        trace: debug ?? name,
        fatal: debug ?? name,
        info: debug ?? name,
        warning: debug ?? name,
        error: debug ?? name,
      ),
    );

Logger typedLogger(Type type) {
  final name = type.toString();
  return namedLogger(name);
}
