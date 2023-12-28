// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiReference {
  ApiReference._();

  /* -------------------------------- Api Post ------------------------------- */
  static Future<dynamic> apiPost(
    String? url,
    Map<String, dynamic>? body,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(url!),
        headers: {
          'Content-Type': 'multipart/form-data',
        },
        body: jsonEncode(body!),
      );
      log(body.toString());
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Exception-Occurred");
      }
    } on SocketException {
      throw Exception("Exception-Occurred");
    }
  }

  /* -------------------------------- Api Get ------------------------------- */
  static Future<dynamic> apiGet(
    String? url,
  ) async {
    try {
      final response = await http.get(
        Uri.parse(url!),
        headers: {
          'Content-Type': "application/json",
        },
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        Exception("Exception-Occurred");
      }
    } on SocketException {
      Exception("Exception-Occurred");
    }
  }
}
