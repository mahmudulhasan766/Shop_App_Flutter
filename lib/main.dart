import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/about_page.dart';
import 'package:shop_app/homa_page.dart';
import 'Auth/Widget/Login.dart';
import 'file:///C:/Users/HaSaN/AndroidStudioProjects/shop_app/lib/about_consumer.dart';
import 'package:shop_app/state/globalState.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GlobalState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogIn(),
      ),
    );
  }
}
