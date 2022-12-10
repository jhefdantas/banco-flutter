import 'package:banco/Theme/theme_colors.dart';
import 'package:banco/screens/home.dart';
import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 210,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: ThemeColors.headerGradient
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            }, icon: Icon(Icons.chevron_left, size: 30,)),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    height: 128,
                    width: 128,
                    child: Image.asset("assets/images/profile.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Olá, Maria!", style: Theme.of(context).textTheme.bodyLarge),
                ),
              ],
            ),
            Container(
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}
