import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/state/globalState.dart';

//class AboutScreen
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final allusers = Provider.of<GlobalState>(context).users;
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: allusers.length,
            itemBuilder: (BuildContext, int) {
              return Container(
                child: Column(
                  children: [
                    Text(allusers[int].username),
                    Divider(),
                    Text(allusers[int].id),
                    Divider(),
                    Text(allusers[int].fullName),
                    Divider(),
                    Text(allusers[int].email),
                    Divider(
                      thickness: 4,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
