import 'package:flutter/cupertino.dart';
import 'package:shamo/models/user_model.dart';
import 'package:shamo/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      // print([name, username, email, password, 'Register Auth Provider']);
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );
      print(await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      ));
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
