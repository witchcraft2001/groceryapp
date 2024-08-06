// Project imports:

// Project imports:
import 'app_exception.dart';

class DataSourceException extends AppException {
  final String message;

  DataSourceException(this.message);

  @override
  List<Object?> get props => [message];
}
