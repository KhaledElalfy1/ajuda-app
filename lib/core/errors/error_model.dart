class ErrorModel {
  final String message;
  final int statusCode;

  ErrorModel({required this.message, required this.statusCode});

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      message: jsonData['message'],
      statusCode: jsonData['statusCode'],
    );
  }
}
