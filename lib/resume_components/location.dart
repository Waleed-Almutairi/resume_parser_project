class Location{
//   - formattedLocation: String
// - state: String
// - country: String 
// - city: String
  late String _formattedLocation;
  late String _state;
  late String _country;
  late String _city;
  
  // constructor
  Location(this._city, this._country, this._formattedLocation, this._state);
  
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