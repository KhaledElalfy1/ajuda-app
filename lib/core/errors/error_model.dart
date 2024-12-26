class ErrorModel {
  final String message;
  final int statusCode;
  final List<dynamic>? errors;
  
ErrorModel({required this.message, required this.statusCode,  this.errors});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      message: jsonData['message'],
      statusCode: jsonData['statusCode'],
      errors: jsonData['errors'],
    );
  }

  
}
