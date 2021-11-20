import 'dart:convert';
import 'package:http/http.dart' as http;
import 'http.dart';

Future<http.Response> registerUser(String firstName, String lastName, String email, String role, String password, String confirmPassword) async {
  final response = await http.post(
    Uri.parse('http://localhost:3000/user/register'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'role': role,
      'password': password,
      'confirmPassword': confirmPassword,
    }),
  );

  return response;
}
