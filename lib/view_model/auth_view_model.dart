import 'package:flutter/material.dart';

import '../model/user_data.dart';
import '../services/api_services.dart';

class AuthViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  bool _isLoading = false;
  String? _errorMessage;
  String _role = 'Individual'; // Default role

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  String get role => _role;

  void setRole(String role) {
    _role = role;
    notifyListeners();
  }

  Future<void> signIn(String email, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      await _apiService.signIn(email, password);
      // Handle successful sign-in
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signUp(User user) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      await _apiService.signUp(user);
      // Handle successful sign-up
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
