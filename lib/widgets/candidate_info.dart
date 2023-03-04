// this widget is used to show the candidate info in the candidate list. It gets a Resume object to do that.
import 'package:flutter/material.dart';

import 'package:resume_parser_project/resume.dart';

Widget candidateInfo({
  required Resume resume,
}) {
  return Container(
    width: 300,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Text(
          resume.getProfile().getName(),
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          resume.getProfile().getEmails()[0],
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          resume.getProfile().getPhoneNumbers()[0],
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
