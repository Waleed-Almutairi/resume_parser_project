import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_parser_project/resume.dart';
import 'package:resume_parser_project/resume_components/education.dart';
import 'package:resume_parser_project/resume_components/education_collection.dart';
import 'package:resume_parser_project/resume_components/experience.dart';
import 'package:resume_parser_project/resume_components/experience_collection.dart';
import 'package:resume_parser_project/resume_components/profile.dart';
import 'package:resume_parser_project/resume_components/skill.dart';
import 'package:resume_parser_project/resume_components/skills_collection.dart';
import 'package:resume_parser_project/widgets/custom_button.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Future<SkillsCollection> readJson(String id) async {
    final String response =
        await rootBundle.loadString('lib/assets/CV Sample # 0$id.json');
    final data = await json.decode(response)["Value"]["Data"];
    // show type of data
    print(data["Skills"].runtimeType);
    SkillsCollection skills = SkillsCollection.fromJson(data);
    print("Reading JSON file for candidate $id...");
    print(skills.toString());
    return skills;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Resume Parser')),
          backgroundColor: AppColors.background,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  candidateButton(
                    'Candidate 1',
                    AppColors.background,
                    AppColors.text,
                    () async {
                      SkillsCollection e = await readJson('1');
                      print(e.getSkills( ).toString());
                    },
                  ),
                  candidateButton(
                    'Candidate 2',
                    AppColors.background,
                    AppColors.text,
                    () async {
                      SkillsCollection e = await readJson('2');
                      print(e.toString());
                    },
                  ),
                  candidateButton(
                    'Candidate 3',
                    AppColors.background,
                    AppColors.text,
                    () async {
                      SkillsCollection e = await readJson('3');
                      print(e.toString());
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppColors {
  // make colors variables static
  static const Color background = Color.fromARGB(255, 21, 86, 139);
  static const Color text = Color.fromARGB(255, 255, 255, 255);
}
