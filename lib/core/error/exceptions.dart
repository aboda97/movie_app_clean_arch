import 'package:movie_app/core/network/error_message_model.dart';

class ServerException {
  final ErrorMessageModel errorMessage;

  ServerException({
    required this.errorMessage,
  });
}
