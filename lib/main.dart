import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/about_page.dart';
import 'package:shop_app/homa_page.dart';
import 'package:shop_app/state/globalState.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GlobalState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AboutScreen(),
      ),
    );
  }
}
