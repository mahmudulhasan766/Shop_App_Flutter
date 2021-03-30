import 'package:flutter/material.dart';

import 'button_widget.dart';
import 'email_field_widget.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("MyApp.title"),
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  EmailFieldWidget(controller: emailController),
                  const SizedBox(height: 16),
                  buildButton(),
                  buildNoAccount(),
                ],
              ),
            ),
          ),
        ),
      );

  Widget buildButton() => ButtonWidget(
        text: 'LOGIN',
        onClicked: () {
          final form = formKey.currentState;

          if (form.validate()) {
            final email = emailController.text;

            // ScaffoldMessenger.of(context)
            //   ..removeCurrentSnackBar()
            //   ..showSnackBar(SnackBar(
            //     content: Text('Your email is $email'),
            //   ));
          }
        },
      );

  Widget buildNoAccount() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don\'t have an account?'),
          TextButton(
            child: Text('SIGN UP'),
            onPressed: () {},
          ),
        ],
      );
}
