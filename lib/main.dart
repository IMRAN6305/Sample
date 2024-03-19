import 'package:flutter/material.dart';
import 'package:sample/ws_cube_tech/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

            primarySwatch: Colors.blue,
            useMaterial3: true,
            fontFamily: 'inter'),
        home: LoginPage());
  }
}
