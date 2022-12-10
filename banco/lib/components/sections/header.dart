import 'package:banco/Theme/theme_colors.dart';
import 'package:banco/screens/profile.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  bool opacidade;

  Header({Key? key, required this.opacidade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.headerGradient),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedOpacity(
                  opacity: opacidade ? 1 : 0,
                  duration: Duration(
                    milliseconds: 500,
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: 'R\$',
                      children: <TextSpan>[
                        TextSpan(
                            text: '1456.00',
                            style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Balanço disponivel',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                    height: 64,
                    width: 64,
                    child: IconButton(
                        icon: Image.asset("assets/images/profile.png"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        })),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
