class ErrorModel {
  final String message;
  final bool isAuthenticated;

  ErrorModel({required this.message, required this.isAuthenticated});

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      message: jsonData['message'],
      isAuthenticated: jsonData['isAuthenticated'],
    );
  }
}
