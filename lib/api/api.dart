import 'dart:async';

abstract class Api<V> {
  FutureOr<T> invoke<T extends Response>(Request<T, V> request);
}

abstract class Response {
  final Map<String, Object> props = {};
}

abstract class Request<T, V> {
  final Map<String, Object> props = {};

  FutureOr<T> accept(V visitor);
}
