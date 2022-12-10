import 'package:banco/Client.dart';
import 'package:banco/Theme/my_theme.dart';
import 'package:banco/database/app_database.dart';
import 'package:banco/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Banco());
}

class Banco extends StatelessWidget {
  Banco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banco',
      theme: MyTheme,
      home: LoginPage(),
    );
  }
}

