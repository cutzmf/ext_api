import 'dart:async';

import 'requests/requests.dart';

abstract class RequestsVisitor {
  FutureOr<MyUserResponse> visitMyUserRequest(MyUserRequest request);

  FutureOr<void> visitLogoutRequest(LogoutRequest request);
}
