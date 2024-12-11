

class AuthModel {
  final String? message;
  final bool isAuthenticated;
  final String userName;
  final String email;
  final List role;
  final String token;
  final String expiresOn;
  final String refreshTokenExpiration;
  AuthModel({
    this.message,
    required this.isAuthenticated,
    required this.userName,
    required this.email,
    required this.role,
    required this.token,
    required this.expiresOn,
    required this.refreshTokenExpiration,
  });

  factory AuthModel.fromJson(Map<String, dynamic> jsonData) {
    return AuthModel(
      message: jsonData['message'] ?? "",
      isAuthenticated: jsonData['isAuthenticated'],
      userName: jsonData["userName"],
      email: jsonData["email"],
      role: List<String>.from(jsonData["roles"] ?? []),
      token: jsonData["token"],
      expiresOn: jsonData["expiresOn"],
      refreshTokenExpiration: jsonData["refreshTokenExpiration"],
    );
  }
}
