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
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(hintText: "Text Input"),
              onChanged: (v) {
                setData(v);
              },
            ),
            RaisedButton(onPressed: () {
              setState(() {
                text = _controller.text;
              });
            }),
            Text(text != null ? "$text" : ""),
          ],
        ),
      ),
    );
  }
}
