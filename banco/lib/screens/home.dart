import 'package:banco/components/sections/account_actions.dart';
import 'package:banco/components/sections/header.dart';
import 'package:banco/components/sections/recent_activity.dart';
import 'package:banco/screens/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: <Widget>[
            Header(
              opacidade: opacidade,
            ),
            RecentActivity(),
            AccountActions(),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye_sharp),
      ),
    );
  }
}
