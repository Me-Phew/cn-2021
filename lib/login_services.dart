import 'dart:convert';
import 'package:http/http.dart' as http;
import 'http.dart';

Future<http.Response> loginUser(String email, String password) async {
  final response = await http.post(
    Uri.parse('http://localhost:3000/user/login'),
     headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  );
  return response;
}