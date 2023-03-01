import 'package:flutter/material.dart';

Widget candidateButton(
    String text, Color color, Color textColor, VoidCallback onPressed) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}
