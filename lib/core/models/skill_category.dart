/// skills : [{"header":"Languages & Frameworks","skills":["Flutter","Dart","Firebase","REST APIs","Kotlin (Android)","Swift (iOS)"]},{"header":"State Management","skills":["Provider","Riverpod","Bloc","Cubit"]},{"header":"Dependency Injection","skills":["GetIt","Injectable"]},{"header":"Networking & API Handling","skills":["Dio","HTTP","GraphQL"]},{"header":"Security","skills":["SSL Pinning","Encryption (AES, RSA)","Secure Storage","App Integrity Checks","Obfuscation / ProGuard"]},{"header":"UI/UX","skills":["Custom UI Design","Material Design","Cupertino Widgets","Animations (Lottie, Rive)","MediaQuery","LayoutBuilder","AutoSizeText","Responsive Design"]},{"header":"Agile Methodologies","skills":["Scrum","Kanban"]},{"header":"Version Control & Collaboration","skills":["GitHub","GitLab","Bitbucket","JIRA","Git Flow","Feature Branching","Code Reviews","CI/CD (GitHub Actions, GitLab CI)"]},{"header":"Operating Systems","skills":["Windows","macOS","Linux"]},{"header":"IDEs","skills":["Android Studio","Xcode","VS Code","Sublime Text"]},{"header":"Other Tools","skills":["Figma","Postman","Firebase Crashlytics","Analytics"]},{"header":"Leadership & Architecture","skills":["Mentoring Junior Developers","Code Reviews & Best Practices","Architecting Scalable Flutter Apps"]}]

class SkillCategory {
  SkillCategory({
    List<Skills>? skills,
  }) {
    _skills = skills;
  }

  SkillCategory.fromJson(dynamic json) {
    if (json['skills'] != null) {
      _skills = [];
      json['skills'].forEach((v) {
        _skills?.add(Skills.fromJson(v));
      });
    }
  }
  List<Skills>? _skills;
  SkillCategory copyWith({
    List<Skills>? skills,
  }) =>
      SkillCategory(
        skills: skills ?? _skills,
      );
  List<Skills>? get skills => _skills;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_skills != null) {
      map['skills'] = _skills?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// header : "Languages & Frameworks"
/// skills : ["Flutter","Dart","Firebase","REST APIs","Kotlin (Android)","Swift (iOS)"]

class Skills {
  Skills({
    String? header,
    List<String>? skills,
  }) {
    _header = header;
    _skills = skills;
  }

  Skills.fromJson(dynamic json) {
    _header = json['header'];
    _skills = json['skills'] != null ? json['skills'].cast<String>() : [];
  }
  String? _header;
  List<String>? _skills;
  Skills copyWith({
    String? header,
    List<String>? skills,
  }) =>
      Skills(
        header: header ?? _header,
        skills: skills ?? _skills,
      );
  String? get header => _header;
  List<String>? get skills => _skills;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['header'] = _header;
    map['skills'] = _skills;
    return map;
  }
}
