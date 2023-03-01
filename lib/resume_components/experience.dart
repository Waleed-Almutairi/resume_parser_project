// ignore_for_file: unnecessary_this

class Experience {
  late String _jobTitle;
  late String _jobDescription;
  late String _timeLine = "unknown";
  late String _organization;

// constructor
  Experience({
    required String jobTitle,
    required String jobDescription,
    // required String timeLine,
    required String organization,
  }) {
    this._jobTitle = jobTitle;
    this._jobDescription = jobDescription;
    // this._timeLine = timeLine;
    this._organization = organization;
  }

  //from json
  static fromJson(Map<String, dynamic> parsedJson) {
    return Experience(
      jobTitle: parsedJson['JobTitle'] ?? "Missing Job Title",
      jobDescription: parsedJson['JobDescription'] ?? "Missing Job Description",
      // timeLine: parsedJson["Dates"]?['StartDate']?? || parsedJson["Dates"]?['EndDate'] ?? _findTimeLine(parsedJson["Dates"]['StartDate'], parsedJson["Dates"]['EndDate']):
      //     "Missing Time Line",
      organization: parsedJson['Organization'] ?? "Missing Organization",
    );
  }

  // calculate time difference for timeline, such as
  //"StartDate": "2021-06-01T00:00:00+00:00", "EndDate": "2022-12-17T00:00:00+00:00" as parameters
  static _findTimeLine(String startDate, String endDate) {
    DateTime start = DateTime.parse(startDate);
    DateTime end = DateTime.parse(endDate);
    Duration difference = end.difference(start);
    return "${difference.inDays.toString()} days";
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
