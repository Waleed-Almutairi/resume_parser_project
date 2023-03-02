// ignore_for_file: unnecessary_this

import 'package:resume_parser_project/resume_components/education.dart';

class EducationCollection{
  List<Education> _educationList = [];
  
  // constructor
  EducationCollection({
    required List<Education> educationList,
  }) {
    this._educationList = educationList;
  }

  void addEducation(Education education){
    _educationList.add(education);
  }

  void removeEducation(Education education){
    _educationList.remove(education);
  }  

  static fromJson(List<dynamic> parsedJson) {
    List<Education> educationList = <Education>[];
    educationList = _parseList(parsedJson); 
    return EducationCollection(
      educationList: educationList,
    );
  }
  // parse list<education> from json
  static List<Education> _parseList(List<dynamic> list) {
    List<Education> newList = [];
    for (var item in list) {
      newList.add(Education.fromJson(item));
    }
    return newList;
  }
  @override
  String toString() {
    return 'EducationCollection{_educationList: $_educationList}';
  }

  
}