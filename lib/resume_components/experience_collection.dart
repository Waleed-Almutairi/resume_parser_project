// create experience_collection.dart
import 'package:resume_parser_project/resume_components/experience.dart';

class ExperienceCollection {
  late List<Experience> _experience;

  // constructor
  ExperienceCollection({
    required List<Experience> experience,
  }) {
    this._experience = experience;
  }

  // fromJson
  static fromJson(List<dynamic> parsedJson) {
    List<Experience> experience = <Experience>[];
    experience = _parseList(parsedJson); 
    return ExperienceCollection(
      experience: experience,
    );
  }
  // parse list<experience> from json
  static List<Experience> _parseList(List<dynamic> list) {
    List<Experience> newList = [];
    for (var item in list) {
      newList.add(Experience.fromJson(item));
    }
    return newList;
  }

  // setters and getters
  setExperience(List<Experience> experience) {
    this._experience = experience;
  }

  getExperience() {
    return this._experience;
  }
}
