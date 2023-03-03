// ignore_for_file: unnecessary_this

class Skill {
  late String _skillName;
  late String _type;

  // constructor
  Skill({
    required String skillName,
    required String type,
  }) {
    this._skillName = skillName;
    this._type = type;
  }

  //from json
  static fromJson(Map<String, dynamic> parsedJson) {
    return Skill(
      skillName: parsedJson["Name"],
      type: parsedJson['Type'],
    );
  }

  // create setters and getters
  setSkillName(String skillName) {
    this._skillName = skillName;
  }

  setSkillType(String type) {
    this._type = type;
  }

  getSkillName() {
    return this._skillName;
  }

  getSkillType() {
    return this._type;
  }

  @override
  String toString() {
    return this._skillName;
  }
}
