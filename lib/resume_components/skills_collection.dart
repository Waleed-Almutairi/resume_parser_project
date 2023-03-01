// ignore_for_file: unnecessary_this

import 'package:resume_parser_project/resume_components/skill.dart';

class SkillsCollection {
  late List<Skill> _skills;
  // constructor
  SkillsCollection({
    required List<Skill> skills,
  }) {
    this._skills = skills;
  }
  // fromJson
  static fromJson(Map<String, dynamic> parsedJson) {
    return SkillsCollection(
      skills: _parseList(parsedJson['Skills']),
    );
  }
  // setters and getters
  setSkills(List<Skill> skills) {
    this._skills = skills;
  }

  getSkills() {
    return this._skills;
  }

  static List<Skill> _parseList(List<dynamic> list) {
    List<Skill> newList = [];
    for (var item in list) {
      newList.add(Skill.fromJson(item));
    }
    return newList;
  }
  @override
  String toString() {
    return 'skills: $_skills}';
  }
}