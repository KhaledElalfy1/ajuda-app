// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class AuthModel {
  final String? message;
  final bool isAuthenticated;
  final String userName;
  final String email;
  final List role;
  final String token;
  AuthModel({
    this.message,
    required this.isAuthenticated,
    required this.userName,
    required this.email,
    required this.role,
    required this.token,
  });

  AuthModel copyWith({
    String? message,
    bool? isAuthenticated,
    String? userName,
    String? email,
    List? role,
    String? token,
  }) {
    return AuthModel(
      message: message ?? this.message,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      role: role ?? this.role,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'isAuthenticated': isAuthenticated,
      'userName': userName,
      'email': email,
      'role': role,
      'token': token,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      message: map['message'] != null ? map['message'] as String : null,
      isAuthenticated: map['isAuthenticated'] as bool,
      userName: map['userName'] as String,
      email: map['email'] as String,
      role: List.from((map['role'] as List)),
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AuthModel(message: $message, isAuthenticated: $isAuthenticated, userName: $userName, email: $email, role: $role, token: $token)';
  }

  @override
  bool operator ==(covariant AuthModel other) {
    if (identical(this, other)) return true;

    return other.message == message &&
        other.isAuthenticated == isAuthenticated &&
        other.userName == userName &&
        other.email == email &&
        listEquals(other.role, role) &&
        other.token == token;
  }

  @override
  int get hashCode {
    return message.hashCode ^
        isAuthenticated.hashCode ^
        userName.hashCode ^
        email.hashCode ^
        role.hashCode ^
        token.hashCode;
  }
}
