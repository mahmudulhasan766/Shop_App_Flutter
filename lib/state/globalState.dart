import 'package:flutter/cupertino.dart';
import 'package:shop_app/state/user.dart';

class GlobalState with ChangeNotifier {
  List<User> _user = [
    User(
      id: 'u1',
      username: 'username_1',
      fullName: 'fullName_1',
      email: 'email_1',
    ),
    User(
      id: 'u2',
      username: 'username_2',
      fullName: 'fullName_3',
      email: 'email_4',
    ),
    User(
      id: 'u5',
      username: 'username_5',
      fullName: 'fullName_5',
      email: 'email_5',
    ),
    User(
      id: 'u6',
      username: 'username_6',
      fullName: 'fullName_6',
      email: 'email_6',
    ),
    User(
      id: 'u7',
      username: 'username_7',
      fullName: 'fullName_7',
      email: 'email_7',
    ),
  ];
  List<User> get users {
    return [..._user];
  }

  void addUsers(User newUser) {
    // final newUser = User(
    //   id: DateTime.now().toString(),
    //   username: user.username,
    //   fullName: user.fullName,
    //   email: user.email,
    // );
    _user.add(newUser);
    notifyListeners();
  }
}
