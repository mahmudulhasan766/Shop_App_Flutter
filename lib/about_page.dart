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
                    Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: (34),
                                child: Text(allusers[int].username),
                              ),
                              Text(allusers[int].id),
                            ],
                          ),
                          Row(
                            children: [
                              Text(allusers[int].fullName),
                              Text(allusers[int].email),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
