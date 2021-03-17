import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/state/globalState.dart';
import 'package:shop_app/state/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String username = "";
  String fullname = "";
  String email = "";
  String password = "";
  var phone;
  void _onFormSave() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState.save();
    User newUser = User(
        id: DateTime.now().toString(),
        username: username,
        email: email,
        fullName: fullname);
    Provider.of<GlobalState>(context, listen: false).addUsers(newUser);
    print(username);
    print(fullname);
    print(email);
    print(phone);
  }

  @override
  Widget build(BuildContext context) {
    final userDate = Provider.of<GlobalState>(context).users;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  //controller: _controller,
                  decoration: InputDecoration(hintText: "Fast name"),
                  onSaved: (v) {
                    username = v;
                  },
                  validator: (v) {
                    if (v.isEmpty) {
                      return "Pleace enter frist name";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  //controller: _controller,
                  decoration: InputDecoration(hintText: "Second name"),
                  onSaved: (v) {
                    fullname = v;
                  },
                  validator: (v) {
                    if (v.isEmpty) {
                      return "Pleace enter last name";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  //controller: _controller,
                  decoration: InputDecoration(hintText: "Phone"),
                  onSaved: (v) {
                    phone = v;
                  },
                  validator: (v) {
                    if (v.isEmpty) {
                      return "Pleace enter phone number";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  //controller: _controller,
                  decoration: InputDecoration(hintText: "Email"),
                  onSaved: (v) {
                    email = v;
                  },
                  validator: (v) {
                    if (v.isEmpty) {
                      return "Pleace enter Email";
                    }
                    if (!v.contains("@gmail.com")) {
                      return "enter a valid email";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  //controller: _controller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: "password"),
                  textInputAction: TextInputAction.done,
                  onSaved: (v) {
                    password = v;
                  },
                  validator: (v) {
                    if (v.isEmpty) {
                      return "Pleace enter Email";
                    }
                    return null;
                  },
                ),
                RaisedButton(
                    child: Text("submit"),
                    onPressed: () {
                      _onFormSave();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
