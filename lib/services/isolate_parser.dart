import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

typedef ResponseConverter<T> = T Function(String response);

class IsolateParser<T> {
  final String json;

  ResponseConverter<T> converter;

  IsolateParser(this.json, this.converter);

  Future<T> parseInBackground() async {
    if (kIsWeb) {
      final result = converter(json);
      return result;
    } else {
      final port = ReceivePort();
      await Isolate.spawn(_parseListOfJson, port.sendPort);

      final result = await port.first;
      return result as T;
    }
  }

  Future<void> _parseListOfJson(SendPort sendPort) async {
    final result = converter(json);
    Isolate.exit(sendPort, result);
  }
}

class IsolateLogger {
  final String reqHeaders;
  final String resHeaders;
  final String request;
  final String status;
  final String body;
  IsolateLogger(this.reqHeaders, this.resHeaders, this.request, this.status, this.body);

  Future<void> logInBackground() async {
    if (kIsWeb) {
      Logger().i(
        'REQ Headers: $reqHeaders\n'
        'RES Headers: $resHeaders\n'
        'REQUEST\n >> $request\n'
        'STATUS\n >> $status\n'
        'BODY\n >> $body',
      );
    } else {
      final port = ReceivePort();
      await Isolate.spawn(_parseListOfJson, port.sendPort);
    }
  }

  Future<void> _parseListOfJson(SendPort sendPort) async {
    Logger().i(
      'REQ Headers: $reqHeaders\n'
      'RES Headers: $resHeaders\n'
      'REQUEST\n >> $request\n'
      'STATUS\n >> $status\n'
      'BODY\n >> $body',
    );
    Isolate.exit(sendPort);
  }
}
