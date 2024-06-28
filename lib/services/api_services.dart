import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/user_data.dart';

class ApiService {
  final String baseUrl = 'https://api.example.com';

  Future<bool> signIn(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signin'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      // Handle successful sign-in
      return true;
    } else {
      throw Exception('Failed to sign in');
    }
  }

  Future<bool> signUp(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signup'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(user.toJson()),
    );

    if (response.statusCode == 200) {
      // Handle successful sign-up
      return true;
    } else {
      throw Exception('Failed to sign up');
    }
  }
}
