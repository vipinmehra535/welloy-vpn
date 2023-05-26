import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:wolly_vpn/pages/login.dart';

class API {
  BuildContext? context;
  API({this.context});

  final String baseUrl = "https://api.vpnresellers.com/v3_1";

  int connectionTimeoutDurationInSec = 30;

  Future<dynamic> signup({
    required String username,
    required String password,
  }) async {
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    if (kDebugMode) {
      print('signup body: $body');
    }

    var res = await http
        .post(
      Uri.parse('$baseUrl/accounts'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer {token}',
      },
      body: body,
    )
        .catchError((e) {
      if (kDebugMode) {
        print('signup failure: $e');
      }
    }).timeout(
      Duration(seconds: connectionTimeoutDurationInSec),
      onTimeout: () {
        Fluttertoast.showToast(msg: 'connection time out');
        return http.Response(
            'Error', 408); // Request Timeout response status code
      },
    );

    if (kDebugMode) {
      print('signup: ${res.body}');
      print('signup statusCode: ${res.statusCode}');
    }

    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else if (res.statusCode == 401) {
      Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (ctx) => const Login()),
        (route) => false,
      );
      Fluttertoast.showToast(msg: 'Unauthorized access');
    }
  }
}
