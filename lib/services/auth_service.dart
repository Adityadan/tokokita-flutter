import 'dart:convert';

import 'package:shamo/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'http://10.255.240.156/bwa-laravel-flutter/public/api';

  Future<UserModel> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    print([name, username, email, password, "register auth Service"]);
    var url = '$baseUrl/register';
    var header = {
      'content-type': 'application/json',
    };
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: header,
      body: body,
    );

    // NOTE : CEK RESPONSE
    // print([
    //   'Response header : ',
    //   response.headers,
    //   'Response body :' + response.body,
    //   'response status : ',
    //   jsonDecode(response.body)['status']
    // ]);
    // print(['register statusCode: ', response.statusCode]);

    var status = jsonDecode(response.body)['status'];
    var message = jsonDecode(response.body)['message'];

    if (response.statusCode == 200) {
      // if (status == 'error') {
      //   return (message);
      // }

      // NOTE : KIRIM RESPONSE BODY PADA USERMODAL
      var data = jsonDecode(response.body)['data'];
      print([data, 'data']);
      UserModel user = UserModel.fromJSON(data['user']);
      print([
        UserModel.fromJSON(data['user']),
        "[UserModel.fromJSON(data['user'])"
      ]);
      /* user.token = data['token_type'] + ' ' + data['access_token'];
      print([
        user.token = data['token_type'] + ' ' + data['access_token'],
        "[user.token = data['token_type'] + ' ' + data['access_token']"
      ]); */
      user.token = 'Bearer ' + data['access_token'];
      print(user.token);
      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }
}
