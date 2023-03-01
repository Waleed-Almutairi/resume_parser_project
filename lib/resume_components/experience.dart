// ignore_for_file: unnecessary_this

class Experience {
  late String _jobTitle;
  late String _jobDescription;
  late DateTime _timeLine;
  late String _organization;

// constructor
  Experience({
    required String jobTitle,
    required String jobDescription,
    required String timeLine,
    required String organization,
  }) {
    this._jobTitle = jobTitle;
    this._jobDescription = jobDescription;
    this._timeLine = DateTime.parse(timeLine);
    this._organization = organization;
  }

  //from json
  static fromJson(Map<String, dynamic> parsedJson) {
    return Experience(
      jobTitle: parsedJson['JobTitle'],
      jobDescription: parsedJson['JobDescription'],
      timeLine: calculateTimeDifference(parsedJson["Dates"]["StartDate"], parsedJson["Dates"]["EndDate"] ),
      organization: parsedJson['Organization'],
    );
  }
  // calculate time difference for timeline, such as 
  //"StartDate": "2021-06-01T00:00:00+00:00", "EndDate": "2022-12-17T00:00:00+00:00" as parameters
  static calculateTimeDifference(String startDate, String endDate) {
    DateTime start = DateTime.parse(startDate);
    DateTime end = DateTime.parse(endDate);
    Duration difference = end.difference(start);
    return difference.inDays;
  }

// create setters and getters
  setJobTitle(String jobTitle) {
    this._jobTitle = jobTitle;
  }

  setOrganization(String organization) {
    this._organization = organization;
  }

  setJobDescription(String jobDescription) {
    this._jobDescription = jobDescription;
  }

  setTimeLine(String timeLine) {
    this._timeLine = DateTime.parse(timeLine);
    _timeLine.toIso8601String().substring(0, 10);
  }

  getJobTitle() {
    return this._jobTitle;
  }

  getOrganization() {
    return this._organization;
  }

  getJobDescription() {
    return this._jobDescription;
  }

  getTimeLine() {
    return this._timeLine;
  }
}
