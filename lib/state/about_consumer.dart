import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'globalState.dart';

class AboutConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Consumer"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Consumer<GlobalState>(
          builder: (context, data, child) {
            return ListView.builder(
              itemCount: data.users.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  color: Colors.orange,
                  child: Text(data.users[index].email),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
