// ignore_for_file: unnecessary_this

class Education {
  late String _organization;
  late String _degree;
  late double _grade;
  late String _gradeMetric;

  // constructor
  Education({
    required String organization,
    required String degree,
    required double grade,
    required String gradeMetric,
  }) {
    this._organization = organization;
    this._degree = degree;
    this._grade = grade;
    this._gradeMetric = gradeMetric;
  }

  //fromJson
  static fromJson(Map<String, dynamic> parsedJson) {
    double grade;
    try {
      grade = double.parse(parsedJson['Grade']['Value'] ?? '0');
    } catch (e) {
      print('Error parsing grade value: $e');
      grade = -1;
    }
    return Education(
      organization: parsedJson['Organization'],
      degree: parsedJson['EducationLevel'] != null
          ? parsedJson["EducationLevel"]
          : "Missing",
      grade: grade,
      gradeMetric: parsedJson['Grade']?['GradeMetric'] ?? 'Missing',
    );
  }

  // create setters and getters
  setGrade(String grade) {
    this._grade = double.parse(grade);
  }

  setGradeMetric(String gradeMetric) {
    this._gradeMetric = gradeMetric;
  }

  setOrganization(String organization) {
    this._organization = organization;
  }

  setDegree(String degree) {
    this._degree = degree;
  }

  getGrade() {
    return this._grade;
  }

  getGradeMetric() {
    return this._gradeMetric;
  }

  getOrganization() {
    return this._organization;
  }

  getDegree() {
    return this._degree;
  }

  @override
  String toString() {
    return 'Education{_organization: $_organization, _degree: $_degree, _grade: $_grade, _gradeMetric: $_gradeMetric}';
  }
}
