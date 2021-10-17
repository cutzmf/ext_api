import 'dart:async';

import 'package:flutter_extensible_api/api/api.dart';

import 'base_request.dart';

class MyUserRequest extends BaseRequest<MyUserResponse> {
  @override
  FutureOr<MyUserResponse> accept(RequestsVisitor visitor) => visitor.visitMyUserRequest(this);
}

class MyUserResponse extends Response {
  MyUserResponse(this.name);

  final String name;
}
