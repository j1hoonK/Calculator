import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  CalcButton(
      {super.key, this.color,
      this.textColor,
      required this.buttonText,
      this.onPressed});

  final color;
  final textColor;
  final String buttonText;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
