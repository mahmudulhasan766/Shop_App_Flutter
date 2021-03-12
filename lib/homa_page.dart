import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  String text;
  void setData(v) {
    setState(() {
      text = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: "Fast name"),
                  onChanged: (v) {
                    setData(v);
                  },
                ),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: "Second name"),
                ),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: "Phone"),
                ),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: "Email"),
                ),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: "password"),
                  textInputAction: TextInputAction.done,
                ),
                RaisedButton(
                    child: Text("submit"),
                    onPressed: () {
                      setState(() {
                        text = _controller.text;
                      });
                    }),
                Text(text != null ? "$text" : ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
