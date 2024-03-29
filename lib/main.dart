import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_parser_project/resume.dart';
import 'package:resume_parser_project/resume_components/experience.dart';
import 'package:resume_parser_project/resume_components/experience_collection.dart';
import 'package:resume_parser_project/resume_components/profile.dart';
import 'package:resume_parser_project/widgets/candidate_info.dart';
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
  // Declare the Resume objects as instance variables
  late Resume resume1;
  late Resume resume2;
  late Resume resume3;
  //create readJson function
  Future<Resume> readJson(String id) async {
    // print("Loading resume $id");
    final response =
        await File('lib/assets/CV Sample # 0$id.json').readAsString();
    // print(response);
    final data = json.decode(response)["Value"]["Data"] as Map<String, dynamic>;
    Resume res = Resume.fromJson(data);
    print("Created resume $id");
    return res;
  }

  Future<void> loadResumes() async {
    // print("Loading resumes");
    // Use the readJson function to create the Resume objects
    resume1 = await readJson("1");
    resume2 = await readJson("2");
    resume3 = await readJson("3");
    // print("Failed to load resumes");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // FutureBuilder to display the Resume objects
            FutureBuilder(
              future: loadResumes(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                        children: [
                          candidateButton(
                              name: resume1.getProfile().getName(),
                              color: AppColors.background,
                              textColor: AppColors.text,
                              onPressed: () {}),
                          candidateButton(
                              name: resume2.getProfile().getName(),
                              color: AppColors.background,
                              textColor: AppColors.text,
                              onPressed: () {
                                
                              }),
                          candidateButton(
                              name: resume3.getProfile().getName(),
                              color: AppColors.background,
                              textColor: AppColors.text,
                              onPressed: () {}),
                        ],
                      ),
                      const SizedBox(height: 200),
                      candidateInfo(resume: resume1)
                    ],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
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
