import 'dart:async';

import 'base_request.dart';

class LogoutRequest extends BaseRequest<void> {
  @override
  FutureOr<void> accept(RequestsVisitor visitor) => visitor.visitLogoutRequest(this);
}
