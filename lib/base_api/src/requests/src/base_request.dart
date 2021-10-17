import 'package:flutter_extensible_api/api/api.dart';

import '../../requests_visitor.dart';

export '../../requests_visitor.dart';

abstract class BaseRequest<T> extends Request<T, RequestsVisitor> {}
