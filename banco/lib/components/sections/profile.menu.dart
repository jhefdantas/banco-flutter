import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {

  final String text;
  final IconData icon, icon2;

  const ProfileMenu({Key? key, required this.text, required this.icon, required this.icon2}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[3],
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon, size: 44),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(text, style: TextStyle(fontSize: 24),),
              )
            ],
          ),
          Icon(icon2, size: 44,)
        ],
      ),
    );
  }
}
