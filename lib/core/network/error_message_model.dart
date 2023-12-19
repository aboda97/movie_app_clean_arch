import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final bool success;
  final int statusCode;
  final String statusMsg;

  const ErrorMessageModel({
    required this.success,
    required this.statusCode,
    required this.statusMsg,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      success: json['success'],
      statusCode: json['status_code'],
      statusMsg: json['status_message'],
    );
  }
  @override
  List<Object?> get props => [
        success,
        statusCode,
        statusMsg,
      ];
}
