// ignore_for_file: unnecessary_this

class Skill{
  late String _skillName;
  late String _type;

  Skill(skillName, type){
    this._skillName = skillName;
    this._type =  type;
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

  static fromJson(i) {}
}