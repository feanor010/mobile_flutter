import 'package:flutter/material.dart';

class Tarifs extends StatelessWidget {
  final String titleText;
  final String tarifInfo;
  final String imagePath;
  const Tarifs({
    super.key,
    required this.titleText,
    required this.tarifInfo,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              softWrap: true,
            ),
            Text(
              tarifInfo,
              style: TextStyle(color: Colors.black.withOpacity(0.55)),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        const Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Color.fromRGBO(0, 0, 0, 0.32),
            ))
      ],
    );
  }
}
