// ignore_for_file: unnecessary_this

class Experience {
  late String _jobTitle;
  late String _jobDescription;
  late String _timeLine;
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
    this._timeLine = timeLine;
    this._organization = organization;
  }

  //from json
  static fromJson(Map<String, dynamic> parsedJson) {
    print("IN EXPERIENCE FROM JSON");
    return Experience(
      jobTitle: parsedJson['JobTitle'] ?? "Missing Job Title",
      jobDescription: parsedJson['JobDescription'] ?? "Missing Job Description",
      timeLine: _findTimeLine(
          parsedJson["Dates"]["StartDate"], parsedJson["Dates"]["EndDate"]),
      organization: parsedJson['Organization'] ?? "Missing Organization",
    );
  }

  // calculate time difference for timeline, such as
  //"StartDate": "2021-06-01T00:00:00+00:00", "EndDate": "2022-12-17T00:00:00+00:00" as parameters
  static String _findTimeLine(String? startDate, String? endDate) {
    if (startDate == null || endDate == null) {
      return "unknown";
    }
    DateTime start;
    DateTime end;
    try {
      start = DateTime.parse(startDate);
      end = DateTime.parse(endDate);
    } catch (e) {
      return "known";
    }
    Duration difference = end.difference(start);
    int months = difference.inDays ~/ 30;
    int years = months ~/ 12;
    months = months % 12;
    return "$years years $months months";
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
    this._timeLine = timeLine;
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

  @override
  String toString() {
    return 'jobTitle: $_jobTitle, jobDescription: $_jobDescription, timeLine: $_timeLine, organization: $_organization';
  }
}
