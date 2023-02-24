class Education {
  late String _organization;
  late String _degree;
  late int _grade;
  late String _gradeMetric;

  // constructor
  Education(this._organization, this._degree, this._grade, this._gradeMetric);

  // creat setters and getters
  setGrade(String grade) {
      this._grade = int.parse(grade);
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
}
