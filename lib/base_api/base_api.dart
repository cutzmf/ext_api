import 'dart:async';

import 'package:flutter_extensible_api/api/api.dart';

import 'src/requests/requests.dart';

export 'src/requests/requests.dart';

abstract class BaseApi extends Api<RequestsVisitor> implements RequestsVisitor {
  @override
  FutureOr<T> invoke<T extends Response>(Request<T, RequestsVisitor> request) => request.accept(this);
}
