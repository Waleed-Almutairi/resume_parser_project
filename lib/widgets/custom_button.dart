import 'package:flutter/material.dart';

Widget candidateButton(
    {required String name,
    required Color color,
    required Color textColor,
    required void onPressed}) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextButton(
      onPressed: () {
        print("in button");
      },
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}
