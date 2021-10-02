import 'package:flutter/material.dart';
import 'package:travel_app/auth/authentication.service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService authenticationService =
      new AuthenticationService();

  Future<String> signup({
    String name,
    String confirmpassword,
    String email,
    String password,
  }) async {
    try {
      await authenticationService.signup(email: email, password: password);
    } catch (e) {
      print(e);
    }
  }

  Future<String> login({
    String email,
    String password,
  }) async {
    try {
      await authenticationService.login(email: email, password: password);
    } catch (e) {
      print(e);
    }
  }
}
