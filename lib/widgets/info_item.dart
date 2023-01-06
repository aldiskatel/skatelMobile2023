import 'package:flutter/material.dart';


class InfoItem extends StatelessWidget {
  InfoItem(this.title, this.value);
  late final String title;
  late final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(title)
      ],
    );
  }
}
