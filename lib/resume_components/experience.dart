class Experience {
  late String _jobTitle;
  late String _jobDescription;
  late DateTime _timeLine;
  late String _organization;

// constructor
  Experience(
      this._jobTitle, this._jobDescription, this._timeLine, this._organization);
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
