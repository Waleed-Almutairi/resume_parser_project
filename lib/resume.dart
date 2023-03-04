// ignore_for_file: unnecessary_this

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:resume_parser_project/resume_components/education.dart';
import 'package:resume_parser_project/resume_components/education_collection.dart';
import 'package:resume_parser_project/resume_components/experience.dart';
import 'package:resume_parser_project/resume_components/experience_collection.dart';
import 'package:resume_parser_project/resume_components/profile.dart';
import 'package:resume_parser_project/resume_components/skills_collection.dart';

class Resume {
  late Profile _profile;
  late ExperienceCollection _workExperience;
  late SkillsCollection _skills;
  late EducationCollection _education;
  late List<String> _certificates;
  // constructor
  Resume({
    required Profile profile,
    required ExperienceCollection workExperience,
    required SkillsCollection skills,
    required EducationCollection education,
    required List<String> certificates,
  }) {
    this._profile = profile;
    this._workExperience = workExperience;
    this._skills = skills;
    this._education = education;
    this._certificates = certificates;
  }
  // fromJson
  static fromJson(Map<String, dynamic> parsedJson) {
    print("IN RESUME FROM JSON");
    return Resume(
      profile: Profile.fromJson(parsedJson),
      workExperience:
          ExperienceCollection.fromJson(parsedJson['WorkExperience']),
      skills: SkillsCollection.fromJson(parsedJson),
      education: EducationCollection.fromJson(parsedJson['Education']),
      certificates: _parseList(parsedJson['Certifications']),
    );
  }

  // parse certificate list from json
  static List<String> _parseList(List<dynamic> list) {
    List<String> newList = [];
    for (var item in list) {
      newList.add(item);
    }
    return newList;
  }

  // setters and getters
  setProfile(Profile profile) {
    this._profile = profile;
  }

  setWorkExperience(ExperienceCollection workExperience) {
    this._workExperience = workExperience;
  }

  setSkills(SkillsCollection skills) {
    this._skills = skills;
  }

  setEducation(EducationCollection education) {
    this._education = education;
  }

  setCertificates(List<String> certificates) {
    this._certificates = certificates;
  }

  getProfile() {
    return this._profile;
  }

  getWorkExperience() {
    return this._workExperience;
  }

  getSkills() {
    return this._skills;
  }

  getEducation() {
    return this._education;
  }

  getCertificates() {
    return this._certificates;
  }

  @override
  String toString() {
    return 'Profile: ${this._profile.toString()}\nWork Experience: ${this._workExperience.toString()}\nSkills: ${this._skills.toString()}\nEducation: ${this._education.toString()}\nCertificates: ${this._certificates.toString()}';
  }
}
