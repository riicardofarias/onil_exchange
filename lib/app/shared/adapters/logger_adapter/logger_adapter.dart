import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

abstract class ILoggerAdapter {
  void info(dynamic message);
  void error(dynamic message, { dynamic error, StackTrace? stackTrace });
  void debug(dynamic message);
  void warning(dynamic message);
}

class LoggerAdapter implements ILoggerAdapter {
  final Logger logger;

  LoggerAdapter(
      this.logger
      );

  @override
  void debug(dynamic message) {
    if (kDebugMode) {
      logger.d(message);
    }
  }

  @override
  void info(dynamic message) {
    if (kDebugMode) {
      logger.i(message);
    }
  }

  @override
  void error(dynamic message, { dynamic error, StackTrace? stackTrace }) {
    if (kDebugMode) {
      logger.e(message, error: error, stackTrace: stackTrace);
    }
  }

  @override
  void warning(dynamic message) {
    if (kDebugMode) {
      logger.w(message);
    }
  }
}