// ignore_for_file: unnecessary_this

class Location {

  late String? _formattedLocation;
  late String _state;
  late String _country;
  late String _city;

  // constructor
  Location({
    required String city,
    required String country,
    required String formattedLocation,
    required String state,
  }) {
    this._city = city;
    this._country = country;
    this._formattedLocation = formattedLocation;
    this._state = state;
  }

  //from json
  static fromJson(Map<String, dynamic> parsedJson) {
    return Location(
      city: parsedJson['city'],
      country: parsedJson['country'],
      formattedLocation: parsedJson['Location'],
      state: parsedJson['state'],
    );

  }

  // setters and getters
  setFormattedLocation(String formattedLocation) {
    this._formattedLocation = formattedLocation;
  }

  setState(String state) {
    this._state = state;
  }

  setCountry(String country) {
    this._country = country;
  }

  setCity(String city) {
    this._city = city;
  }

  getFormattedLocation() {
    return this._formattedLocation;
  }

  getState() {
    return this._state;
  }

  getCountry() {
    return this._country;
  }

  getCity() {
    return this._city;
  }
}
