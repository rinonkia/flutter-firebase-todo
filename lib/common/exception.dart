import 'package:meta/meta.dart';

enum ExceptionCode { unknown, member }

class GenericException implements Exception {
  final ExceptionCode code;
  final dynamic info;

  GenericException({this.code = ExceptionCode.unknown, this.info});

  @override
  String toString() {
    return '$runtimeType: ${code.value}';
  }

  String get message {
    switch (runtimeType) {
      case NotUniqueException:
        return '${code.value}: \nalready exists.';
      default:
        return 'Unknown error occurred.';
    }
  }
}

class NotUniqueException extends GenericException {
  NotUniqueException({@required ExceptionCode code, @required String value})
      : assert(code != null),
        super(code: code);
}

extension ExceptionCodeValue on ExceptionCode {
  String get value {
    switch (this) {
      case ExceptionCode.member:
        return 'Member';
      default:
        return 'Unknown';
    }
  }
}
