// ignore_for_file: unnecessary_this

import 'location.dart';

class Profile {
  late String _name;
  late List<String> _phoneNumbers;
  late List<String> _emails;
  late int _age;
  late String _profession;

  // constructor
  Profile({
    required int age,
    required List<String> emails,
    required String name,
    required List<String> phoneNumbers,
    required String profession,
  }) {
    this._age = age;
    this._emails = emails;
    this._name = name;
    this._phoneNumbers = phoneNumbers;
    this._profession = profession;
  }
  // fromJson
  static fromJson(Map<String, dynamic> parsedJson) {
    return Profile(
      age: parsedJson["DateOfBirth"] != null
          ? _convertBdateToAge(parsedJson["DateOfBirth"])
          : -1,
      emails: _parseList(parsedJson["Emails"]),
      name: parsedJson["Name"]["Raw"],
      phoneNumbers: _parseList(parsedJson["PhoneNumbers"]),
      profession: parsedJson['Profession'],
    );
  }

  // converting bdate to age function, such as: 1996-02-11
  static int _convertBdateToAge(String bdate) {
    var date = bdate.split('-');
    var year = int.parse(date[0]);
    var month = int.parse(date[1]);
    var day = int.parse(date[2]);
    var now = DateTime.now();
    var age = now.year - year;
    if (now.month < month || (now.month == month && now.day < day)) {
      age--;
    }
    return age;
  }

  // parse List<dynamic> to List<String> function
  static List<String> _parseList(List<dynamic> list) {
    List<String> newList = [];
    for (var item in list) {
      newList.add(item.toString());
    }
    return newList;
  }

  // setters and getters
  setAge(int age) {
    this._age = age;
  }

  setPhoneNumbers(List<String> phoneNumbers) {
    this._phoneNumbers = phoneNumbers;
  }

  setEmails(List<String> emails) {
    this._emails = emails;
  }

  setProfession(String profession) {
    this._profession = profession;
  }

  setName(String name) {
    this._name = name;
  }

  getAge() {
    return this._age;
  }

  getPhoneNumbers() {
    return this._phoneNumbers;
  }

  getEmails() {
    return this._emails;
  }

  getProfession() {
    return this._profession;
  }

  getName() {
    return this._name;
  }

  @override
  String toString() {
    return 'Name: $_name, Age: $_age, Profession: $_profession, PhoneNumbers: $_phoneNumbers, Emails: $_emails';
  }
}
