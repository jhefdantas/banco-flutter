import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget BoxContent;
  const BoxCard({Key? key, required this.BoxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: BoxContent,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,

      ),
    );
  }
}
