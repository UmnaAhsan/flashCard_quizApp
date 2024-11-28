import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  //const FlashCard({super.key});

  final String text;

  const FlashCard({super.key, required this.text});
//FlashCard({Key key, this.text}) : super (key :key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      elevation: 4,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
