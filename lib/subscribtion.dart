import 'package:flutter/material.dart';

class Subscribtion extends StatelessWidget {
  final String titleText;
  final String paymentText;
  final String priceText;
  final String imagePath;

  const Subscribtion({
    Key? key,
    required this.titleText,
    required this.paymentText,
    required this.priceText,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 130,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: const [
          BoxShadow(
            color: Color(0x114F4F6C),
            spreadRadius: 0,
            blurRadius: 14,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(imagePath),
                const Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  titleText,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              paymentText,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              priceText,
              style: TextStyle(color: Colors.black.withOpacity(0.55)),
            ),
          ],
        ),
      ),
    );
  }
}
