// Project imports:

// Project imports:
import 'app_exception.dart';

class CommonException extends AppException {
  final String message;

  CommonException(this.message);

  @override
  List<Object?> get props => [message];
}
