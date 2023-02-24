import 'location.dart';
class Profile{

  late String _name;
  late List<String> _phoneNumbers;
  late List<String> _emails;
  late int _age;
  late String _profession;
  late Location _location;
  
  // constructor
  Profile(this._age, this._emails, this._location, this._name, this._phoneNumbers, this._profession);

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
  setLocation(Location location) {
    this._location = location;
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
  getLocation() {
    return this._location;
  }
  getName() {
    return this._name;
  }
}