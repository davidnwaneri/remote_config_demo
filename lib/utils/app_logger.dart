import 'dart:developer' as devtools show log;

extension AppLogger on Object? {
  void log() => devtools.log(toString());
}
